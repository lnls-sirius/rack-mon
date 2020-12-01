"""
    a Very Simple Protocol, Python3 module for rack monitoring board control
    Vitor, September 24th 2020
"""
from Adafruit_BBIO.SPI import SPI
from time import sleep


spi = SPI(0, 0)
spi.mode = 0
spi.msh = 10000


def filter(receive, info=None, before='None'):
    # Filters SPI information
    try:
        if info == 'H' and len(receive) >= 4:
            return 'None'
        elif info == None or receive[-1] == info[-1]:
            return receive
        else:
            return before
    except Exception:
        return 'None'


def send(comando, timeout_ms=1):
    # returns the desired character variable without filtering
    timeout_ms = max(timeout_ms, 1)
    spi.writebytes([ord(comando)])
    list = ""
    if comando == 'u' or comando == 'T':
        sleep(5*timeout_ms/1000)
    sleep(timeout_ms/1000)
    for i in range(10):
        list += chr(spi.readbytes(1)[0])
        sleep(0.01)
    list = list.strip('\0')
    return list[0:]


def get(*args):
    # returns desired variables without any filter
    a = []
    for title in args:
        if type(title) == str:
            a.append(send(title, 5))
        if type(title) == list:
            for item in title:
                a.append(send(item, 5))
        sleep(0.005)
    return a


def get_all():
    filter_dict = {'v': 'V', 'c': None, 'T': 'oC', 'C': 'A', 'u': 'H', 't': 'oC', 'b': 'a', 'f': 'a'}
    all = ['v', 'c', 'T', 'C', 'u', 't', 'b', 'f']
    a = []
    for variable in all:
        var = send(variable, 5)
        a.append(filter(var, filter_dict[variable]))
        sleep(0.005)
    return a


def nf_all():
    all = ['v', 'c', 'T', 'C', 'u', 't', 'b', 'f']
    a = []
    for variable in all:
        var = send(variable, 5)
        a.append(var)
        sleep(0.005)
    return a


def get_LM35():
    spi.writebytes([ord('t')])
    sleep(0.001)
    lm = ''
    for i in range(10):
        lm += chr(spi.readbytes(1)[0])
        sleep(0.001)
    lm = lm.strip('\0')
    return filter(lm, 'oC')


def get_DHT():
    spi.writebytes([ord('T')])
    sleep(0.006)
    dht = ''
    for i in range(10):
        dht += chr(spi.readbytes(1)[0])
        sleep(0.001)
    dht = dht.strip('\0')
    return filter(dht, 'oC')


def get_humidity():
    spi.writebytes([ord('u')])
    sleep(0.006)
    humidity = ''
    for i in range(10):
        humidity += chr(spi.readbytes(1)[0])
        sleep(0.001)
    humidity = humidity.strip('\0')
    return filter(humidity, 'H')


def get_fdoor():
    spi.writebytes([ord('f')])
    sleep(0.001)
    fdoor = ''
    for i in range(10):
        fdoor += chr(spi.readbytes(1)[0])
        sleep(0.001)
    fdoor = fdoor.strip('\0')
    return filter(fdoor, 'a')


def get_bdoor():
    spi.writebytes([ord('b')])
    sleep(0.001)
    bdoor = ''
    for i in range(10):
        bdoor += chr(spi.readbytes(1)[0])
        sleep(0.001)
    bdoor = bdoor.strip('\0')
    return filter(bdoor, 'a')


def get_fanstat():
    spi.writebytes([ord('c')])
    sleep(0.001)
    fanstat = ''
    for i in range(10):
        fanstat += chr(spi.readbytes(1)[0])
        sleep(0.001)
    fanstat = fanstat.strip('\0')
    return filter(fanstat)


def get_current():
    spi.writebytes([ord('C')])
    sleep(0.001)
    current = ''
    for i in range(10):
        current += chr(spi.readbytes(1)[0])
        sleep(0.001)
    current = current.strip('\0')
    return filter(current, 'A')


def get_voltage():
    spi.writebytes([ord('v')])
    sleep(0.001)
    voltage = ''
    for i in range(10):
        voltage += chr(spi.readbytes(1)[0])
        sleep(0.001)
    voltage = voltage.strip('\0')
    return filter(voltage, 'V')


def isBoard():
    retry = 0
    while retry < 5:
        spi.writebytes([ord('V')])
        sleep(0.001)
        version = ''
        for i in range(10):
            version += chr(spi.readbytes(1)[0])
            sleep(0.001)
        version = version.strip('\0')
        if version[0] == 'v':
            return version
        else:
            retry += 1
    return False

