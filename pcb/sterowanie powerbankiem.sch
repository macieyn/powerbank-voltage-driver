EESchema Schematic File Version 4
LIBS:sterowanie powerbankiem-cache
EELAYER 29 0
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
L power:+12V #PWR0101
U 1 1 5F435ADB
P 1300 1350
F 0 "#PWR0101" H 1300 1200 50  0001 C CNN
F 1 "+12V" H 1315 1523 50  0000 C CNN
F 2 "" H 1300 1350 50  0001 C CNN
F 3 "" H 1300 1350 50  0001 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F437164
P 2250 1900
F 0 "C2" H 2365 1946 50  0000 L CNN
F 1 "C" H 2365 1855 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:C_0805" H 2288 1750 50  0001 C CNN
F 3 "~" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F437258
P 1300 1900
F 0 "C1" H 1415 1946 50  0000 L CNN
F 1 "C" H 1415 1855 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:C_0805" H 1338 1750 50  0001 C CNN
F 3 "~" H 1300 1900 50  0001 C CNN
	1    1300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F4399D0
P 1650 3950
F 0 "R3" H 1580 3904 50  0000 R CNN
F 1 "2.7K" H 1580 3995 50  0000 R CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 1580 3950 50  0001 C CNN
F 3 "~" H 1650 3950 50  0001 C CNN
	1    1650 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5F43AF85
P 1650 3450
F 0 "R2" H 1720 3496 50  0000 L CNN
F 1 "2.7K" H 1720 3405 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 1580 3450 50  0001 C CNN
F 3 "~" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J1
U 1 1 5F43BF15
P 5900 3500
F 0 "J1" H 5670 3397 50  0000 R CNN
F 1 "USB_A" H 5670 3488 50  0000 R CNN
F 2 "EKOLED-Złącza i przełączniki:USB_A_HORIZONTAL_SMD" H 6050 3450 50  0001 C CNN
F 3 " ~" H 6050 3450 50  0001 C CNN
	1    5900 3500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5F44034D
P 5100 3300
F 0 "J2" H 5072 3232 50  0000 R CNN
F 1 "PAD_12V" H 5072 3323 50  0000 R CNN
F 2 "EKOLED-Pady:SMDPAD_2,54x5,08" H 5100 3300 50  0001 C CNN
F 3 "~" H 5100 3300 50  0001 C CNN
	1    5100 3300
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5F4417B8
P 5100 4000
F 0 "J3" H 5072 3932 50  0000 R CNN
F 1 "PAD_GND" H 5072 4023 50  0000 R CNN
F 2 "EKOLED-Pady:SMDPAD_2,54x5,08" H 5100 4000 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5F4460DB
P 3050 1600
F 0 "D1" V 3089 1483 50  0000 R CNN
F 1 "LED" V 2998 1483 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 3050 1600 50  0001 C CNN
F 3 "~" H 3050 1600 50  0001 C CNN
	1    3050 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F4489E1
P 3050 2050
F 0 "R5" H 3120 2096 50  0000 L CNN
F 1 "1K" H 3120 2005 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:R_0805" V 2980 2050 50  0001 C CNN
F 3 "~" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F448F56
P 8350 1550
F 0 "D3" H 8343 1295 50  0000 C CNN
F 1 "LED" H 8343 1386 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8350 1550 50  0001 C CNN
F 3 "~" H 8350 1550 50  0001 C CNN
	1    8350 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R 1K1
U 1 1 5F44C9F3
P 8350 1950
F 0 "1K1" V 8143 1950 50  0000 C CNN
F 1 "R" V 8234 1950 50  0000 C CNN
F 2 "EKOLED-Elementy pasywne:R_0805" V 8280 1950 50  0001 C CNN
F 3 "~" H 8350 1950 50  0001 C CNN
	1    8350 1950
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5F44F38C
P 7350 1500
F 0 "SW1" H 7350 1767 50  0000 C CNN
F 1 "SW_DIP_x01" H 7350 1676 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 7350 1500 50  0001 C CNN
F 3 "~" H 7350 1500 50  0001 C CNN
	1    7350 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F453455
P 1800 2350
F 0 "#PWR0103" H 1800 2100 50  0001 C CNN
F 1 "GND" H 1805 2177 50  0000 C CNN
F 2 "" H 1800 2350 50  0001 C CNN
F 3 "" H 1800 2350 50  0001 C CNN
	1    1800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1750 1300 1550
Wire Wire Line
	1300 2250 1800 2250
Wire Wire Line
	1300 2250 1300 2050
Wire Wire Line
	2250 2250 2250 2050
Wire Wire Line
	1800 1850 1800 2250
Connection ~ 1800 2250
Wire Wire Line
	1800 2250 2250 2250
Wire Wire Line
	1800 2250 1800 2350
Wire Wire Line
	3050 1900 3050 1750
$Comp
L power:GND #PWR0104
U 1 1 5F457198
P 4550 2350
F 0 "#PWR0104" H 4550 2100 50  0001 C CNN
F 1 "GND" H 4555 2177 50  0000 C CNN
F 2 "" H 4550 2350 50  0001 C CNN
F 3 "" H 4550 2350 50  0001 C CNN
	1    4550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2150 4550 2350
Wire Wire Line
	4550 1650 4550 1550
Wire Wire Line
	5900 3900 5900 4000
Wire Wire Line
	5900 4000 5500 4000
Wire Wire Line
	5600 3300 5500 3300
Connection ~ 5500 3300
$Comp
L power:+3.3V #PWR0105
U 1 1 5F462CB1
P 2250 1350
F 0 "#PWR0105" H 2250 1200 50  0001 C CNN
F 1 "+3.3V" H 2265 1523 50  0000 C CNN
F 2 "" H 2250 1350 50  0001 C CNN
F 3 "" H 2250 1350 50  0001 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L33_SO8 U1
U 1 1 5F463722
P 1800 1550
F 0 "U1" H 1800 1792 50  0000 C CNN
F 1 "L78L33_SO8" H 1800 1701 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1900 1750 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 2000 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F46E1AA
P 1650 4200
F 0 "#PWR0106" H 1650 3950 50  0001 C CNN
F 1 "GND" H 1655 4027 50  0000 C CNN
F 2 "" H 1650 4200 50  0001 C CNN
F 3 "" H 1650 4200 50  0001 C CNN
	1    1650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4100 1650 4200
Wire Wire Line
	6050 1750 6250 1750
Wire Wire Line
	6050 1850 6450 1850
Wire Wire Line
	6050 1950 6250 1950
Wire Wire Line
	6050 2050 6450 2050
Wire Wire Line
	6050 2250 6250 2250
$Comp
L power:+12V #PWR0110
U 1 1 5F485B5A
P 5500 3200
F 0 "#PWR0110" H 5500 3050 50  0001 C CNN
F 1 "+12V" H 5515 3373 50  0000 C CNN
F 2 "" H 5500 3200 50  0001 C CNN
F 3 "" H 5500 3200 50  0001 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F48603C
P 5500 4100
F 0 "#PWR0111" H 5500 3850 50  0001 C CNN
F 1 "GND" H 5505 3927 50  0000 C CNN
F 2 "" H 5500 4100 50  0001 C CNN
F 3 "" H 5500 4100 50  0001 C CNN
	1    5500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3200 5500 3300
Wire Wire Line
	5500 4100 5500 4000
Wire Wire Line
	5600 3600 5400 3600
Wire Wire Line
	5600 3500 5400 3500
Wire Wire Line
	5400 3500 5400 3450
Wire Wire Line
	5400 3450 5250 3450
Wire Wire Line
	5400 3600 5400 3650
Wire Wire Line
	5400 3650 5250 3650
Text GLabel 5250 3450 0    50   Input ~ 0
D+
Text GLabel 5250 3650 0    50   Input ~ 0
D-
Wire Wire Line
	8350 1700 8350 1800
Wire Wire Line
	7350 1200 7350 1100
Wire Wire Line
	7350 2150 7350 2250
Wire Wire Line
	8350 1400 8350 1250
$Comp
L power:GND #PWR0112
U 1 1 5F4A2504
P 8350 2400
F 0 "#PWR0112" H 8350 2150 50  0001 C CNN
F 1 "GND" H 8355 2227 50  0000 C CNN
F 2 "" H 8350 2400 50  0001 C CNN
F 3 "" H 8350 2400 50  0001 C CNN
	1    8350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5F4B413A
P 4550 1550
F 0 "#PWR0113" H 4550 1400 50  0001 C CNN
F 1 "+3.3V" H 4565 1723 50  0000 C CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F4CCB77
P 7750 2000
F 0 "C3" H 7865 2046 50  0000 L CNN
F 1 "1uF" H 7865 1955 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:C_0805" H 7788 1850 50  0001 C CNN
F 3 "~" H 7750 2000 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1850 7750 1100
Wire Wire Line
	7750 1100 7350 1100
Connection ~ 7350 1100
Wire Wire Line
	7350 1100 7250 1100
Wire Wire Line
	7750 2250 7550 2250
$Comp
L sterowanie-powerbankiem-rescue:STM32G030J6-EKO-SYMBOLE U2
U 1 1 5F46967E
P 5400 1900
F 0 "U2" H 5350 2475 50  0000 C CNN
F 1 "STM32G030J6" H 5350 2384 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1650 4550 1650
Wire Wire Line
	4650 2150 4550 2150
$Comp
L Device:R R4
U 1 1 5F475354
P 3600 1850
F 0 "R4" H 3670 1896 50  0000 L CNN
F 1 "150R" H 3670 1805 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 3530 1850 50  0001 C CNN
F 3 "~" H 3600 1850 50  0001 C CNN
	1    3600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3300 5300 3300
Connection ~ 5500 4000
Wire Wire Line
	5500 4000 5300 4000
Wire Wire Line
	1200 3700 1250 3700
Text GLabel 1200 3700 0    50   Input ~ 0
6
$Comp
L Device:R R13
U 1 1 5F47E2A2
P 1400 3700
F 0 "R13" V 1193 3700 50  0000 C CNN
F 1 "4.7K" V 1284 3700 50  0000 C CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 1330 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3200 1250 3200
Text GLabel 1200 3200 0    50   Input ~ 0
5
$Comp
L Device:R R1
U 1 1 5F4B8BCF
P 1400 3200
F 0 "R1" V 1193 3200 50  0000 C CNN
F 1 "1K" V 1284 3200 50  0000 C CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 1330 3200 50  0001 C CNN
F 3 "~" H 1400 3200 50  0001 C CNN
	1    1400 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F4D4C94
P 2850 3950
F 0 "R9" H 2780 3904 50  0000 R CNN
F 1 "2.7K" H 2780 3995 50  0000 R CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 2780 3950 50  0001 C CNN
F 3 "~" H 2850 3950 50  0001 C CNN
	1    2850 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5F4D4C9A
P 2850 3450
F 0 "R8" H 2920 3496 50  0000 L CNN
F 1 "2.7K" H 2920 3405 50  0000 L CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 2780 3450 50  0001 C CNN
F 3 "~" H 2850 3450 50  0001 C CNN
	1    2850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F4D4CA3
P 2850 4200
F 0 "#PWR0108" H 2850 3950 50  0001 C CNN
F 1 "GND" H 2855 4027 50  0000 C CNN
F 2 "" H 2850 4200 50  0001 C CNN
F 3 "" H 2850 4200 50  0001 C CNN
	1    2850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4100 2850 4200
Wire Wire Line
	2400 3700 2450 3700
Text GLabel 2400 3200 0    50   Input ~ 0
8
$Comp
L Device:R R7
U 1 1 5F4D4CBD
P 2600 3700
F 0 "R7" V 2393 3700 50  0000 C CNN
F 1 "4.7K" V 2484 3700 50  0000 C CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 2530 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
	1    2600 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3200 2450 3200
Text GLabel 2400 3700 0    50   Input ~ 0
7
$Comp
L Device:R R6
U 1 1 5F4D4CCD
P 2600 3200
F 0 "R6" V 2393 3200 50  0000 C CNN
F 1 "1K" V 2484 3200 50  0000 C CNN
F 2 "EKOLED-Elementy pasywne:R_1206" V 2530 3200 50  0001 C CNN
F 3 "~" H 2600 3200 50  0001 C CNN
	1    2600 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1550 6250 1550
Text GLabel 6250 1550 2    50   Input ~ 0
1
Text GLabel 6250 1750 2    50   Input ~ 0
4
Text GLabel 6450 1850 2    50   Input ~ 0
5
Text GLabel 6250 1950 2    50   Input ~ 0
6
Text GLabel 6450 2050 2    50   Input ~ 0
7
Text GLabel 6250 2250 2    50   Input ~ 0
8
Text GLabel 8350 1250 1    50   Input ~ 0
1
Text GLabel 7250 1100 0    50   Input ~ 0
4
Text GLabel 2950 3200 2    50   Input ~ 0
D-
Text GLabel 1750 3200 2    50   Input ~ 0
D+
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5F4AEA8E
P 3950 3650
F 0 "J4" H 4030 3642 50  0000 L CNN
F 1 "Conn_01x04" H 4030 3551 50  0000 L CNN
F 2 "EKOLED-Złącza i przełączniki:PinHeader_1x04_P2.54mm" H 3950 3650 50  0001 C CNN
F 3 "~" H 3950 3650 50  0001 C CNN
	1    3950 3650
	1    0    0    -1  
$EndComp
Text GLabel 3750 3650 0    50   Input ~ 0
7
Text GLabel 3750 3750 0    50   Input ~ 0
8
Wire Wire Line
	3750 3850 3550 3850
Wire Wire Line
	3550 3850 3550 3950
Wire Wire Line
	3750 3550 3550 3550
Wire Wire Line
	3550 3550 3550 3450
$Comp
L power:+3.3V #PWR0114
U 1 1 5F4B922A
P 3550 3450
F 0 "#PWR0114" H 3550 3300 50  0001 C CNN
F 1 "+3.3V" H 3565 3623 50  0000 C CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F4B9C39
P 3550 3950
F 0 "#PWR0115" H 3550 3700 50  0001 C CNN
F 1 "GND" H 3555 3777 50  0000 C CNN
F 2 "" H 3550 3950 50  0001 C CNN
F 3 "" H 3550 3950 50  0001 C CNN
	1    3550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1550 1300 1550
Connection ~ 1300 1550
Wire Wire Line
	1300 1550 1300 1350
Wire Wire Line
	2100 1550 2250 1550
Wire Wire Line
	2250 1750 2250 1550
Connection ~ 2250 1550
Wire Wire Line
	2250 1350 2250 1550
Wire Wire Line
	1550 3200 1650 3200
Wire Wire Line
	1650 3300 1650 3200
Connection ~ 1650 3200
Wire Wire Line
	1650 3600 1650 3700
Wire Wire Line
	1550 3700 1650 3700
Connection ~ 1650 3700
Wire Wire Line
	1650 3700 1650 3800
Wire Wire Line
	2750 3700 2850 3700
Wire Wire Line
	2850 3700 2850 3600
Wire Wire Line
	2850 3700 2850 3800
Connection ~ 2850 3700
Wire Wire Line
	2750 3200 2850 3200
Wire Wire Line
	2850 3300 2850 3200
Connection ~ 2850 3200
Wire Wire Line
	1650 3200 1750 3200
Wire Wire Line
	2850 3200 2950 3200
$Comp
L power:GND #PWR0102
U 1 1 5F501265
P 3050 2350
F 0 "#PWR0102" H 3050 2100 50  0001 C CNN
F 1 "GND" H 3055 2177 50  0000 C CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2200 3050 2350
$Comp
L power:+3.3V #PWR0107
U 1 1 5F504E11
P 3050 1350
F 0 "#PWR0107" H 3050 1200 50  0001 C CNN
F 1 "+3.3V" H 3065 1523 50  0000 C CNN
F 2 "" H 3050 1350 50  0001 C CNN
F 3 "" H 3050 1350 50  0001 C CNN
	1    3050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1350 3050 1450
$Comp
L power:+3.3V #PWR0109
U 1 1 5F509446
P 3600 1350
F 0 "#PWR0109" H 3600 1200 50  0001 C CNN
F 1 "+3.3V" H 3615 1523 50  0000 C CNN
F 2 "" H 3600 1350 50  0001 C CNN
F 3 "" H 3600 1350 50  0001 C CNN
	1    3600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1350 3600 1700
$Comp
L power:GND #PWR0116
U 1 1 5F50B14D
P 3600 2350
F 0 "#PWR0116" H 3600 2100 50  0001 C CNN
F 1 "GND" H 3605 2177 50  0000 C CNN
F 2 "" H 3600 2350 50  0001 C CNN
F 3 "" H 3600 2350 50  0001 C CNN
	1    3600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2000 3600 2350
Wire Notes Line
	900  850  900  2700
Wire Notes Line
	900  2700 2800 2700
Wire Notes Line
	2800 2700 2800 850 
Wire Notes Line
	2800 850  900  850 
Text Notes 950  1000 0    50   ~ 0
Stabilizacja napięcia
Wire Notes Line
	2900 850  2900 2700
Wire Notes Line
	3400 2700 3400 850 
Wire Notes Line
	2900 2700 3400 2700
Wire Notes Line
	2900 850  3400 850 
Text Notes 2950 1000 0    50   ~ 0
LED1
Wire Notes Line
	3500 2700 4050 2700
Wire Notes Line
	4050 2700 4050 850 
Wire Notes Line
	4050 850  3500 850 
Wire Notes Line
	3500 850  3500 2700
Text Notes 3550 1100 0    50   ~ 0
Sztuczne \nobciążenie \n40mA
Wire Notes Line
	4150 850  4150 2700
Wire Notes Line
	4150 2700 6900 2700
Wire Notes Line
	6900 2700 6900 850 
Wire Notes Line
	6900 850  4150 850 
Text Notes 4200 1000 0    50   ~ 0
MCU
Wire Wire Line
	7750 2150 7750 2250
Wire Wire Line
	7350 1800 7350 1850
$Comp
L Device:R R14
U 1 1 5F4C75E9
P 7350 2000
F 0 "R14" V 7143 2000 50  0000 C CNN
F 1 "470R" V 7234 2000 50  0000 C CNN
F 2 "EKOLED-Elementy pasywne:R_0805" V 7280 2000 50  0001 C CNN
F 3 "~" H 7350 2000 50  0001 C CNN
	1    7350 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5F5483AA
P 7550 2350
F 0 "#PWR0117" H 7550 2100 50  0001 C CNN
F 1 "GND" H 7555 2177 50  0000 C CNN
F 2 "" H 7550 2350 50  0001 C CNN
F 3 "" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2250 7550 2350
Connection ~ 7550 2250
Wire Wire Line
	7550 2250 7350 2250
Wire Notes Line
	7000 2700 8050 2700
Wire Notes Line
	8050 2700 8050 850 
Wire Notes Line
	8050 850  7000 850 
Wire Notes Line
	7000 850  7000 2700
Text Notes 7050 1000 0    50   ~ 0
Przycisk
Wire Wire Line
	8350 2100 8350 2400
Wire Notes Line
	8150 850  8150 2700
Wire Notes Line
	8150 2700 8700 2700
Wire Notes Line
	8700 2700 8700 850 
Wire Notes Line
	8700 850  8150 850 
Text Notes 8200 1000 0    50   ~ 0
LED2
Wire Notes Line
	900  2800 900  4500
Wire Notes Line
	900  4500 2100 4500
Wire Notes Line
	2100 4500 2100 2800
Wire Notes Line
	2100 2800 900  2800
Wire Notes Line
	2200 2800 2200 4500
Wire Notes Line
	2200 4500 3300 4500
Wire Notes Line
	3300 4500 3300 2800
Wire Notes Line
	3300 2800 2200 2800
Text Notes 950  2950 0    50   ~ 0
D+ DAC
Text Notes 2250 2950 0    50   ~ 0
D- DAC
Wire Notes Line
	3400 2800 3400 4500
Wire Notes Line
	3400 4500 4500 4500
Wire Notes Line
	4500 4500 4500 2800
Wire Notes Line
	4500 2800 3400 2800
Text Notes 3450 2950 0    50   ~ 0
STM32 SWDIO
Wire Notes Line
	4600 2800 4600 4500
Wire Notes Line
	4600 4500 6400 4500
Wire Notes Line
	6400 4500 6400 2800
Wire Notes Line
	6400 2800 4600 2800
Text Notes 4650 2950 0    50   ~ 0
Power Supplu USB
$EndSCHEMATC
