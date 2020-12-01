#!/usr/bin/env python3
# -*- coding: utf-8 -*-


# Importing necessary modules
# SPI
from vsp import get_all
# TCP/IP
import socket
# Other modules
from threading import Thread
from time import sleep, time
import logging

# TCP/IP
PORT = 5006
# Errors
CHECK_SUM_ERROR = 0xE1
OP_ERROR = 0xE2
ID_ERROR = 0XE3
READ_ONLY_ERROR = 0XE6
# Logging
LOGGING_PATH = '/var/log/rack_mon.log'


def include_CheckSum(value_list):
    # Returns the same list but with CheckSum byte in the end

    byte_sum = sum(value_list)
    difference = byte_sum & 0xFF
    check_sum = (256 - difference) & 0xFF
    value_list.append(check_sum)
    return value_list


def verify_CheckSum(value_list):
    # True if checksum is correct

    check_sum = sum(value_list) & 0xFF
    check_sum = check_sum == 0
    return check_sum


class Communication:
    def __init__(self, port, logging_path=LOGGING_PATH):
        # TCP/IP
        self.port = port
        # Logging
        self.log_spi = False
        self.logger = logging.getLogger("RackMon")
        self.logger.setLevel(logging.DEBUG)
        formatter = logging.Formatter('%(levelname)s:%(asctime)s:%(name)s:%(message)s')
        file_handler = logging.FileHandler(logging_path)
        file_handler.setFormatter(formatter)
        self.logger.addHandler(file_handler)

        # Rack monitoring Board
        self.front_door = 0
        self.back_door = 0
        self.fan_status = 0
        self.LM35 = 0
        self.DHT11 = 0
        self.humidity = 0
        self.current = 0
        self.voltage = 0
        # Communication
        self.spi = Thread(target=self.run_spi, name="BoardMonitor", daemon=True)
        self.tcp = Thread(target=self.run_tcp, name="TCPClient", daemon=True)
        # Variables' IDs
        self.val_ids = {ord('C'): self.current, ord('T'): self.DHT11, ord('b'): self.back_door,
                        ord('c'): self.fan_status, ord('f'): self.front_door, ord('t'): self.LM35,
                        ord('u'): self.humidity, ord('v'): self.voltage}

    def run_spi(self):
        # Updates all variables present on a board
        error_count = 0
        while True:
            # requests all variables from monitor board
            all_variables = get_all()
            # Verifies if all values are valid
            if 'None' not in all_variables:
                self.voltage = all_variables[0]
                voltage_char = chr(int(self.voltage[:-1]))
                self.fan_status = all_variables[1]
                if self.fan_status == "On":
                    fan_status = chr(1)
                elif self.fan_status == "Off":
                    fan_status = chr(0)
                else:
                    fan_status = chr(3)
                self.DHT11 = all_variables[2]
                DHT11_char = chr(int(float(self.DHT11[:-2])))
                self.current = all_variables[3]
                current_char = chr(int(float(self.current[:-1]) * 100))
                self.humidity = all_variables[4]
                humidity_char = chr(int(self.humidity[:-1]))
                self.LM35 = all_variables[5]
                LM35_char = [chr(int(float(self.LM35[:-2])) * 100 // 256), chr(int(float(self.LM35[:-2]) * 100) % 256)]
                self.back_door = all_variables[6]
                if self.back_door == 'Aberta':
                    back_door = chr(1)
                else:
                    back_door = chr(0)
                self.front_door = all_variables[7]
                if self.front_door == 'Aberta':
                    front_door = 1
                else:
                    front_door = 0
                self.val_ids = {ord('C'): current_char, ord('T'): DHT11_char, ord('b'): back_door,
                                ord('c'): fan_status, ord('f'): front_door, ord('t'): LM35_char,
                                ord('u'): humidity_char, ord('v'): voltage_char}
            # If one or more values isn't valid, logs and tries again
            else:
                # If value isn't updated in the last 10 minutes keeps logging
                if self.log_spi and time() - error_count >= 600:
                    self.logger.warning("Wrong variable " + str(all_variables))
                    error_count = time()

    def sendVariable(self, val_id):
        # Formats BSMP byte list
        master_id = 0x00
        size_0 = 0x00
        # Case answer is informing an error
        if val_id in [0xE1, 0xE2, 0xE3, 0xE6]:
            error = [master_id, val_id, size_0, size_0]
            include_CheckSum(error)
            return bytes(error)
        elif val_id in self.val_ids:
            answer_code = 0x11
            val = self.val_ids[val_id]
            size_1 = len(val)
            response = [master_id, answer_code, size_0, size_1]
            for character in val:
                response.append(ord(character))
            include_CheckSum(response)

            return bytes(response)
        else:
            return b'\x00'

    def run_tcp(self):
        # tries to connect to server every 10s
        while True:
            try:
                self.s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                self.s.bind(("", self.port))
                self.s.listen(1)
                while True:
                    con, client = self.s.accept()
                    self.logger.debug("New Connection: " + str(con))
                    while True:
                        message = [ord(i) for i in con.recv(100).decode('latin-1')]
                        if message and message[0] == 0x01:
                            check_sum = verify_CheckSum(message)
                            if check_sum:
                                # ERROR ReadOnly
                                if message[1] != 0x10:
                                    con.send(self.sendVariable(READ_ONLY_ERROR))
                                # ERROR InvalidID
                                elif message[4] not in self.val_ids:
                                    con.send(self.sendVariable(ID_ERROR))
                                # OK
                                elif len(message) == 6:
                                    con.send(self.sendVariable(message[4]))
                                # ERROR OperationNotSupported
                                else:
                                    con.send(self.sendVariable(OP_ERROR))
                            # ERROR CheckSum
                            else:
                                con.send(self.sendVariable(CHECK_SUM_ERROR))
                        # No message
                        else:
                            self.logger.error("Reconnecting to server")
                            break
            except Exception as e:
                self.logger.fatal("Fatal error occurred, trying to reestablish tcp server: {}".format(e))
                self.s.close()
                sleep(5)


if __name__ == '__main__':
    BBB = Communication(PORT)
    BBB.spi.start()
    sleep(2)
    BBB.tcp.start()
    while True:
        try:
            sleep(10)
            # sys.stdout.write("""
            # Temperature LM35= {}
            # Temperature DHT11 = {}
            # Humidity = {}
            # Front door = {}
            # Back door = {}
            # Fan status = {}
            # Fan current = {}
            # Supply Voltage = {}
            # """.format(BBB.LM35, BBB.DHT11, BBB.humidity, BBB.front_door, BBB.back_door, BBB.fan_status, BBB.current, BBB.voltage))
            # sys.stdout.flush()
        except KeyboardInterrupt:
            break

    exit()


