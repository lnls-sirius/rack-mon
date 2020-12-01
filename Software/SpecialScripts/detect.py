import subprocess
import os
import sys
import time

if os.path.exists('/root/rack-mon'):
    sys.path.append('/root/rack-mon')
    from vsp import isBoard
    RACK_MON = True
else:
    RACK_MON = False


def vrms():
    """
    RACK MON
    """

    if not RACK_MON:
        return

    subprocess.call('config-pin P9_17 spi_cs', shell=True)      # CS
    subprocess.call('config-pin P9_21 spi', shell=True)         # DO
    subprocess.call('config-pin P9_18 spi', shell=True)         # DI
    subprocess.call('config-pin P9_22 spi_sclk', shell=True)    # CLK

    version = isBoard()
    if version:
        subprocess.call('systemctl start rack_mon.service', shell=True)
        return "board connected\n"
    else:
        return None


if __name__ == '__main__':
    while True:
        time.sleep(5)
        print("Trying again\n")
        a = vrms()
        if a:
            print(a)
            break

