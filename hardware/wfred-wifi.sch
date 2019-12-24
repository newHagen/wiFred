EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "Wireless FREDI (and clock interface)"
Date "2017-11-19"
Rev "0.2"
Comp "Heiko Rosemann (heiko.rosemann@web.de) CC-BY-SA"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "WiFi controller and directly related peripheral stuff"
$EndDescr
$Comp
L ESP8266:ESP-12E U401
U 1 1 5A11AA62
P 4300 2600
F 0 "U401" H 4300 2500 50  0000 C CNN
F 1 "ESP-12E" H 4300 2700 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
NoConn ~ 4050 3500
NoConn ~ 4150 3500
NoConn ~ 4250 3500
NoConn ~ 4350 3500
NoConn ~ 4450 3500
NoConn ~ 4550 3500
$Comp
L power:VCC #PWR043
U 1 1 5A11E004
P 2700 1500
F 0 "#PWR043" H 2700 1600 30  0001 C CNN
F 1 "VCC" H 2700 1600 30  0000 C CNN
F 2 "" H 2700 1500 60  0001 C CNN
F 3 "" H 2700 1500 60  0001 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1500 2700 2500
Wire Wire Line
	2700 3000 3400 3000
Wire Wire Line
	3400 2500 2700 2500
Connection ~ 2700 2500
$Comp
L wfred_rev2-rescue:GND-RESCUE-wfred_rev2 #PWR044
U 1 1 5A11E30D
P 6700 3700
F 0 "#PWR044" H 6700 3700 30  0001 C CNN
F 1 "GND" H 6700 3630 30  0001 C CNN
F 2 "" H 6700 3700 60  0001 C CNN
F 3 "" H 6700 3700 60  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2500 6700 2900
Wire Wire Line
	6700 3000 5200 3000
Connection ~ 6700 3000
$Comp
L power:VCC #PWR045
U 1 1 5A11E4AA
P 6300 1550
F 0 "#PWR045" H 6300 1650 30  0001 C CNN
F 1 "VCC" H 6300 1650 30  0000 C CNN
F 2 "" H 6300 1550 60  0001 C CNN
F 3 "" H 6300 1550 60  0001 C CNN
	1    6300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2300 6750 2300
Wire Wire Line
	5200 2400 6750 2400
$Comp
L wfred_rev2-rescue:CONN_3-conn K401
U 1 1 5A11EE74
P 7100 2400
F 0 "K401" V 7050 2400 50  0000 C CNN
F 1 "UART_ESP" V 7150 2400 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7100 2400 60  0001 C CNN
F 3 "" H 7100 2400 60  0001 C CNN
F 4 "RND 205-00631" V 7100 2400 60  0001 C CNN "Reichelt"
	1    7100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2500 6700 2500
Wire Wire Line
	7700 2300 8050 2300
Wire Wire Line
	7700 2400 8050 2400
Text GLabel 8050 2300 2    60   Output ~ 0
THIS_RXD
Text GLabel 8050 2400 2    60   Input ~ 0
THIS_TXD
$Comp
L wfred_rev2-rescue:CONN_2-conn P401
U 1 1 5A11F720
P 7100 2800
F 0 "P401" V 7050 2800 40  0000 C CNN
F 1 "ESP_BOOTLOAD" V 7150 2800 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7100 2800 60  0001 C CNN
F 3 "" H 7100 2800 60  0001 C CNN
F 4 "RND 205-00631" V 7100 2800 60  0001 C CNN "Reichelt"
	1    7100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2700 6100 2700
$Comp
L wfred_rev2-rescue:GND-RESCUE-wfred_rev2 #PWR046
U 1 1 5A11FC27
P 7850 2500
F 0 "#PWR046" H 7850 2500 30  0001 C CNN
F 1 "GND" H 7850 2430 30  0001 C CNN
F 2 "" H 7850 2500 60  0001 C CNN
F 3 "" H 7850 2500 60  0001 C CNN
	1    7850 2500
	1    0    0    -1  
$EndComp
$Comp
L wfred_rev2-rescue:R-RESCUE-wfred_rev2 R403
U 1 1 5A11FF91
P 6100 1950
F 0 "R403" V 6180 1950 40  0000 C CNN
F 1 "10k" V 6107 1951 40  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" V 6030 1950 30  0001 C CNN
F 3 "" H 6100 1950 30  0000 C CNN
F 4 "603-RC0805JR-0710KL" V 6100 1950 60  0001 C CNN "Mouser"
	1    6100 1950
	-1   0    0    1   
$EndComp
$Comp
L wfred_rev2-rescue:R-RESCUE-wfred_rev2 R404
U 1 1 5A11FFE4
P 6100 3350
F 0 "R404" V 6180 3350 40  0000 C CNN
F 1 "10k" V 6107 3351 40  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" V 6030 3350 30  0001 C CNN
F 3 "" H 6100 3350 30  0000 C CNN
F 4 "603-RC0805JR-0710KL" V 6100 3350 60  0001 C CNN "Mouser"
	1    6100 3350
	-1   0    0    1   
$EndComp
$Comp
L wfred_rev2-rescue:R-RESCUE-wfred_rev2 R405
U 1 1 5A120047
P 6300 1950
F 0 "R405" V 6380 1950 40  0000 C CNN
F 1 "10k" V 6307 1951 40  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" V 6230 1950 30  0001 C CNN
F 3 "" H 6300 1950 30  0000 C CNN
F 4 "603-RC0805JR-0710KL" V 6300 1950 60  0001 C CNN "Mouser"
	1    6300 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2800 5200 2800
Wire Wire Line
	5200 2900 6100 2900
$Comp
L wfred_rev2-rescue:CONN_3-conn K402
U 1 1 5A11F053
P 7350 2300
F 0 "K402" V 7300 2300 50  0000 C CNN
F 1 "UART_AVR" V 7400 2300 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7350 2300 60  0001 C CNN
F 3 "" H 7350 2300 60  0001 C CNN
F 4 "RND 205-00631" V 7350 2300 60  0001 C CNN "Reichelt"
	1    7350 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 2200 7850 2200
Wire Wire Line
	7850 2200 7850 2500
Wire Wire Line
	6100 2200 6100 2700
Connection ~ 6100 2700
Wire Wire Line
	6300 2200 6300 2800
Wire Wire Line
	6100 1700 6100 1600
Wire Wire Line
	6300 1550 6300 1600
Connection ~ 6300 1600
Wire Wire Line
	6100 2900 6100 3100
$Comp
L wfred_rev2-rescue:GND-RESCUE-wfred_rev2 #PWR047
U 1 1 5A120E87
P 6100 3700
F 0 "#PWR047" H 6100 3700 30  0001 C CNN
F 1 "GND" H 6100 3630 30  0001 C CNN
F 2 "" H 6100 3700 60  0001 C CNN
F 3 "" H 6100 3700 60  0001 C CNN
	1    6100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3600 6100 3700
Wire Wire Line
	6100 1600 6300 1600
Wire Wire Line
	6750 2900 6700 2900
Connection ~ 6700 2900
$Comp
L wfred_rev2-rescue:C-RESCUE-wfred_rev2 C401
U 1 1 5A127BCA
P 1200 2400
AR Path="/5A127BCA" Ref="C401"  Part="1" 
AR Path="/5A122619/5A127BCA" Ref="C401"  Part="1" 
F 0 "C401" H 1200 2500 40  0000 L CNN
F 1 "100n" H 1206 2315 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1238 2250 30  0001 C CNN
F 3 "" H 1200 2400 60  0000 C CNN
F 4 "X7R-G0805 100N" H 1200 2400 60  0001 C CNN "Reichelt"
	1    1200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR048
U 1 1 5A127C0E
P 1200 1800
F 0 "#PWR048" H 1200 1900 30  0001 C CNN
F 1 "VCC" H 1200 1900 30  0000 C CNN
F 2 "" H 1200 1800 60  0001 C CNN
F 3 "" H 1200 1800 60  0001 C CNN
	1    1200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1800 1200 2000
$Comp
L wfred_rev2-rescue:GND-RESCUE-wfred_rev2 #PWR049
U 1 1 5A127CDB
P 1200 2900
F 0 "#PWR049" H 1200 2900 30  0001 C CNN
F 1 "GND" H 1200 2830 30  0001 C CNN
F 2 "" H 1200 2900 60  0001 C CNN
F 3 "" H 1200 2900 60  0001 C CNN
	1    1200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2600 1200 2800
$Comp
L wfred_rev2-rescue:C-RESCUE-wfred_rev2 C402
U 1 1 5A199174
P 1500 2400
AR Path="/5A199174" Ref="C402"  Part="1" 
AR Path="/5A122619/5A199174" Ref="C402"  Part="1" 
F 0 "C402" H 1500 2500 40  0000 L CNN
F 1 "22u" H 1506 2315 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1538 2250 30  0001 C CNN
F 3 "" H 1500 2400 60  0000 C CNN
F 4 "X5R-G0805 22/25" H 1500 2400 60  0001 C CNN "Reichelt"
	1    1500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2000 1500 2000
Wire Wire Line
	1500 2000 1500 2200
Connection ~ 1200 2000
Wire Wire Line
	1500 2600 1500 2800
Wire Wire Line
	1200 2800 1500 2800
Connection ~ 1200 2800
NoConn ~ 5200 2500
NoConn ~ 5200 2600
NoConn ~ 3400 2600
NoConn ~ 3400 2700
NoConn ~ 3400 2800
NoConn ~ 3400 2900
NoConn ~ 3400 2400
NoConn ~ 3400 2300
$Comp
L wfred_rev2-rescue:CAPAPOL-device C403
U 1 1 5C81829A
P 1800 2400
F 0 "C403" H 1850 2500 40  0000 L CNN
F 1 "100u" H 1850 2300 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1900 2250 30  0000 C CNN
F 3 "" H 1800 2400 300 0000 C CNN
	1    1800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2000 1800 2200
Connection ~ 1500 2000
Wire Wire Line
	1800 2800 1800 2600
Connection ~ 1500 2800
Wire Wire Line
	2700 2500 2700 3000
Wire Wire Line
	6700 3000 6700 3700
Wire Wire Line
	6100 2700 6750 2700
Wire Wire Line
	6300 1600 6300 1700
Wire Wire Line
	6700 2900 6700 3000
Wire Wire Line
	1200 2000 1200 2200
Wire Wire Line
	1200 2800 1200 2900
Wire Wire Line
	1500 2000 1800 2000
Wire Wire Line
	1500 2800 1800 2800
$EndSCHEMATC
