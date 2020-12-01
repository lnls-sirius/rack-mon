# Controls Group rack monitoring system

## Index

- [Description](https://github.com/lnls-sirius/rack-mon#description)
- [Software](https://github.com/lnls-sirius/rack-mon#software)
- [Installation](https://github.com/lnls-sirius/rack-mon#installation)
- [Versions](https://github.com/lnls-sirius/rack-mon#versions)
https://github.com/lnls-sirius/pydm-opi#desktop



## Description

   This project is a hardware and software solution for Sirius cabinets monitoring based in a NXP's development platform, FRDM-KL25z, and SPIxxCON bus present  on Controls Group SERIALxxCON hardware. The designed baseboard for NXP development  platform  contains  the  necessary  peripherals  to  acquire  information  such  as temperature, humidity, fan status, door status and supply voltage in order to predict possible system failures and evaluate its correlation with the acquired data.

   It also contains an adapter that [enables this project to work with mbed LPC1768](https://gitlab.cnpem.br/vitor.santos/racks/tree/master/KL25Z_to_LPC1768) in instead of KL25z.

## Software

### [KL25z](https://gitlab.cnpem.br/vitor.santos/racks/tree/master/Software/SlaveSW)

   A C program written through Mbed's platform divided in 3 modes:

   * Read mode

   An interruption associated with the rising border of Slave Select signal. In this interruption the microcontroller reads the SPI buffer and if a command other than zero is found stores the command.

   * Buffer copy

   The main loop in the program, where the strings are copied to the "answer" buffer according to the code read in the Read Mode.

   * Ansawer mode

   Another interruption associated with Slave Select signal, but this happens in the falling border of the signal. This is where the board replies the requested value through SPI.

### [LPC1768](https://gitlab.cnpem.br/vitor.santos/racks/blob/master/KL25Z_to_LPC1768/Software/main.cpp)

   When using LPC1768 in instead of KL25Z a few things change. The principle is still the same: reading from the SPI, copying to a answer buffer and responding through SPI but here the program doesn't work with interruptions, everything happens inside the main loop.

   The microcontroller reads the SPI and if there is any request enters a switch-case conditional. If the command corresponds to any of the known commands, LPC1768 responds accordingly.


### [BeagleBone Black](https://gitlab.cnpem.br/vitor.santos/racks/tree/master/Software/MasterSW)

   A Python script responsible for the communication between BeagleBone Black and KL25z (or LPC1768) through SPI and for providing the data to multiple workstations through TCP/IP sockets.

#### Configuration and Python3 module

In order to operate the board you should first do the following configurations in your SERIALxxCON:

- Configure the SPI buses with:

```shell
config-pin P9_17 spi_cs
config-pin P9_21 spi
config-pin P9_18 spi
config-pin P9_22 spi_sclk
```
- Write the previous commands on `/etc/rc.local` if desired

- Stop bbb-function script with:

```shell
systemctl stop bbb-function
```
- Disable bbb-function if desired:

```shell
systemctl disable bbb-function
```

A python3 module was developed in order to simplify the SPI requests to the board. The [Very Simple Protocol](https://gitlab.cnpem.br/vitor.santos/racks/blob/master/Software/MasterSW/vsp.py) module functions are:

- send(char, timeout_ms = 1)

sends a character to the monitoring board and returns a string with its response

- get(\*args)

sends multiple characters to the monitoring board and returns a list with it's response _in order_

- get_all()

returns a list with values for supply voltage, fan status, DHT's temperature measurement, fan current, humidity, LM35's temperature measurement, back door status and front door status _in that order_

- get_LM35()

returns LM35's temperature measurement

- get_DHT()

returns the boards DHT's temperature measurement

- get_humidity()

returns humidity value

- get_fdoor()

returns front door status

- get_bdoor()

returns back door status

- get_fanstat()

returns fan status

- get_current()

returns current measurement

- get_voltage()

returns supply voltage

- isBoard()

works only with LPC1768 and returns the software version, if "None" is returned it means probably there's no board connected or it's a KL25z with software version < v1.60


If using KL25z in instead of LPC1768, lines containing "for i in range (10)" should be changed to "for i in range(11)".

## Installation

   * Remove the back panel of SERIALxxCON box and place the SPIxxCON - RJ25 adapter. Connect the serial cable and close the box with the [new back panel](https://gitlab.cnpem.br/vitor.santos/racks/blob/master/Hardware/SPIxxCON_BackPanel.pdf).

   * Plug one end of the power cable into the black plug and the other end into the power strip.

   * Unplug the fan power cable from the power strip and plug it into the box's red power outlet.

   * Fix the magnetic sensors to their mountings and place them close to the door, in the upper part of the cabinet. Place the neodymium magnet on the cabinet door in a way that when its closed the magnet is close to the magnetic sensor.

   * Place the DHT11 humidity sensor close to the box.

   * Place the LM35 temperature sensor wherever you want.

   * Connect all the sensors to their respective connectors.

## Versions

Each prototype version is named as follows:
_vX.YZ_
- X: hardware version (even numbers are in-house manufactured prototypes).
- Y: prototype hardware version.
- Z: software version.

Available KL25z software versions:

- [v0.58](https://gitlab.cnpem.br/vitor.santos/racks/blob/master/Software/SlaveSW/SlaveKL25Z.c)
- ~~v0.55~~
- ~~v0.5~~
- ~~v0.4~~

Previous versions can be found on [MBED](https://os.mbed.com/users/vitorsp/code/rack-monitoring-system/).


![Global Flow Chart](https://gitlab.cnpem.br/vitor.santos/racks/blob/master/Global%20Flow%20Chart.jpg "Global Flow Chart")
