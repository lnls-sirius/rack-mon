EESchema Schematic File Version 4
LIBS:lm35racks-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "vRMS"
Date "2019-11-19"
Rev "v0.5"
Comp "Laboratorio Nacional de Luz Sincroton - LNLS"
Comment1 "Grupo CONS"
Comment2 "Vitor dos Santos"
Comment3 ""
Comment4 "Controls Group racks monitoring system"
$EndDescr
$Comp
L power:Earth #PWR04
U 1 1 5CACC1D9
P 2000 1750
F 0 "#PWR04" H 2000 1500 50  0001 C CNN
F 1 "Earth" H 2000 1600 50  0001 C CNN
F 2 "" H 2000 1750 50  0001 C CNN
F 3 "~" H 2000 1750 50  0001 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1300 1800 1300
Wire Wire Line
	1600 1450 2150 1450
Wire Wire Line
	1600 1450 1600 1300
$Comp
L lm35racks-rescue:KL25-Controle KL25-1
U 4 1 5CAE299B
P 10000 3750
F 0 "KL25-1" H 10000 4421 50  0000 C CNN
F 1 "KL25" H 10000 4330 50  0000 C CNN
F 2 "Controle:KL25Z" H 10000 4231 60  0000 C CNN
F 3 "" H 10000 2650 60  0000 C CNN
	4    10000 3750
	1    0    0    1   
$EndComp
$Comp
L lm35racks-rescue:KL25-Controle KL25-1
U 2 1 5CAE3B01
P 8350 3850
F 0 "KL25-1" H 8350 4521 50  0000 C CNN
F 1 "KL25" H 8350 4430 50  0000 C CNN
F 2 "Controle:KL25Z" H 8350 4331 60  0000 C CNN
F 3 "" H 8350 2750 60  0000 C CNN
	2    8350 3850
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 5CAF7E78
P 2100 1200
F 0 "U1" H 2100 1400 50  0000 C CNN
F 1 "LM324" H 2150 1500 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2050 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2150 1400 50  0001 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 5 1 5CAF7EF2
P 2100 1200
F 0 "U1" H 2058 1246 50  0001 L CNN
F 1 "LM324" H 2058 1155 50  0001 L CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 2050 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2150 1400 50  0001 C CNN
	5    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L Transformer:CST2_Split T1
U 2 1 5CB0D624
P 850 4400
F 0 "T1" H 850 4300 50  0000 C CNN
F 1 "CST1010" H 850 4350 50  0000 C CNN
F 2 "Controle:CST" H 850 4400 50  0001 C CNN
F 3 "https://www.coilcraft.com/pdfs/cst.pdf" H 850 4400 50  0001 C CNN
	2    850  4400
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR011
U 1 1 5CB0EB4C
P 550 4400
F 0 "#PWR011" H 550 4150 50  0001 C CNN
F 1 "Earth" H 550 4250 50  0001 C CNN
F 2 "" H 550 4400 50  0001 C CNN
F 3 "~" H 550 4400 50  0001 C CNN
	1    550  4400
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR03
U 1 1 5CB0B82E
P 1250 900
F 0 "#PWR03" H 1250 650 50  0001 C CNN
F 1 "Earth" H 1250 750 50  0001 C CNN
F 2 "" H 1250 900 50  0001 C CNN
F 3 "~" H 1250 900 50  0001 C CNN
	1    1250 900 
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR010
U 1 1 5CB0B89E
P 1500 2950
F 0 "#PWR010" H 1500 2700 50  0001 C CNN
F 1 "Earth" H 1500 2800 50  0001 C CNN
F 2 "" H 1500 2950 50  0001 C CNN
F 3 "~" H 1500 2950 50  0001 C CNN
	1    1500 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5CB0B8BB
P 1500 3250
F 0 "#PWR09" H 1500 3100 50  0001 C CNN
F 1 "+5V" H 1515 3423 50  0000 C CNN
F 2 "" H 1500 3250 50  0001 C CNN
F 3 "" H 1500 3250 50  0001 C CNN
	1    1500 3250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5CB0BA32
P 8100 3000
F 0 "#PWR08" H 8100 2850 50  0001 C CNN
F 1 "+5V" H 8115 3173 50  0000 C CNN
F 2 "" H 8100 3000 50  0001 C CNN
F 3 "" H 8100 3000 50  0001 C CNN
	1    8100 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 1750 2000 1750
Wire Wire Line
	2000 1750 2000 1500
Connection ~ 2000 1750
$Comp
L power:Earth #PWR07
U 1 1 5CB0BD00
P 8100 2900
F 0 "#PWR07" H 8100 2650 50  0001 C CNN
F 1 "Earth" H 8100 2750 50  0001 C CNN
F 2 "" H 8100 2900 50  0001 C CNN
F 3 "~" H 8100 2900 50  0001 C CNN
	1    8100 2900
	0    1    1    0   
$EndComp
Text Label 8100 3550 2    50   ~ 0
TempLM35
Text Label 1900 3150 2    50   ~ 0
DHT
$Comp
L power:Earth #PWR06
U 1 1 5CB0BF47
P 8100 2800
F 0 "#PWR06" H 8100 2550 50  0001 C CNN
F 1 "Earth" H 8100 2650 50  0001 C CNN
F 2 "" H 8100 2800 50  0001 C CNN
F 3 "~" H 8100 2800 50  0001 C CNN
	1    8100 2800
	0    1    1    0   
$EndComp
Text Notes 1500 650  0    79   ~ 16
Temperatura
Text Notes 1600 2350 0    79   ~ 16
Umidade
Text Notes 1550 4000 0    79   ~ 16
Corrente
Text Label 1150 5000 2    50   ~ 0
CorrenteAnalog
Text Notes 1700 6300 0    79   ~ 16
Tensão\n
Text Notes 8100 900  0    197  ~ 0
FRDM - KL25z
$Comp
L lm35racks-rescue:KL25-Controle KL25-1
U 1 1 5CB11557
P 8350 2600
F 0 "KL25-1" H 8350 3271 50  0000 C CNN
F 1 "KL25" H 8350 3180 50  0000 C CNN
F 2 "Controle:KL25Z" H 8350 3081 60  0000 C CNN
F 3 "" H 8350 1500 60  0000 C CNN
	1    8350 2600
	-1   0    0    -1  
$EndComp
$Comp
L lm35racks-rescue:KL25-Controle KL25-1
U 3 1 5CB11873
P 10000 2550
F 0 "KL25-1" H 10000 3221 50  0000 C CNN
F 1 "KL25" H 10000 3130 50  0000 C CNN
F 2 "Controle:KL25Z" H 10000 3031 60  0000 C CNN
F 3 "" H 10000 1450 60  0000 C CNN
	3    10000 2550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 2 1 5CEE9C0E
P 1750 4500
F 0 "U1" H 1750 4800 50  0000 C CNN
F 1 "LM324" H 1750 4700 50  0000 C CNN
F 2 "" H 1700 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1800 4700 50  0001 C CNN
	2    1750 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5CEEA473
P 2550 4650
F 0 "C1" H 2350 4650 50  0000 L CNN
F 1 "10u" H 2350 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2588 4500 50  0001 C CNN
F 3 "~" H 2550 4650 50  0001 C CNN
	1    2550 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 4800 2700 4800
$Comp
L power:Earth #PWR012
U 1 1 5CEEB76D
P 2700 4800
F 0 "#PWR012" H 2700 4550 50  0001 C CNN
F 1 "Earth" H 2700 4650 50  0001 C CNN
F 2 "" H 2700 4800 50  0001 C CNN
F 3 "~" H 2700 4800 50  0001 C CNN
	1    2700 4800
	1    0    0    -1  
$EndComp
Connection ~ 2700 4800
Wire Wire Line
	2700 4800 2850 4800
$Comp
L Device:R_US R4
U 1 1 5CEEF34C
P 2850 4650
F 0 "R4" H 2918 4696 50  0000 L CNN
F 1 "100k" H 2918 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2890 4640 50  0001 C CNN
F 3 "~" H 2850 4650 50  0001 C CNN
	1    2850 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5CEEF9FA
P 1600 1600
F 0 "R2" H 1668 1646 50  0000 L CNN
F 1 "2k2" H 1668 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1640 1590 50  0001 C CNN
F 3 "~" H 1600 1600 50  0001 C CNN
	1    1600 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5CEEFBDC
P 2300 1450
F 0 "R1" V 2400 1450 50  0000 C CNN
F 1 "6k2" V 2200 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2340 1440 50  0001 C CNN
F 3 "~" H 2300 1450 50  0001 C CNN
	1    2300 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5CEF12E3
P 2050 3150
F 0 "R3" V 2100 3150 50  0000 C CNN
F 1 "10k" V 2150 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2090 3140 50  0001 C CNN
F 3 "~" H 2050 3150 50  0001 C CNN
	1    2050 3150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5CEF1B48
P 2200 3150
F 0 "#PWR05" H 2200 3000 50  0001 C CNN
F 1 "+5V" H 2215 3323 50  0000 C CNN
F 2 "" H 2200 3150 50  0001 C CNN
F 3 "" H 2200 3150 50  0001 C CNN
	1    2200 3150
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U1
U 3 1 5CEF4042
P 1750 5700
F 0 "U1" H 1750 6000 50  0000 C CNN
F 1 "LM324" H 1750 5900 50  0000 C CNN
F 2 "" H 1700 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1800 5900 50  0001 C CNN
	3    1750 5700
	1    0    0    -1  
$EndComp
Text Label 2550 4500 0    50   ~ 0
CorrenteAnalog
Text Label 2350 5100 0    50   ~ 0
CorrenteMax
Text Label 9750 3550 2    50   ~ 0
MISO
Text Label 9750 3750 2    50   ~ 0
CS
Text Label 9750 4050 2    50   ~ 0
MOSI
Text Label 9750 3650 2    50   ~ 0
CLK
$Comp
L Device:R_US R5
U 1 1 5CF061C8
P 2200 5100
F 0 "R5" H 2268 5146 50  0000 L CNN
F 1 "1k" H 2268 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2240 5090 50  0001 C CNN
F 3 "~" H 2200 5100 50  0001 C CNN
	1    2200 5100
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5CF062C1
P 2350 5250
F 0 "R7" H 2200 5300 50  0000 L CNN
F 1 "9k1" H 2150 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2390 5240 50  0001 C CNN
F 3 "~" H 2350 5250 50  0001 C CNN
	1    2350 5250
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR014
U 1 1 5CF06409
P 2350 5400
F 0 "#PWR014" H 2350 5150 50  0001 C CNN
F 1 "Earth" H 2350 5250 50  0001 C CNN
F 2 "" H 2350 5400 50  0001 C CNN
F 3 "~" H 2350 5400 50  0001 C CNN
	1    2350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4500 2850 4500
Text Label 8100 3850 2    50   ~ 0
DHT
Text Label 8100 3950 2    50   ~ 0
TensaoRede
Wire Notes Line
	500  6150 5900 6150
Text Notes 4400 6300 0    79   ~ 16
SPI
$Comp
L Amplifier_Operational:LM324 U1
U 4 1 5CF038C7
P 1750 5100
F 0 "U1" H 1750 5400 50  0000 C CNN
F 1 "LM324" H 1750 5300 50  0000 C CNN
F 2 "" H 1700 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1800 5300 50  0001 C CNN
	4    1750 5100
	1    0    0    -1  
$EndComp
Text Label 1150 5600 2    50   ~ 0
CorrenteAnalog
$Comp
L Device:R_US R8
U 1 1 5CF040EB
P 2200 5700
F 0 "R8" H 2268 5746 50  0000 L CNN
F 1 "1k" H 2268 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2240 5690 50  0001 C CNN
F 3 "~" H 2200 5700 50  0001 C CNN
	1    2200 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5CF040F2
P 2350 5850
F 0 "R9" H 2418 5896 50  0000 L CNN
F 1 "9k1" H 2418 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2390 5840 50  0001 C CNN
F 3 "~" H 2350 5850 50  0001 C CNN
	1    2350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR015
U 1 1 5CF040F9
P 2350 6000
F 0 "#PWR015" H 2350 5750 50  0001 C CNN
F 1 "Earth" H 2350 5850 50  0001 C CNN
F 2 "" H 2350 6000 50  0001 C CNN
F 3 "~" H 2350 6000 50  0001 C CNN
	1    2350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5500 1300 5800
Wire Wire Line
	1300 5800 1450 5800
Wire Wire Line
	1150 5000 1450 5000
Wire Wire Line
	1150 5600 1450 5600
$Comp
L Device:R_US R10
U 1 1 5CF0FC7D
P 1300 5950
F 0 "R10" H 1368 5996 50  0000 L CNN
F 1 "2k2" H 1368 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1340 5940 50  0001 C CNN
F 3 "~" H 1300 5950 50  0001 C CNN
	1    1300 5950
	1    0    0    -1  
$EndComp
Connection ~ 1300 5800
Wire Wire Line
	1300 6100 2200 6100
Wire Wire Line
	2200 6100 2200 6000
Wire Wire Line
	2200 6000 2350 6000
Connection ~ 2350 6000
Text Label 2350 5700 0    50   ~ 0
CorrenteMin
$Comp
L power:+5V #PWR01
U 1 1 5CB0B866
P 1250 1200
F 0 "#PWR01" H 1250 1050 50  0001 C CNN
F 1 "+5V" H 1265 1373 50  0000 C CNN
F 2 "" H 1250 1200 50  0001 C CNN
F 3 "" H 1250 1200 50  0001 C CNN
	1    1250 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 5D1E1AC3
P 1300 5350
F 0 "RV1" H 1232 5396 50  0000 R CNN
F 1 "5K" H 1232 5305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" H 1300 5350 50  0001 C CNN
F 3 "~" H 1300 5350 50  0001 C CNN
	1    1300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5350 1450 5200
Connection ~ 1450 5200
$Comp
L power:+5V #PWR02
U 1 1 5D1E5FB1
P 2000 900
F 0 "#PWR02" H 2000 750 50  0001 C CNN
F 1 "+5V" H 2015 1073 50  0000 C CNN
F 2 "" H 2000 900 50  0001 C CNN
F 3 "" H 2000 900 50  0001 C CNN
	1    2000 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5D1E74BE
P 850 5200
F 0 "R6" V 950 5050 50  0000 L CNN
F 1 "10k" V 950 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 890 5190 50  0001 C CNN
F 3 "~" H 850 5200 50  0001 C CNN
	1    850  5200
	0    -1   -1   0   
$EndComp
Connection ~ 1300 5200
$Comp
L power:+5V #PWR013
U 1 1 5D1E7A5C
P 700 5200
F 0 "#PWR013" H 700 5050 50  0001 C CNN
F 1 "+5V" H 715 5373 50  0000 C CNN
F 2 "" H 700 5200 50  0001 C CNN
F 3 "" H 700 5200 50  0001 C CNN
	1    700  5200
	0    -1   -1   0   
$EndComp
Text Notes 4100 4450 0    79   ~ 16
Ajuste Corrente
Text Label 4350 5000 0    50   ~ 0
CorrenteMax
Text Label 4300 5750 0    50   ~ 0
CorrenteMin
$Comp
L Device:LED D9
U 1 1 5D201AB1
P 4450 5850
F 0 "D9" H 4450 6050 50  0000 C CNN
F 1 "LED" H 4450 5950 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 5850 50  0001 C CNN
F 3 "~" H 4450 5850 50  0001 C CNN
	1    4450 5850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 5D201BC4
P 4500 5100
F 0 "D8" H 4500 5300 50  0000 C CNN
F 1 "LED" H 4500 5200 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4500 5100 50  0001 C CNN
F 3 "~" H 4500 5100 50  0001 C CNN
	1    4500 5100
	-1   0    0    1   
$EndComp
Text Label 9750 2050 2    50   ~ 0
MaxCorrente
Text Label 4300 5650 0    50   ~ 0
MinCorrente
Text Label 9750 1950 2    50   ~ 0
MinCorrente
$Comp
L Device:R_US R15
U 1 1 5D20389E
P 4800 5100
F 0 "R15" H 4868 5146 50  0000 L CNN
F 1 "180" H 4868 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4840 5090 50  0001 C CNN
F 3 "~" H 4800 5100 50  0001 C CNN
	1    4800 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5D203AA2
P 4750 5850
F 0 "R16" H 4550 5900 50  0000 L CNN
F 1 "180" H 4550 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4790 5840 50  0001 C CNN
F 3 "~" H 4750 5850 50  0001 C CNN
	1    4750 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 5D203B14
P 4950 5100
F 0 "#PWR0101" H 4950 4850 50  0001 C CNN
F 1 "Earth" H 4950 4950 50  0001 C CNN
F 2 "" H 4950 5100 50  0001 C CNN
F 3 "~" H 4950 5100 50  0001 C CNN
	1    4950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5D203B73
P 4900 5850
F 0 "#PWR0102" H 4900 5600 50  0001 C CNN
F 1 "Earth" H 4900 5700 50  0001 C CNN
F 2 "" H 4900 5850 50  0001 C CNN
F 3 "~" H 4900 5850 50  0001 C CNN
	1    4900 5850
	1    0    0    -1  
$EndComp
Text Label 4350 4900 0    50   ~ 0
MaxCorrente
$Comp
L power:+5V #PWR0103
U 1 1 5D2715AE
P 4250 7200
F 0 "#PWR0103" H 4250 7050 50  0001 C CNN
F 1 "+5V" H 4265 7373 50  0000 C CNN
F 2 "" H 4250 7200 50  0001 C CNN
F 3 "" H 4250 7200 50  0001 C CNN
	1    4250 7200
	-1   0    0    1   
$EndComp
Text Label 4550 7200 3    50   ~ 0
MISO
Text Label 4450 7200 3    50   ~ 0
MOSI
Text Label 4750 7200 3    50   ~ 0
CS
Text Label 4650 7200 3    50   ~ 0
CLK
$Comp
L power:Earth #PWR0104
U 1 1 5D271ABD
P 4350 7200
F 0 "#PWR0104" H 4350 6950 50  0001 C CNN
F 1 "Earth" H 4350 7050 50  0001 C CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "~" H 4350 7200 50  0001 C CNN
	1    4350 7200
	1    0    0    -1  
$EndComp
Text Label 10250 2750 0    50   ~ 0
PortaFrente
Text Label 10250 2650 0    50   ~ 0
PortaTrás
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D27B040
P 3950 3950
F 0 "SW1" H 3950 4235 50  0000 C CNN
F 1 "PortaFrente" H 3950 4144 50  0000 C CNN
F 2 "Controle:Borne KRE" H 3950 3950 50  0001 C CNN
F 3 "" H 3950 3950 50  0001 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 5D27B492
P 4150 3850
F 0 "#PWR0105" H 4150 3600 50  0001 C CNN
F 1 "Earth" H 4150 3700 50  0001 C CNN
F 2 "" H 4150 3850 50  0001 C CNN
F 3 "~" H 4150 3850 50  0001 C CNN
	1    4150 3850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 5D27BB53
P 5200 3950
F 0 "SW2" H 5200 4235 50  0000 C CNN
F 1 "PortaTrás" H 5200 4144 50  0000 C CNN
F 2 "Controle:Borne KRE" H 5200 3950 50  0001 C CNN
F 3 "" H 5200 3950 50  0001 C CNN
	1    5200 3950
	1    0    0    -1  
$EndComp
Text Label 3750 3950 2    50   ~ 0
PortaFrente
Text Label 5000 3950 2    50   ~ 0
PortaTrás
Text Notes 4400 3450 0    79   ~ 16
Portas
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5D2831F5
P 4150 5000
F 0 "J4" H 4250 5350 50  0000 C CNN
F 1 "BarrAjusteMax" H 4250 5250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4150 5000 50  0001 C CNN
F 3 "~" H 4150 5000 50  0001 C CNN
	1    4150 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5D283355
P 4100 5750
F 0 "J5" H 4200 6100 50  0000 C CNN
F 1 "BarrAjusteMin" H 4200 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4100 5750 50  0001 C CNN
F 3 "~" H 4100 5750 50  0001 C CNN
	1    4100 5750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0106
U 1 1 5D28D5A3
P 5400 3850
F 0 "#PWR0106" H 5400 3600 50  0001 C CNN
F 1 "Earth" H 5400 3700 50  0001 C CNN
F 2 "" H 5400 3850 50  0001 C CNN
F 3 "~" H 5400 3850 50  0001 C CNN
	1    5400 3850
	0    -1   -1   0   
$EndComp
Text Label 10250 3850 0    50   ~ 0
CS
Wire Wire Line
	2400 1200 2450 1200
Text Label 2450 1200 0    50   ~ 0
TempLM35
$Comp
L Device:R_US R11
U 1 1 5D5BE3A6
P 2500 6750
F 0 "R11" H 2568 6796 50  0000 L CNN
F 1 "82k" H 2568 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2540 6740 50  0001 C CNN
F 3 "~" H 2500 6750 50  0001 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 5D5BE420
P 2500 7150
F 0 "R12" H 2568 7196 50  0000 L CNN
F 1 "22k" H 2568 7105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2540 7140 50  0001 C CNN
F 3 "~" H 2500 7150 50  0001 C CNN
	1    2500 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5D5BE4DE
P 1400 6700
F 0 "D3" V 1354 6779 50  0000 L CNN
F 1 "D" V 1445 6779 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 6700 50  0001 C CNN
F 3 "~" H 1400 6700 50  0001 C CNN
	1    1400 6700
	0    1    1    0   
$EndComp
$Comp
L Device:D D5
U 1 1 5D5BF8A5
P 1400 7150
F 0 "D5" V 1354 7229 50  0000 L CNN
F 1 "D" V 1445 7229 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 7150 50  0001 C CNN
F 3 "~" H 1400 7150 50  0001 C CNN
	1    1400 7150
	0    1    1    0   
$EndComp
$Comp
L Device:D D6
U 1 1 5D5BF91F
P 1750 7150
F 0 "D6" V 1704 7229 50  0000 L CNN
F 1 "D" V 1795 7229 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 7150 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5D5BF98F
P 1750 6700
F 0 "D4" V 1704 6779 50  0000 L CNN
F 1 "D" V 1795 6779 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 6700 50  0001 C CNN
F 3 "~" H 1750 6700 50  0001 C CNN
	1    1750 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 7000 1750 6950
Wire Wire Line
	1400 6850 1400 7000
Wire Wire Line
	1400 7300 1600 7300
Wire Wire Line
	1600 7300 1600 7450
Connection ~ 1600 7300
Wire Wire Line
	1600 7300 1750 7300
Wire Wire Line
	1400 6550 1750 6550
$Comp
L power:Earth #PWR0107
U 1 1 5D5D32AC
P 1600 7450
F 0 "#PWR0107" H 1600 7200 50  0001 C CNN
F 1 "Earth" H 1600 7300 50  0001 C CNN
F 2 "" H 1600 7450 50  0001 C CNN
F 3 "~" H 1600 7450 50  0001 C CNN
	1    1600 7450
	1    0    0    -1  
$EndComp
Text Label 2750 6950 0    50   ~ 0
TensaoRede
$Comp
L Device:R_US R19
U 1 1 5D5EC474
P 1000 4600
F 0 "R19" H 800 4650 50  0000 L CNN
F 1 "2k2" H 800 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1040 4590 50  0001 C CNN
F 3 "~" H 1000 4600 50  0001 C CNN
	1    1000 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5D5EC6F0
P 2050 4650
F 0 "R20" H 2118 4696 50  0000 L CNN
F 1 "22k" H 2118 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2090 4640 50  0001 C CNN
F 3 "~" H 2050 4650 50  0001 C CNN
	1    2050 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 4600 1300 4600
$Comp
L power:Earth #PWR0110
U 1 1 5D5ED22A
P 850 4600
F 0 "#PWR0110" H 850 4350 50  0001 C CNN
F 1 "Earth" H 850 4450 50  0001 C CNN
F 2 "" H 850 4600 50  0001 C CNN
F 3 "~" H 850 4600 50  0001 C CNN
	1    850  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4600 1300 4800
Wire Wire Line
	1300 4800 2050 4800
Connection ~ 1300 4600
Wire Wire Line
	1300 4600 1450 4600
$Comp
L Device:R_US R14
U 1 1 5D5F3636
P 850 4150
F 0 "R14" V 800 4200 50  0000 L CNN
F 1 "1k" V 800 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 890 4140 50  0001 C CNN
F 3 "~" H 850 4150 50  0001 C CNN
	1    850  4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 5D667F55
P 1300 4400
F 0 "R21" H 1368 4446 50  0000 L CNN
F 1 "1k" H 1368 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1340 4390 50  0001 C CNN
F 3 "~" H 1300 4400 50  0001 C CNN
	1    1300 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R22
U 1 1 5D681234
P 2050 3300
F 0 "R22" V 1900 3300 50  0000 C CNN
F 1 "10k" V 1950 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2090 3290 50  0001 C CNN
F 3 "~" H 2050 3300 50  0001 C CNN
	1    2050 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 3300 1900 3150
Wire Wire Line
	2200 3300 2200 3150
Connection ~ 2200 3150
$Comp
L Device:R_US R23
U 1 1 5D692474
P 850 3950
F 0 "R23" V 750 4000 50  0000 L CNN
F 1 "1k" V 800 3750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 890 3940 50  0001 C CNN
F 3 "~" H 850 3950 50  0001 C CNN
	1    850  3950
	0    -1   -1   0   
$EndComp
Connection ~ 1150 4400
$Comp
L Connector:6P6C J3
U 1 1 5D6E8CD6
P 4450 6800
F 0 "J3" V 4459 7230 50  0000 L CNN
F 1 "6P6C" V 4550 7230 50  0000 L CNN
F 2 "Controle:RJ25(vitor)" V 4450 6825 50  0001 C CNN
F 3 "~" V 4450 6825 50  0001 C CNN
	1    4450 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 4150 1150 4150
Wire Wire Line
	1150 4150 1150 4400
Wire Wire Line
	700  4150 550  4150
Wire Wire Line
	550  4150 550  4400
Connection ~ 550  4400
Wire Wire Line
	1000 3950 1150 3950
Wire Wire Line
	1150 3950 1150 4150
Connection ~ 1150 4150
Wire Wire Line
	700  3950 550  3950
Wire Wire Line
	550  3950 550  4150
Connection ~ 550  4150
Wire Wire Line
	1300 5200 1450 5200
$Comp
L Device:R_US R24
U 1 1 5D71641D
P 850 5400
F 0 "R24" V 750 5450 50  0000 L CNN
F 1 "10k" V 750 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 890 5390 50  0001 C CNN
F 3 "~" H 850 5400 50  0001 C CNN
	1    850  5400
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 5400 1000 5200
Wire Wire Line
	1000 5200 1300 5200
Wire Wire Line
	700  5400 700  5200
$Comp
L Device:D D1
U 1 1 5D730BD2
P 2300 4500
F 0 "D1" V 2254 4579 50  0000 L CNN
F 1 "D" V 2345 4579 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 4500 50  0001 C CNN
F 3 "~" H 2300 4500 50  0001 C CNN
	1    2300 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4500 2050 4500
Connection ~ 2050 4500
Wire Wire Line
	2450 4500 2550 4500
Connection ~ 2550 4500
$Comp
L Connector:4P4C J1
U 1 1 5D7BC9F7
P 850 1100
F 0 "J1" V 859 1430 50  0000 L CNN
F 1 "4P4C" V 950 1430 50  0000 L CNN
F 2 "Controle:RJ11-4P4C-HIROSE_2" V 850 1150 50  0001 C CNN
F 3 "~" V 850 1150 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1100 1800 1100
$Comp
L Connector:4P4C J7
U 1 1 5D810B75
P 1100 3150
F 0 "J7" V 1109 3480 50  0000 L CNN
F 1 "4P4C" V 1200 3480 50  0000 L CNN
F 2 "Controle:RJ11-4P4C-HIROSE_2" V 1100 3200 50  0001 C CNN
F 3 "~" V 1100 3200 50  0001 C CNN
	1    1100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3150 1900 3150
Connection ~ 1900 3150
Wire Wire Line
	800  6850 1400 6850
Connection ~ 1400 6850
Wire Wire Line
	800  6950 1750 6950
Connection ~ 1750 6950
Wire Wire Line
	1750 6950 1750 6850
Wire Wire Line
	1750 7300 2150 7300
Wire Wire Line
	2150 7300 2150 7050
Connection ~ 1750 7300
Wire Wire Line
	1750 6550 2150 6550
Wire Wire Line
	2150 6550 2150 6750
Connection ~ 1750 6550
Wire Wire Line
	2150 7300 2500 7300
Connection ~ 2150 7300
Wire Wire Line
	2150 6550 2500 6550
Wire Wire Line
	2500 6550 2500 6600
Connection ~ 2150 6550
Wire Wire Line
	2500 6900 2500 6950
Wire Wire Line
	2500 6950 2750 6950
Connection ~ 2500 6950
Wire Wire Line
	2500 6950 2500 7000
Text Label 8100 4050 2    50   ~ 0
CorrenteAnalog
Wire Wire Line
	2450 1200 2450 1450
$Comp
L Amplifier_Operational:LM321 U2
U 1 1 5DEFBC64
P 9000 5750
F 0 "U2" H 9000 6000 50  0000 L CNN
F 1 "LM321" H 9000 6100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9000 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm321.pdf" H 9000 5750 50  0001 C CNN
	1    9000 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5DEFD16C
P 8900 5450
F 0 "#PWR0108" H 8900 5300 50  0001 C CNN
F 1 "+5V" H 8915 5623 50  0000 C CNN
F 2 "" H 8900 5450 50  0001 C CNN
F 3 "" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0109
U 1 1 5DEFD1DB
P 8900 6350
F 0 "#PWR0109" H 8900 6100 50  0001 C CNN
F 1 "Earth" H 8900 6200 50  0001 C CNN
F 2 "" H 8900 6350 50  0001 C CNN
F 3 "~" H 8900 6350 50  0001 C CNN
	1    8900 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R13
U 1 1 5DEFE24A
P 8400 5650
F 0 "R13" V 8500 5650 50  0000 C CNN
F 1 "Rin" V 8300 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8440 5640 50  0001 C CNN
F 3 "~" H 8400 5650 50  0001 C CNN
	1    8400 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US Rg1
U 1 1 5DEFE2FE
P 8600 6150
F 0 "Rg1" V 8700 6150 50  0000 C CNN
F 1 "-" V 8500 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8640 6140 50  0001 C CNN
F 3 "~" H 8600 6150 50  0001 C CNN
	1    8600 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US Rf1
U 1 1 5DEFE3E2
P 9200 6000
F 0 "Rf1" V 9300 6000 50  0000 C CNN
F 1 "-" V 9100 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9240 5990 50  0001 C CNN
F 3 "~" H 9200 6000 50  0001 C CNN
	1    9200 6000
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5DEFF59E
P 9550 5750
F 0 "D2" V 9504 5829 50  0000 L CNN
F 1 "D" V 9595 5829 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9550 5750 50  0001 C CNN
F 3 "~" H 9550 5750 50  0001 C CNN
	1    9550 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 5850 8600 5850
Wire Wire Line
	8600 5850 8600 6000
Wire Wire Line
	8900 6300 8900 6350
Wire Wire Line
	8900 6050 8900 6300
Connection ~ 8900 6300
Wire Wire Line
	9050 6000 8600 6000
Connection ~ 8600 6000
Wire Wire Line
	9350 6000 9350 5750
Wire Wire Line
	9350 5750 9400 5750
Wire Wire Line
	9300 5750 9350 5750
Connection ~ 9350 5750
Wire Wire Line
	8600 6300 8900 6300
$Comp
L Connector:4P4C J12
U 1 1 5DF09CCA
P 7650 5650
F 0 "J12" V 7659 5980 50  0000 L CNN
F 1 "4P4C" V 7750 5980 50  0000 L CNN
F 2 "Controle:RJ11-4P4C-HIROSE_2" V 7650 5700 50  0001 C CNN
F 3 "~" V 7650 5700 50  0001 C CNN
	1    7650 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5DF09D88
P 8050 5750
F 0 "#PWR0111" H 8050 5600 50  0001 C CNN
F 1 "+5V" H 8065 5923 50  0000 C CNN
F 2 "" H 8050 5750 50  0001 C CNN
F 3 "" H 8050 5750 50  0001 C CNN
	1    8050 5750
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0112
U 1 1 5DF09E01
P 8050 5450
F 0 "#PWR0112" H 8050 5200 50  0001 C CNN
F 1 "Earth" H 8050 5300 50  0001 C CNN
F 2 "" H 8050 5450 50  0001 C CNN
F 3 "~" H 8050 5450 50  0001 C CNN
	1    8050 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 5650 8250 5650
Wire Wire Line
	8550 5650 8700 5650
$Comp
L Switch:SW_SPDT SW3
U 1 1 5DF18A57
P 10750 5900
F 0 "SW3" H 10750 6185 50  0000 C CNN
F 1 "GeneralPurpose" H 10750 6094 50  0000 C CNN
F 2 "Controle:Borne KRE" H 10750 5900 50  0001 C CNN
F 3 "" H 10750 5900 50  0001 C CNN
	1    10750 5900
	1    0    0    -1  
$EndComp
Text Label 10550 5900 2    50   ~ 0
GPIO
Text Label 10250 2550 0    50   ~ 0
GPIO
$Comp
L power:Earth #PWR0113
U 1 1 5DF1AC12
P 10950 5800
F 0 "#PWR0113" H 10950 5550 50  0001 C CNN
F 1 "Earth" H 10950 5650 50  0001 C CNN
F 2 "" H 10950 5800 50  0001 C CNN
F 3 "~" H 10950 5800 50  0001 C CNN
	1    10950 5800
	0    -1   -1   0   
$EndComp
Text Label 9700 5750 0    50   ~ 0
GeneralAnalog
Text Label 8100 3750 2    50   ~ 0
GeneralAnalog
Text Notes 8900 4900 0    79   ~ 16
Uso Geral
$Comp
L power:+3.3V #PWR021
U 1 1 5E4ED9AD
P 8100 2400
F 0 "#PWR021" H 8100 2250 50  0001 C CNN
F 1 "+3.3V" V 8115 2528 50  0000 L CNN
F 2 "" H 8100 2400 50  0001 C CNN
F 3 "" H 8100 2400 50  0001 C CNN
	1    8100 2400
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7000 4650 7000 6500
Wire Notes Line
	7000 4650 11200 4650
$Comp
L 74xx:74HC123 U3
U 1 1 5E5104A0
P 4200 2650
F 0 "U3" H 4050 3100 50  0000 C CNN
F 1 "74HC123" H 4100 3000 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 4200 2650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 4200 2650 50  0001 C CNN
	1    4200 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC123 U3
U 2 1 5E5106F7
P 5200 2350
F 0 "U3" H 5200 2817 50  0000 C CNN
F 1 "74HC123" H 5200 2726 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 5200 2350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 5200 2350 50  0001 C CNN
	2    5200 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC123 U3
U 3 1 5E51086D
P 4000 1300
F 0 "U3" V 3633 1300 50  0000 C CNN
F 1 "74HC123" V 3724 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 4000 1300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 4000 1300 50  0001 C CNN
	3    4000 1300
	0    1    1    0   
$EndComp
Wire Notes Line
	500  2150 3200 2150
Wire Notes Line
	3200 500  3200 7750
Wire Notes Line
	3200 3300 5900 3300
Wire Wire Line
	4200 3150 5200 3150
Wire Wire Line
	5200 3150 5200 2850
Wire Wire Line
	4700 2550 4700 2800
Connection ~ 5200 2850
Wire Wire Line
	5200 2800 5200 2850
Wire Wire Line
	4700 2800 5200 2800
$Comp
L power:Earth #PWR022
U 1 1 5E527AE3
P 3700 2750
F 0 "#PWR022" H 3700 2500 50  0001 C CNN
F 1 "Earth" H 3700 2600 50  0001 C CNN
F 2 "" H 3700 2750 50  0001 C CNN
F 3 "~" H 3700 2750 50  0001 C CNN
	1    3700 2750
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5E52A10C
P 2150 6900
F 0 "C2" H 2265 6946 50  0000 L CNN
F 1 "100u" H 2265 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x7.7" H 2150 6900 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
	1    2150 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5E52A5C5
P 3450 2450
F 0 "C4" V 3198 2450 50  0000 C CNN
F 1 "10u" V 3289 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3450 2450 50  0001 C CNN
F 3 "~" H 3450 2450 50  0001 C CNN
	1    3450 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R18
U 1 1 5E52AFF4
P 3700 2200
F 0 "R18" V 3800 2200 50  0000 C CNN
F 1 "100k" V 3600 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3740 2190 50  0001 C CNN
F 3 "~" H 3700 2200 50  0001 C CNN
	1    3700 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2450 3700 2450
Connection ~ 3700 2450
Wire Wire Line
	3700 2450 3700 2350
Wire Wire Line
	3300 2450 3250 2450
Wire Wire Line
	3250 2450 3250 2550
Wire Wire Line
	3250 2550 3700 2550
$Comp
L power:+3.3V #PWR019
U 1 1 5E52FE4C
P 3700 2050
F 0 "#PWR019" H 3700 1900 50  0001 C CNN
F 1 "+3.3V" H 3715 2223 50  0000 C CNN
F 2 "" H 3700 2050 50  0001 C CNN
F 3 "" H 3700 2050 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 5E5304C3
P 5200 3150
F 0 "#PWR023" H 5200 3000 50  0001 C CNN
F 1 "+3.3V" V 5215 3278 50  0000 L CNN
F 2 "" H 5200 3150 50  0001 C CNN
F 3 "" H 5200 3150 50  0001 C CNN
	1    5200 3150
	0    1    1    0   
$EndComp
Connection ~ 5200 3150
$Comp
L Device:CP1 C3
U 1 1 5E5306EA
P 4450 2150
F 0 "C3" V 4198 2150 50  0000 C CNN
F 1 "10u" V 4289 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4450 2150 50  0001 C CNN
F 3 "~" H 4450 2150 50  0001 C CNN
	1    4450 2150
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 5E534166
P 4200 1900
F 0 "R17" V 4300 1900 50  0000 C CNN
F 1 "10k" V 4100 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4240 1890 50  0001 C CNN
F 3 "~" H 4200 1900 50  0001 C CNN
	1    4200 1900
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 5E535E92
P 4200 1750
F 0 "#PWR018" H 4200 1600 50  0001 C CNN
F 1 "+3.3V" H 4215 1923 50  0000 C CNN
F 2 "" H 4200 1750 50  0001 C CNN
F 3 "" H 4200 1750 50  0001 C CNN
	1    4200 1750
	1    0    0    -1  
$EndComp
NoConn ~ 4700 2850
Text Label 5550 1200 0    39   ~ 0
RESET
Text Label 8100 2500 2    50   ~ 0
RESET
Wire Notes Line
	500  3850 3200 3850
Wire Notes Line
	3200 4300 5900 4300
Text Notes 4300 650  0    79   ~ 16
Watchdog
$Comp
L power:+3.3V #PWR017
U 1 1 5E549CDD
P 4500 1300
F 0 "#PWR017" H 4500 1150 50  0001 C CNN
F 1 "+3.3V" H 4515 1473 50  0000 C CNN
F 2 "" H 4500 1300 50  0001 C CNN
F 3 "" H 4500 1300 50  0001 C CNN
	1    4500 1300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR016
U 1 1 5E549E5C
P 3500 1300
F 0 "#PWR016" H 3500 1050 50  0001 C CNN
F 1 "Earth" H 3500 1150 50  0001 C CNN
F 2 "" H 3500 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	1    0    0    -1  
$EndComp
Text Label 3700 2850 2    50   ~ 0
RCONTROL
Text Label 8600 2300 0    50   ~ 0
RCONTROL
Wire Notes Line
	5900 500  5900 7750
$Comp
L Switch:SW_DIP_x01 SW4
U 1 1 5E5804A5
P 5250 1200
F 0 "SW4" H 5250 1467 50  0000 C CNN
F 1 "SW_DIP_x01" H 5250 1376 50  0000 C CNN
F 2 "Controle:DIPSwitchSMD_1pos" H 5250 1200 50  0001 C CNN
F 3 "" H 5250 1200 50  0001 C CNN
	1    5250 1200
	1    0    0    -1  
$EndComp
Text Label 5700 2550 0    39   ~ 0
enable
Text Label 4950 1200 2    39   ~ 0
enable
$Comp
L Device:LED D7
U 1 1 5E599D41
P 5700 2000
F 0 "D7" H 5700 2200 50  0000 C CNN
F 1 "LED" H 5700 2100 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5700 2000 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R25
U 1 1 5E59A9B5
P 5700 1700
F 0 "R25" H 5768 1746 50  0000 L CNN
F 1 "180" H 5768 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5740 1690 50  0001 C CNN
F 3 "~" H 5700 1700 50  0001 C CNN
	1    5700 1700
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5E59F067
P 5700 1550
F 0 "#PWR0114" H 5700 1400 50  0001 C CNN
F 1 "+3.3V" H 5715 1723 50  0000 C CNN
F 2 "" H 5700 1550 50  0001 C CNN
F 3 "" H 5700 1550 50  0001 C CNN
	1    5700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2150 4700 2150
Wire Wire Line
	4200 2050 4200 2150
Wire Wire Line
	4200 2250 4700 2250
Wire Wire Line
	4300 2150 4200 2150
Connection ~ 4200 2150
Wire Wire Line
	4200 2150 4200 2250
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5D482F07
P 600 6850
F 0 "J6" H 600 7000 50  0000 C CNN
F 1 "9Vac" H 850 6900 31  0000 C CNN
F 2 "Controle:Borne KRE" H 600 6850 50  0001 C CNN
F 3 "~" H 600 6850 50  0001 C CNN
	1    600  6850
	1    0    0    -1  
$EndComp
Connection ~ 1600 1450
Connection ~ 700  5200
Connection ~ 1000 5200
$EndSCHEMATC
