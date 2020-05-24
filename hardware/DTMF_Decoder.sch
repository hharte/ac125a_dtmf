EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L ac125a_dtmf:MT8870 U?
U 1 1 5EC4A38B
P 5700 1850
AR Path="/5EBEBADD/5EC4A38B" Ref="U?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC4A38B" Ref="U2"  Part="1" 
F 0 "U2" H 5700 1900 50  0000 C CNN
F 1 "MT8870" H 5700 1800 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 5700 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5700 1850 50  0001 C CNN
	1    5700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5EC4B3C1
P 4600 1450
F 0 "#PWR014" H 4600 1200 50  0001 C CNN
F 1 "GND" H 4605 1277 50  0000 C CNN
F 2 "" H 4600 1450 50  0001 C CNN
F 3 "" H 4600 1450 50  0001 C CNN
	1    4600 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC4DCF6
P 4950 1450
AR Path="/5EC4DCF6" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC4DCF6" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC4DCF6" Ref="R15"  Part="1" 
F 0 "R15" V 4745 1450 50  0000 C CNN
F 1 "10K" V 4836 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4990 1440 50  0001 C CNN
F 3 "~" H 4950 1450 50  0001 C CNN
	1    4950 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 1450 4800 1450
Wire Wire Line
	5100 1450 5300 1450
Wire Wire Line
	4750 1650 4750 1700
$Comp
L Device:R_US R?
U 1 1 5EC4E14A
P 4750 1850
AR Path="/5EC4E14A" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC4E14A" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC4E14A" Ref="R10"  Part="1" 
F 0 "R10" V 4545 1850 50  0000 C CNN
F 1 "47K" V 4636 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4790 1840 50  0001 C CNN
F 3 "~" H 4750 1850 50  0001 C CNN
	1    4750 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC4FBAE
P 4750 2350
AR Path="/5EC4FBAE" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC4FBAE" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC4FBAE" Ref="R11"  Part="1" 
F 0 "R11" V 4545 2350 50  0000 C CNN
F 1 "47K" V 4636 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4790 2340 50  0001 C CNN
F 3 "~" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2100 4750 2000
Wire Wire Line
	4750 2100 4750 2200
Connection ~ 4750 2100
Wire Wire Line
	4750 1650 5300 1650
Wire Wire Line
	4750 2100 5300 2100
Wire Wire Line
	5300 2600 4750 2600
Wire Wire Line
	4750 2600 4750 2500
Wire Wire Line
	5800 3450 5800 3600
Wire Wire Line
	5800 3600 5700 3600
Wire Wire Line
	5600 3600 5600 3450
$Comp
L Device:R_US R?
U 1 1 5EC5676E
P 4300 1650
AR Path="/5EC5676E" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC5676E" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC5676E" Ref="R6"  Part="1" 
F 0 "R6" V 4095 1650 50  0000 C CNN
F 1 "56K" V 4186 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4340 1640 50  0001 C CNN
F 3 "~" H 4300 1650 50  0001 C CNN
	1    4300 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC57220
P 3850 1650
AR Path="/5EC57220" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC57220" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC57220" Ref="R2"  Part="1" 
F 0 "R2" V 3645 1650 50  0000 C CNN
F 1 "56K" V 3736 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3890 1640 50  0001 C CNN
F 3 "~" H 3850 1650 50  0001 C CNN
	1    3850 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC5A124
P 4300 2600
AR Path="/5EC5A124" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC5A124" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC5A124" Ref="R7"  Part="1" 
F 0 "R7" V 4095 2600 50  0000 C CNN
F 1 "56K" V 4186 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4340 2590 50  0001 C CNN
F 3 "~" H 4300 2600 50  0001 C CNN
	1    4300 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC5A12A
P 3850 2600
AR Path="/5EC5A12A" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC5A12A" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC5A12A" Ref="R3"  Part="1" 
F 0 "R3" V 3950 2450 50  0000 C CNN
F 1 "56K" V 3950 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3890 2590 50  0001 C CNN
F 3 "~" H 3850 2600 50  0001 C CNN
	1    3850 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1650 4100 1650
Wire Wire Line
	4450 1650 4750 1650
Connection ~ 4750 1650
Wire Wire Line
	4450 2600 4750 2600
Connection ~ 4750 2600
Wire Wire Line
	4000 2600 4100 2600
$Comp
L Device:D_Zener D1
U 1 1 5EC5AAEA
P 4100 1900
F 0 "D1" V 4150 2150 50  0000 R CNN
F 1 "1N4734A" V 4050 2300 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 4100 1900 50  0001 C CNN
F 3 "~" H 4100 1900 50  0001 C CNN
	1    4100 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5EC5CF26
P 4100 2350
F 0 "D2" V 4050 2100 50  0000 L CNN
F 1 "1N4734A" V 4150 1950 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 4100 2350 50  0001 C CNN
F 3 "~" H 4100 2350 50  0001 C CNN
	1    4100 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2500 4100 2600
Connection ~ 4100 2600
Wire Wire Line
	4100 2600 4150 2600
Wire Wire Line
	4100 2200 4100 2050
Wire Wire Line
	4100 1750 4100 1650
Connection ~ 4100 1650
Wire Wire Line
	4100 1650 4150 1650
$Comp
L Device:C C6
U 1 1 5EC5EC50
P 3300 1650
F 0 "C6" V 3048 1650 50  0000 C CNN
F 1 "0.1uF/250V" V 3139 1650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 3338 1500 50  0001 C CNN
F 3 "~" H 3300 1650 50  0001 C CNN
	1    3300 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5EC609B4
P 3300 2600
F 0 "C7" V 3048 2600 50  0000 C CNN
F 1 "0.1uF/250V" V 3139 2600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 3338 2450 50  0001 C CNN
F 3 "~" H 3300 2600 50  0001 C CNN
	1    3300 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 2600 3700 2600
Wire Wire Line
	3450 1650 3700 1650
Wire Wire Line
	3150 1650 2850 1650
Wire Wire Line
	2850 2600 3150 2600
$Comp
L Device:C C11
U 1 1 5EC61EF4
P 6250 1250
F 0 "C11" H 6135 1204 50  0000 R CNN
F 1 "0.1uF" H 6135 1295 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6288 1100 50  0001 C CNN
F 3 "~" H 6250 1250 50  0001 C CNN
	1    6250 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 3700 5700 3600
Connection ~ 5700 3600
Wire Wire Line
	5700 3600 5600 3600
$Comp
L Device:R_US R?
U 1 1 5EC63C99
P 6250 1850
AR Path="/5EC63C99" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC63C99" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC63C99" Ref="R16"  Part="1" 
F 0 "R16" V 6045 1850 50  0000 C CNN
F 1 "330K" V 6136 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6290 1840 50  0001 C CNN
F 3 "~" H 6250 1850 50  0001 C CNN
	1    6250 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC64AF9
P 6750 1850
AR Path="/5EC64AF9" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC64AF9" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC64AF9" Ref="R18"  Part="1" 
F 0 "R18" V 6545 1850 50  0000 C CNN
F 1 "100K" V 6636 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6790 1840 50  0001 C CNN
F 3 "~" H 6750 1850 50  0001 C CNN
	1    6750 1850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5EC65352
P 6500 1550
F 0 "D5" H 6500 1650 50  0000 C CNN
F 1 "1N4148" H 6500 1450 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6500 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6500 1550 50  0001 C CNN
	1    6500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2100 6250 2100
Wire Wire Line
	6750 2100 6750 2000
Wire Wire Line
	6250 2000 6250 2100
Connection ~ 6250 2100
Wire Wire Line
	6250 2100 6750 2100
Wire Wire Line
	6250 1700 6250 1550
Wire Wire Line
	6100 1550 6250 1550
Connection ~ 6250 1550
Wire Wire Line
	6250 1550 6250 1400
Wire Wire Line
	6350 1550 6250 1550
Wire Wire Line
	6650 1550 6750 1550
Wire Wire Line
	6750 1550 6750 1700
Wire Wire Line
	6250 1100 6250 900 
Wire Wire Line
	6250 900  5650 900 
Wire Wire Line
	5650 900  5650 1050
Text HLabel 2850 1650 0    50   Input ~ 0
AC125A_T1
Text HLabel 2850 2600 0    50   Input ~ 0
AC125A_R1
Wire Wire Line
	5300 1250 5200 1250
Wire Wire Line
	5200 1250 5200 900 
Wire Wire Line
	5200 900  5650 900 
Connection ~ 5650 900 
Wire Wire Line
	6100 2650 7200 2650
Text HLabel 7200 2650 2    50   Output ~ 0
DTMF1_Q3
Wire Wire Line
	6100 2750 7200 2750
Text HLabel 7200 2750 2    50   Output ~ 0
DTMF1_Q2
Text HLabel 7200 2850 2    50   Output ~ 0
DTMF1_Q1
Wire Wire Line
	6100 2950 7200 2950
Text HLabel 7200 2950 2    50   Output ~ 0
DTMF1_Q0
Wire Wire Line
	6100 2550 7200 2550
Text HLabel 7200 2550 2    50   Output ~ 0
DTMF1_StD
$Comp
L power:+5V #PWR?
U 1 1 5EC741F5
P 1200 6600
AR Path="/5EC741F5" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC741F5" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC741F5" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 1200 6450 50  0001 C CNN
F 1 "+5V" H 1215 6773 50  0000 C CNN
F 2 "" H 1200 6600 50  0001 C CNN
F 3 "" H 1200 6600 50  0001 C CNN
	1    1200 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EC741FB
P 1200 6900
AR Path="/5EC741FB" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5EC741FB" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC741FB" Ref="C13"  Part="1" 
F 0 "C13" H 1315 6946 50  0000 L CNN
F 1 "0.1uF" H 1315 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1238 6750 50  0001 C CNN
F 3 "~" H 1200 6900 50  0001 C CNN
	1    1200 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC74201
P 1200 7200
AR Path="/5EC74201" Ref="#PWR?"  Part="1" 
AR Path="/5BA49F1B/5EC74201" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC74201" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC74201" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 1200 6950 50  0001 C CNN
F 1 "GND" H 1205 7027 50  0000 C CNN
F 2 "" H 1200 7200 50  0001 C CNN
F 3 "" H 1200 7200 50  0001 C CNN
	1    1200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6750 1200 6600
Wire Wire Line
	1200 7050 1200 7200
$Comp
L power:+5V #PWR?
U 1 1 5EC75C1F
P 1650 6600
AR Path="/5EC75C1F" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC75C1F" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC75C1F" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 1650 6450 50  0001 C CNN
F 1 "+5V" H 1665 6773 50  0000 C CNN
F 2 "" H 1650 6600 50  0001 C CNN
F 3 "" H 1650 6600 50  0001 C CNN
	1    1650 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EC75C25
P 1650 6900
AR Path="/5EC75C25" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5EC75C25" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC75C25" Ref="C14"  Part="1" 
F 0 "C14" H 1765 6946 50  0000 L CNN
F 1 "0.1uF" H 1765 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1688 6750 50  0001 C CNN
F 3 "~" H 1650 6900 50  0001 C CNN
	1    1650 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC75C2B
P 1650 7200
AR Path="/5EC75C2B" Ref="#PWR?"  Part="1" 
AR Path="/5BA49F1B/5EC75C2B" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC75C2B" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC75C2B" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1650 6950 50  0001 C CNN
F 1 "GND" H 1655 7027 50  0000 C CNN
F 2 "" H 1650 7200 50  0001 C CNN
F 3 "" H 1650 7200 50  0001 C CNN
	1    1650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6750 1650 6600
Wire Wire Line
	1650 7050 1650 7200
$Comp
L power:GND #PWR?
U 1 1 5EC76691
P 5700 3700
AR Path="/5EC76691" Ref="#PWR?"  Part="1" 
AR Path="/5BA49F1B/5EC76691" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC76691" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC76691" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5700 3450 50  0001 C CNN
F 1 "GND" H 5705 3527 50  0000 C CNN
F 2 "" H 5700 3700 50  0001 C CNN
F 3 "" H 5700 3700 50  0001 C CNN
	1    5700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EC76E82
P 5650 800
AR Path="/5EC76E82" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC76E82" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC76E82" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5650 650 50  0001 C CNN
F 1 "+5V" H 5665 973 50  0000 C CNN
F 2 "" H 5650 800 50  0001 C CNN
F 3 "" H 5650 800 50  0001 C CNN
	1    5650 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 900  5650 800 
$Comp
L ac125a_dtmf:MT8870 U?
U 1 1 5EC88F27
P 5700 5300
AR Path="/5EBEBADD/5EC88F27" Ref="U?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F27" Ref="U3"  Part="1" 
F 0 "U3" H 5650 5300 50  0000 C CNN
F 1 "MT8870" H 5700 5200 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 5700 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5700 5300 50  0001 C CNN
	1    5700 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5EC88F2D
P 4600 4900
F 0 "#PWR015" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4605 4727 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5100 4750 5150
$Comp
L Device:R_US R?
U 1 1 5EC88F3C
P 4750 5300
AR Path="/5EC88F3C" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F3C" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F3C" Ref="R12"  Part="1" 
F 0 "R12" V 4545 5300 50  0000 C CNN
F 1 "47K" V 4636 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4790 5290 50  0001 C CNN
F 3 "~" H 4750 5300 50  0001 C CNN
	1    4750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC88F42
P 4750 5800
AR Path="/5EC88F42" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F42" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F42" Ref="R13"  Part="1" 
F 0 "R13" V 4545 5800 50  0000 C CNN
F 1 "47K" V 4636 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4790 5790 50  0001 C CNN
F 3 "~" H 4750 5800 50  0001 C CNN
	1    4750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5550 4750 5450
Wire Wire Line
	4750 5550 4750 5650
Connection ~ 4750 5550
Wire Wire Line
	4750 5100 5300 5100
Wire Wire Line
	4750 5550 5300 5550
Wire Wire Line
	5300 6050 4750 6050
Wire Wire Line
	4750 6050 4750 5950
Wire Wire Line
	5800 6900 5800 7050
Wire Wire Line
	5800 7050 5700 7050
Wire Wire Line
	5600 7050 5600 6900
$Comp
L Device:R_US R?
U 1 1 5EC88F52
P 4300 5100
AR Path="/5EC88F52" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F52" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F52" Ref="R8"  Part="1" 
F 0 "R8" V 4095 5100 50  0000 C CNN
F 1 "56K" V 4186 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4340 5090 50  0001 C CNN
F 3 "~" H 4300 5100 50  0001 C CNN
	1    4300 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC88F58
P 3850 5100
AR Path="/5EC88F58" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F58" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F58" Ref="R4"  Part="1" 
F 0 "R4" V 3645 5100 50  0000 C CNN
F 1 "56K" V 3736 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3890 5090 50  0001 C CNN
F 3 "~" H 3850 5100 50  0001 C CNN
	1    3850 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC88F5E
P 4300 6050
AR Path="/5EC88F5E" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F5E" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F5E" Ref="R9"  Part="1" 
F 0 "R9" V 4095 6050 50  0000 C CNN
F 1 "56K" V 4186 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4340 6040 50  0001 C CNN
F 3 "~" H 4300 6050 50  0001 C CNN
	1    4300 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC88F64
P 3850 6050
AR Path="/5EC88F64" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F64" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F64" Ref="R5"  Part="1" 
F 0 "R5" V 3950 5900 50  0000 C CNN
F 1 "56K" V 3950 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3890 6040 50  0001 C CNN
F 3 "~" H 3850 6050 50  0001 C CNN
	1    3850 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 5100 4100 5100
Wire Wire Line
	4450 5100 4750 5100
Connection ~ 4750 5100
Wire Wire Line
	4450 6050 4750 6050
Connection ~ 4750 6050
Wire Wire Line
	4000 6050 4100 6050
$Comp
L Device:D_Zener D3
U 1 1 5EC88F70
P 4100 5350
F 0 "D3" V 4150 5600 50  0000 R CNN
F 1 "1N4734A" V 4050 5750 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 4100 5350 50  0001 C CNN
F 3 "~" H 4100 5350 50  0001 C CNN
	1    4100 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener D4
U 1 1 5EC88F76
P 4100 5800
F 0 "D4" V 4050 5550 50  0000 L CNN
F 1 "1N4734A" V 4150 5400 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 4100 5800 50  0001 C CNN
F 3 "~" H 4100 5800 50  0001 C CNN
	1    4100 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 5950 4100 6050
Connection ~ 4100 6050
Wire Wire Line
	4100 6050 4150 6050
Wire Wire Line
	4100 5650 4100 5500
Wire Wire Line
	4100 5200 4100 5100
Connection ~ 4100 5100
Wire Wire Line
	4100 5100 4150 5100
$Comp
L Device:C C8
U 1 1 5EC88F83
P 3300 5100
F 0 "C8" V 3048 5100 50  0000 C CNN
F 1 "0.1uF/250V" V 3139 5100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 3338 4950 50  0001 C CNN
F 3 "~" H 3300 5100 50  0001 C CNN
	1    3300 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5EC88F89
P 3300 6050
F 0 "C9" V 3048 6050 50  0000 C CNN
F 1 "0.1uF/250V" V 3139 6050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 3338 5900 50  0001 C CNN
F 3 "~" H 3300 6050 50  0001 C CNN
	1    3300 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 6050 3700 6050
Wire Wire Line
	3450 5100 3700 5100
Wire Wire Line
	3150 5100 2850 5100
Wire Wire Line
	2850 6050 3150 6050
$Comp
L Device:C C12
U 1 1 5EC88F93
P 6250 4700
F 0 "C12" H 6135 4654 50  0000 R CNN
F 1 "0.1uF" H 6135 4745 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6288 4550 50  0001 C CNN
F 3 "~" H 6250 4700 50  0001 C CNN
	1    6250 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 7150 5700 7050
Connection ~ 5700 7050
Wire Wire Line
	5700 7050 5600 7050
$Comp
L Device:R_US R?
U 1 1 5EC88F9C
P 6250 5300
AR Path="/5EC88F9C" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F9C" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F9C" Ref="R17"  Part="1" 
F 0 "R17" V 6045 5300 50  0000 C CNN
F 1 "330K" V 6136 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6290 5290 50  0001 C CNN
F 3 "~" H 6250 5300 50  0001 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EC88FA2
P 6750 5300
AR Path="/5EC88FA2" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88FA2" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88FA2" Ref="R19"  Part="1" 
F 0 "R19" V 6545 5300 50  0000 C CNN
F 1 "100K" V 6636 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6790 5290 50  0001 C CNN
F 3 "~" H 6750 5300 50  0001 C CNN
	1    6750 5300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 5EC88FA8
P 6500 5000
F 0 "D6" H 6500 5100 50  0000 C CNN
F 1 "1N4148" H 6500 4900 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6500 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5550 6250 5550
Wire Wire Line
	6750 5550 6750 5450
Wire Wire Line
	6250 5450 6250 5550
Connection ~ 6250 5550
Wire Wire Line
	6250 5550 6750 5550
Wire Wire Line
	6250 5150 6250 5000
Wire Wire Line
	6100 5000 6250 5000
Connection ~ 6250 5000
Wire Wire Line
	6250 5000 6250 4850
Wire Wire Line
	6350 5000 6250 5000
Wire Wire Line
	6650 5000 6750 5000
Wire Wire Line
	6750 5000 6750 5150
Wire Wire Line
	6250 4550 6250 4350
Wire Wire Line
	6250 4350 5650 4350
Wire Wire Line
	5650 4350 5650 4500
Text HLabel 2850 5100 0    50   Input ~ 0
AC125A_T0
Text HLabel 2850 6050 0    50   Input ~ 0
AC125A_R0
Wire Wire Line
	5300 4700 5200 4700
Wire Wire Line
	5200 4700 5200 4350
Wire Wire Line
	5200 4350 5650 4350
Connection ~ 5650 4350
Wire Wire Line
	6100 6100 7200 6100
Text HLabel 7200 6100 2    50   Output ~ 0
DTMF0_Q3
Wire Wire Line
	6100 6200 7200 6200
Text HLabel 7200 6200 2    50   Output ~ 0
DTMF0_Q2
Wire Wire Line
	6100 6300 7200 6300
Text HLabel 7200 6300 2    50   Output ~ 0
DTMF0_Q1
Wire Wire Line
	6100 6400 7200 6400
Text HLabel 7200 6400 2    50   Output ~ 0
DTMF0_Q0
Wire Wire Line
	6100 6000 7200 6000
Text HLabel 7200 6000 2    50   Output ~ 0
DTMF0_StD
$Comp
L power:GND #PWR?
U 1 1 5EC88FD2
P 5700 7150
AR Path="/5EC88FD2" Ref="#PWR?"  Part="1" 
AR Path="/5BA49F1B/5EC88FD2" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC88FD2" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88FD2" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5700 6900 50  0001 C CNN
F 1 "GND" H 5705 6977 50  0000 C CNN
F 2 "" H 5700 7150 50  0001 C CNN
F 3 "" H 5700 7150 50  0001 C CNN
	1    5700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EC88FD8
P 5650 4250
AR Path="/5EC88FD8" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC88FD8" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88FD8" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5650 4100 50  0001 C CNN
F 1 "+5V" H 5665 4423 50  0000 C CNN
F 2 "" H 5650 4250 50  0001 C CNN
F 3 "" H 5650 4250 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4350 5650 4250
Wire Wire Line
	5050 2700 5300 2700
$Comp
L Device:Crystal Y1
U 1 1 5EE407E0
P 5050 2850
F 0 "Y1" V 5000 2450 50  0000 L CNN
F 1 "3.579545MHZ" V 5100 2200 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 5050 2850 50  0001 C CNN
F 3 "~" H 5050 2850 50  0001 C CNN
	1    5050 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3000 5050 3050
Wire Wire Line
	5050 3050 5300 3050
$Comp
L Device:C C?
U 1 1 5EE55CC6
P 5050 3450
AR Path="/5EE55CC6" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5EE55CC6" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EE55CC6" Ref="C10"  Part="1" 
F 0 "C10" H 5165 3496 50  0000 L CNN
F 1 "30pF" H 5165 3405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5088 3300 50  0001 C CNN
F 3 "~" H 5050 3450 50  0001 C CNN
	1    5050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3050 5050 3300
Connection ~ 5050 3050
Wire Wire Line
	5050 3600 5050 6500
Wire Wire Line
	5050 6500 5300 6500
Wire Wire Line
	4600 4900 4650 4900
Wire Wire Line
	4950 4900 5300 4900
$Comp
L Device:R_US R?
U 1 1 5EC88F33
P 4800 4900
AR Path="/5EC88F33" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC88F33" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5EC472FB/5EC88F33" Ref="R14"  Part="1" 
F 0 "R14" V 4595 4900 50  0000 C CNN
F 1 "10K" V 4686 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4840 4890 50  0001 C CNN
F 3 "~" H 4800 4900 50  0001 C CNN
	1    4800 4900
	0    1    1    0   
$EndComp
NoConn ~ 5300 6150
Wire Wire Line
	6100 2850 7200 2850
Text Notes 7450 7500 0    50   ~ 0
OKI AC125A DTMF Converter - Telco Interface and DTMF Converters
Text Notes 8150 7650 0    50   ~ 0
2020-05-17
Text Notes 10550 7650 0    50   ~ 0
1
Text Notes 7100 6850 0    100  Italic 20
OKI AC125A Crossbar PBX DTMF Converter
Text Notes 7150 7000 0    50   ~ 0
(c) 2020, Howard M. Harte - WZ2Q
$EndSCHEMATC