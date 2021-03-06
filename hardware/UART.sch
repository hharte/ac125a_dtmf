EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Connector:DB9_Female_MountingHoles J?
U 1 1 5ED12B5D
P 7450 3700
AR Path="/5EBEBADD/5ED12B5D" Ref="J?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED12B5D" Ref="J4"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED12B5D" Ref="J4"  Part="1" 
F 0 "J4" H 7630 3702 50  0000 L CNN
F 1 "DB9_Female_MountingHoles" H 7630 3611 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 7450 3700 50  0001 C CNN
F 3 " ~" H 7450 3700 50  0001 C CNN
	1    7450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED12B6B
P 4800 4700
AR Path="/5ED12B6B" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED12B6B" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED12B6B" Ref="#PWR0111"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED12B6B" Ref="#PWR027"  Part="1" 
F 0 "#PWR0111" H 4800 4450 50  0001 C CNN
F 1 "GND" H 4805 4527 50  0000 C CNN
F 2 "" H 4800 4700 50  0001 C CNN
F 3 "" H 4800 4700 50  0001 C CNN
	1    4800 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5ED12B71
P 4800 1900
AR Path="/5BAA648F/5ED12B71" Ref="#PWR?"  Part="1" 
AR Path="/5BA4B80D/5ED12B71" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED12B71" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED12B71" Ref="#PWR0112"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED12B71" Ref="#PWR026"  Part="1" 
F 0 "#PWR0112" H 4800 1750 50  0001 C CNN
F 1 "+5V" H 4815 2073 50  0000 C CNN
F 2 "" H 4800 1900 50  0001 C CNN
F 3 "" H 4800 1900 50  0001 C CNN
	1    4800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1900 4800 2150
Wire Wire Line
	4800 4600 4800 4650
$Comp
L Interface_UART:MAX202 U?
U 1 1 5ED12B65
P 4800 3400
AR Path="/5EBEBADD/5ED12B65" Ref="U?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED12B65" Ref="U14"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED12B65" Ref="U5"  Part="1" 
F 0 "U14" H 4400 4600 50  0000 C CNN
F 1 "MAX202" H 4400 4500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4850 2350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max202.pdf" H 4800 3500 50  0001 C CNN
	1    4800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3500 2700 3500
Text HLabel 2700 3500 0    50   Input ~ 0
UART_TX
Text HLabel 2700 3900 0    50   Output ~ 0
UART_RX
Wire Wire Line
	2700 3900 4000 3900
Wire Wire Line
	7150 4100 7050 4100
$Comp
L power:+5V #PWR?
U 1 1 5ED59E91
P 1450 6450
AR Path="/5ED59E91" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED59E91" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED59E91" Ref="#PWR0113"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED59E91" Ref="#PWR024"  Part="1" 
F 0 "#PWR0113" H 1450 6300 50  0001 C CNN
F 1 "+5V" H 1465 6623 50  0000 C CNN
F 2 "" H 1450 6450 50  0001 C CNN
F 3 "" H 1450 6450 50  0001 C CNN
	1    1450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ED59E97
P 1450 6750
AR Path="/5ED59E97" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED59E97" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED59E97" Ref="C21"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED59E97" Ref="C8"  Part="1" 
F 0 "C21" H 1565 6796 50  0000 L CNN
F 1 "0.1uF" H 1565 6705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1488 6600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104Z15Y5VE5TL2/BC1148CT-ND/286770" H 1450 6750 50  0001 C CNN
	1    1450 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED59E9D
P 1450 7050
AR Path="/5ED59E9D" Ref="#PWR?"  Part="1" 
AR Path="/5BA49F1B/5ED59E9D" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED59E9D" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED59E9D" Ref="#PWR0116"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED59E9D" Ref="#PWR025"  Part="1" 
F 0 "#PWR0116" H 1450 6800 50  0001 C CNN
F 1 "GND" H 1455 6877 50  0000 C CNN
F 2 "" H 1450 7050 50  0001 C CNN
F 3 "" H 1450 7050 50  0001 C CNN
	1    1450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6600 1450 6450
Wire Wire Line
	1450 6900 1450 7050
$Comp
L Device:C C?
U 1 1 5ED59ECC
P 5900 2650
AR Path="/5ED59ECC" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED59ECC" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED59ECC" Ref="C23"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED59ECC" Ref="C10"  Part="1" 
F 0 "C23" H 6015 2696 50  0000 L CNN
F 1 "0.1uF" H 6015 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5938 2500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104Z15Y5VE5TL2/BC1148CT-ND/286770" H 5900 2650 50  0001 C CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ED5BBAB
P 3700 2650
AR Path="/5ED5BBAB" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED5BBAB" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED5BBAB" Ref="C22"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED5BBAB" Ref="C9"  Part="1" 
F 0 "C22" H 3815 2696 50  0000 L CNN
F 1 "0.1uF" H 3815 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 3738 2500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104Z15Y5VE5TL2/BC1148CT-ND/286770" H 3700 2650 50  0001 C CNN
	1    3700 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ED61195
P 6400 2650
AR Path="/5ED61195" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED61195" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED61195" Ref="C24"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED61195" Ref="C11"  Part="1" 
F 0 "C24" H 6515 2696 50  0000 L CNN
F 1 "0.1uF" H 6515 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6438 2500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104Z15Y5VE5TL2/BC1148CT-ND/286770" H 6400 2650 50  0001 C CNN
	1    6400 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ED6230C
P 6400 4350
AR Path="/5ED6230C" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED6230C" Ref="C?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED6230C" Ref="C25"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED6230C" Ref="C12"  Part="1" 
F 0 "C25" H 6515 4396 50  0000 L CNN
F 1 "0.1uF" H 6515 4305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6438 4200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104Z15Y5VE5TL2/BC1148CT-ND/286770" H 6400 4350 50  0001 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5900 2800
Wire Wire Line
	5900 2500 5600 2500
Wire Wire Line
	3700 2500 4000 2500
Wire Wire Line
	3700 2800 4000 2800
Wire Wire Line
	4800 2150 6400 2150
Wire Wire Line
	6400 2150 6400 2500
Connection ~ 4800 2150
Wire Wire Line
	4800 2150 4800 2200
Wire Wire Line
	6400 2800 6400 3000
Wire Wire Line
	6400 3000 5600 3000
Wire Wire Line
	5600 3300 6400 3300
Wire Wire Line
	6400 3300 6400 4200
Wire Wire Line
	6400 4500 6400 4650
Wire Wire Line
	6400 4650 4800 4650
Wire Wire Line
	4800 4700 4800 4650
Connection ~ 4800 4650
NoConn ~ 4000 3700
NoConn ~ 4000 4100
NoConn ~ 5600 4100
NoConn ~ 5600 3700
$Comp
L power:GND #PWR?
U 1 1 5ED16B8A
P 7050 4850
AR Path="/5ED16B8A" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED16B8A" Ref="#PWR?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED16B8A" Ref="#PWR0117"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED16B8A" Ref="#PWR028"  Part="1" 
F 0 "#PWR0117" H 7050 4600 50  0001 C CNN
F 1 "GND" H 7055 4677 50  0000 C CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4800 7050 4850
Wire Wire Line
	7050 4100 7050 4800
Connection ~ 7050 4800
Wire Wire Line
	7450 4350 7450 4300
Wire Wire Line
	7950 4350 7450 4350
Wire Wire Line
	7950 4400 7950 4350
Wire Wire Line
	7950 4800 7950 4700
$Comp
L Device:R_US R?
U 1 1 5ED6E34B
P 7950 4550
AR Path="/5BAA648F/5ED6E34B" Ref="R?"  Part="1" 
AR Path="/5BA4B80D/5ED6E34B" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5ED6E34B" Ref="R?"  Part="1" 
AR Path="/5EBEBADD/5ED0989C/5ED6E34B" Ref="R39"  Part="1" 
AR Path="/5ED00E30/5ED0989C/5ED6E34B" Ref="R3"  Part="1" 
F 0 "R39" H 8100 4600 50  0000 C CNN
F 1 "1M" H 8100 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7990 4540 50  0001 C CNN
F 3 "~" H 7950 4550 50  0001 C CNN
	1    7950 4550
	1    0    0    -1  
$EndComp
Connection ~ 7450 4350
Wire Wire Line
	7450 4400 7450 4350
Wire Wire Line
	7450 4800 7950 4800
Wire Wire Line
	7450 4800 7050 4800
Connection ~ 7450 4800
Wire Wire Line
	7450 4700 7450 4800
$Comp
L Device:C C26
U 1 1 5ED6B25F
P 7450 4550
F 0 "C26" H 7565 4596 50  0000 L CNN
F 1 "4700pF" H 7565 4505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7488 4400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C317C472K1R5TA7301/399-13937-1-ND/6562530" H 7450 4550 50  0001 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3500 7150 3500
Wire Wire Line
	5600 3900 6800 3900
Wire Wire Line
	6800 3900 6800 3700
Wire Wire Line
	6800 3700 7150 3700
NoConn ~ 7150 4000
NoConn ~ 7150 3900
NoConn ~ 7150 3800
NoConn ~ 7150 3600
NoConn ~ 7150 3400
NoConn ~ 7150 3300
Text Notes 7500 7500 0    50   ~ 0
OKI AC125A DTMF Converter - UART
Text Notes 10600 7650 0    50   ~ 0
1
Text Notes 8250 7650 0    50   ~ 0
2020-05-17
Text Notes 7100 6800 0    100  Italic 20
OKI AC125A Crossbar PBX DTMF Converter
Text Notes 7100 7050 0    50   ~ 10
(c) 2020, Howard M. Harte - WZ2Q\nhttps://github.com/hharte/ac125a_dtmf
$EndSCHEMATC
