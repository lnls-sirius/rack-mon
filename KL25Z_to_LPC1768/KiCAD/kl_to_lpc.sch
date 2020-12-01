EESchema Schematic File Version 4
LIBS:kl_to_lpc-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L kl_to_lpc-rescue:KL25-Controle KL25-1
U 3 1 5E9C52DD
P 3550 3100
F 0 "KL25-1" H 3550 2169 50  0000 C CNN
F 1 "KL25" H 3550 2260 50  0000 C CNN
F 2 "Controle:KL25Z" H 3550 2359 60  0000 C CNN
F 3 "" H 3550 2000 60  0000 C CNN
	3    3550 3100
	-1   0    0    1   
$EndComp
$Comp
L kl_to_lpc-rescue:KL25-Controle KL25-1
U 4 1 5E9C89EC
P 3550 4550
F 0 "KL25-1" H 3550 5250 50  0000 C CNN
F 1 "KL25" H 3550 5150 50  0000 C CNN
F 2 "Controle:KL25Z" H 3550 5050 60  0000 C CNN
F 3 "" H 3550 3450 60  0000 C CNN
	4    3550 4550
	-1   0    0    1   
$EndComp
$Comp
L kl_to_lpc-rescue:KL25-Controle KL25-1
U 1 1 5E9D0764
P 6750 3000
F 0 "KL25-1" H 6750 3671 50  0000 C CNN
F 1 "KL25" H 6750 3580 50  0000 C CNN
F 2 "Controle:KL25Z" H 6750 3481 60  0000 C CNN
F 3 "" H 6750 1900 60  0000 C CNN
	1    6750 3000
	1    0    0    -1  
$EndComp
$Comp
L kl_to_lpc-rescue:KL25-Controle KL25-1
U 2 1 5E9D68DC
P 6750 4700
F 0 "KL25-1" H 6750 5150 50  0000 C CNN
F 1 "KL25" H 6750 5250 50  0000 C CNN
F 2 "Controle:KL25Z" H 6750 5350 60  0000 C CNN
F 3 "" H 6750 3600 60  0000 C CNN
	2    6750 4700
	1    0    0    -1  
$EndComp
Text Label 3800 2500 0    50   ~ 0
MinCorrente
Text Label 3800 2600 0    50   ~ 0
MaxCorrente
Text Label 3300 3100 2    50   ~ 0
GPIO
Text Label 3300 3200 2    50   ~ 0
PortaTrás
Text Label 3300 3300 2    50   ~ 0
PortaFrente
Text Label 3800 4350 0    50   ~ 0
MISO
Text Label 3800 4450 0    50   ~ 0
CLK
Text Label 3800 4550 0    50   ~ 0
CS
Text Label 3800 4850 0    50   ~ 0
MOSI
Text Label 3300 4650 2    50   ~ 0
CS
Text Label 7000 4400 0    50   ~ 0
TempLM35
Text Label 7000 4600 0    50   ~ 0
GeneralAnalog
Text Label 7000 4700 0    50   ~ 0
DHT
Text Label 7000 4800 0    50   ~ 0
TensaoRede
Text Label 7000 4900 0    50   ~ 0
CorrenteAnalog
Text Label 7000 2900 0    50   ~ 0
RESET
Text Label 6500 2700 2    50   ~ 0
RCONTROL
$Comp
L power:+3V3 #PWR0101
U 1 1 5E9FE624
P 7000 2800
F 0 "#PWR0101" H 7000 2650 50  0001 C CNN
F 1 "+3V3" V 7015 2928 50  0000 L CNN
F 2 "" H 7000 2800 50  0001 C CNN
F 3 "" H 7000 2800 50  0001 C CNN
	1    7000 2800
	0    1    -1   0   
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5E9FEDEB
P 7000 3200
F 0 "#PWR0102" H 7000 2950 50  0001 C CNN
F 1 "Earth" H 7000 3050 50  0001 C CNN
F 2 "" H 7000 3200 50  0001 C CNN
F 3 "~" H 7000 3200 50  0001 C CNN
	1    7000 3200
	0    -1   1    0   
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 5E9FF135
P 7000 3300
F 0 "#PWR0103" H 7000 3050 50  0001 C CNN
F 1 "Earth" H 7000 3150 50  0001 C CNN
F 2 "" H 7000 3300 50  0001 C CNN
F 3 "~" H 7000 3300 50  0001 C CNN
	1    7000 3300
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5E9FF7B1
P 7000 3400
F 0 "#PWR0104" H 7000 3250 50  0001 C CNN
F 1 "+5V" V 7015 3528 50  0000 L CNN
F 2 "" H 7000 3400 50  0001 C CNN
F 3 "" H 7000 3400 50  0001 C CNN
	1    7000 3400
	0    1    -1   0   
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 5EA0178B
P 4700 2900
F 0 "#PWR0105" H 4700 2650 50  0001 C CNN
F 1 "Earth" H 4700 2750 50  0001 C CNN
F 2 "" H 4700 2900 50  0001 C CNN
F 3 "~" H 4700 2900 50  0001 C CNN
	1    4700 2900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5EA020A0
P 4700 3000
F 0 "#PWR0106" H 4700 2850 50  0001 C CNN
F 1 "+5V" V 4715 3128 50  0000 L CNN
F 2 "" H 4700 3000 50  0001 C CNN
F 3 "" H 4700 3000 50  0001 C CNN
	1    4700 3000
	0    -1   -1   0   
$EndComp
Text Label 4700 3300 2    50   ~ 0
MinCorrente
Text Label 4700 3400 2    50   ~ 0
MaxCorrente
Text Label 4700 3900 2    50   ~ 0
MOSI
Text Label 4700 4000 2    50   ~ 0
MISO
Text Label 4700 4100 2    50   ~ 0
CLK
Text Label 4700 4200 2    50   ~ 0
CS
Text Label 4700 3800 2    50   ~ 0
CS
Text Label 4700 4300 2    50   ~ 0
TempLM35
Text Label 4700 4600 2    50   ~ 0
GeneralAnalog
Text Label 5800 4300 0    50   ~ 0
DHT
Text Label 4700 4800 2    50   ~ 0
TensaoRede
Text Label 4700 4700 2    50   ~ 0
CorrenteAnalog
Text Label 4700 3600 2    50   ~ 0
PortaFrente
Text Label 4700 3500 2    50   ~ 0
PortaTrás
Text Label 4700 3700 2    50   ~ 0
GPIO
Text Label 4700 3200 2    50   ~ 0
RESET
$Comp
L power:+3V3 #PWR0107
U 1 1 5EA0AA11
P 5800 2900
F 0 "#PWR0107" H 5800 2750 50  0001 C CNN
F 1 "+3V3" V 5815 3028 50  0000 L CNN
F 2 "" H 5800 2900 50  0001 C CNN
F 3 "" H 5800 2900 50  0001 C CNN
	1    5800 2900
	0    1    1    0   
$EndComp
Text Label 5800 3900 0    50   ~ 0
RCONTROL
$Comp
L kl_to_lpc-rescue:mbed_NXP_LPC1768-Controle U1
U 1 1 5EA9B939
P 5250 3750
F 0 "U1" H 5250 4865 50  0000 C CNN
F 1 "mbed_NXP_LPC1768" H 5250 4774 50  0000 C CNN
F 2 "Controle:mbed_NXP_LPC1768" H 5100 4750 50  0001 C CNN
F 3 "" H 5100 4750 50  0001 C CNN
	1    5250 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
