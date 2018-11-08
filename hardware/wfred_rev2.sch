EESchema Schematic File Version 2
LIBS:wfred_rev2-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:my_devices
LIBS:ESP8266
LIBS:wfred_rev2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Wireless FREDI (and clock interface)"
Date "2017-11-19"
Rev "0.2"
Comp "Heiko Rosemann (heiko.rosemann@web.de) CC-BY-SA"
Comment1 ""
Comment2 "External connections (Battery)"
Comment3 "Power supply"
Comment4 "Master sheet for subsheets"
$EndDescr
Wire Wire Line
	1800 2600 3400 2600
Wire Wire Line
	3100 2400 3100 2700
Connection ~ 3100 2600
Wire Wire Line
	2400 2800 2800 2800
Wire Wire Line
	3100 3100 3100 3300
Wire Wire Line
	3400 3300 3400 3100
Wire Wire Line
	5000 900  5000 1100
Wire Wire Line
	5000 1700 5000 1900
Wire Wire Line
	4300 2500 4000 2500
Wire Wire Line
	4000 2500 4000 2700
Wire Wire Line
	4300 2800 4200 2800
Wire Wire Line
	4200 2800 4200 3300
Wire Wire Line
	4000 3100 4000 3300
Wire Wire Line
	5900 2000 5900 2800
Wire Wire Line
	5700 2200 7300 2200
Wire Wire Line
	5900 2800 5700 2800
Connection ~ 5900 2200
Wire Wire Line
	7000 2200 7000 2400
Wire Wire Line
	7300 2200 7300 2400
Connection ~ 7000 2200
Wire Wire Line
	7000 2800 7000 3300
Wire Wire Line
	7300 2800 7300 3300
Wire Wire Line
	6200 2200 6200 3100
Connection ~ 6200 2200
$Comp
L C-RESCUE-wfred_rev2 C101
U 1 1 5920B38E
P 3100 2900
F 0 "C101" H 3100 3000 40  0000 L CNN
F 1 "22u" H 3106 2815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3138 2750 30  0001 C CNN
F 3 "" H 3100 2900 60  0000 C CNN
F 4 "X5R-G0805 22/25" H 3100 2900 60  0001 C CNN "Reichelt"
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR01
U 1 1 5920B390
P 3100 3300
F 0 "#PWR01" H 3100 3300 30  0001 C CNN
F 1 "GND" H 3100 3230 30  0001 C CNN
F 2 "" H 3100 3300 60  0001 C CNN
F 3 "" H 3100 3300 60  0001 C CNN
	1    3100 3300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR02
U 1 1 5920B391
P 2800 3300
F 0 "#PWR02" H 2800 3300 30  0001 C CNN
F 1 "GND" H 2800 3230 30  0001 C CNN
F 2 "" H 2800 3300 60  0001 C CNN
F 3 "" H 2800 3300 60  0001 C CNN
	1    2800 3300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR03
U 1 1 5920B392
P 3400 3300
F 0 "#PWR03" H 3400 3300 30  0001 C CNN
F 1 "GND" H 3400 3230 30  0001 C CNN
F 2 "" H 3400 3300 60  0001 C CNN
F 3 "" H 3400 3300 60  0001 C CNN
	1    3400 3300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 5920B394
P 3100 2400
F 0 "#PWR04" H 3100 2350 20  0001 C CNN
F 1 "+BATT" H 3100 2500 30  0000 C CNN
F 2 "" H 3100 2400 60  0001 C CNN
F 3 "" H 3100 2400 60  0001 C CNN
	1    3100 2400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L101
U 1 1 5920B395
P 5000 1400
F 0 "L101" V 4950 1400 40  0000 C CNN
F 1 "22u" V 5100 1400 40  0000 C CNN
F 2 "myFootprints:L_2424_HandSoldering" H 5000 1400 60  0001 C CNN
F 3 "" H 5000 1400 60  0000 C CNN
F 4 "L-242418FPS 22µ" V 5000 1400 60  0001 C CNN "Reichelt"
	1    5000 1400
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR05
U 1 1 5920B396
P 5000 900
F 0 "#PWR05" H 5000 850 20  0001 C CNN
F 1 "+BATT" H 5000 1000 30  0000 C CNN
F 2 "" H 5000 900 60  0001 C CNN
F 3 "" H 5000 900 60  0001 C CNN
	1    5000 900 
	1    0    0    -1  
$EndComp
NoConn ~ 4300 2200
$Comp
L C-RESCUE-wfred_rev2 C103
U 1 1 5920B397
P 4000 2900
F 0 "C103" H 4000 3000 40  0000 L CNN
F 1 "100n" H 4006 2815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4038 2750 30  0001 C CNN
F 3 "" H 4000 2900 60  0000 C CNN
F 4 "X7R-G0805 100N" H 4000 2900 60  0001 C CNN "Reichelt"
	1    4000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR06
U 1 1 5920B398
P 4000 3300
F 0 "#PWR06" H 4000 3300 30  0001 C CNN
F 1 "GND" H 4000 3230 30  0001 C CNN
F 2 "" H 4000 3300 60  0001 C CNN
F 3 "" H 4000 3300 60  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR07
U 1 1 5920B399
P 4200 3300
F 0 "#PWR07" H 4200 3300 30  0001 C CNN
F 1 "GND" H 4200 3230 30  0001 C CNN
F 2 "" H 4200 3300 60  0001 C CNN
F 3 "" H 4200 3300 60  0001 C CNN
	1    4200 3300
	1    0    0    -1  
$EndComp
NoConn ~ 5700 2500
$Comp
L VCC #PWR08
U 1 1 5920B39A
P 5900 2000
F 0 "#PWR08" H 5900 2100 30  0001 C CNN
F 1 "VCC" H 5900 2100 30  0000 C CNN
F 2 "" H 5900 2000 60  0001 C CNN
F 3 "" H 5900 2000 60  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR09
U 1 1 5920B39D
P 7000 3300
F 0 "#PWR09" H 7000 3300 30  0001 C CNN
F 1 "GND" H 7000 3230 30  0001 C CNN
F 2 "" H 7000 3300 60  0001 C CNN
F 3 "" H 7000 3300 60  0001 C CNN
	1    7000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-wfred_rev2 #PWR010
U 1 1 5920B39E
P 7300 3300
F 0 "#PWR010" H 7300 3300 30  0001 C CNN
F 1 "GND" H 7300 3230 30  0001 C CNN
F 2 "" H 7300 3300 60  0001 C CNN
F 3 "" H 7300 3300 60  0001 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
$Sheet
S 4700 4200 1200 900 
U 5920C945
F0 "Controller" 60
F1 "wfred-controller_rev2.sch" 60
$EndSheet
$Sheet
S 6100 5300 1200 900 
U 5920DD4A
F0 "User Interface" 60
F1 "User_interface_rev2.sch" 60
$EndSheet
$Comp
L C-RESCUE-wfred_rev2 C102
U 1 1 59210DD0
P 3400 2900
F 0 "C102" H 3400 3000 40  0000 L CNN
F 1 "22u" H 3406 2815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 2750 30  0001 C CNN
F 3 "" H 3400 2900 60  0000 C CNN
F 4 "X5R-G0805 22/25" H 3400 2900 60  0001 C CNN "Reichelt"
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-wfred_rev2 C104
U 1 1 59210E13
P 7000 2600
F 0 "C104" H 7000 2700 40  0000 L CNN
F 1 "22u" H 7006 2515 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7038 2450 30  0001 C CNN
F 3 "" H 7000 2600 60  0000 C CNN
F 4 "X5R-G0805 22/25" H 7000 2600 60  0001 C CNN "Reichelt"
	1    7000 2600
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-wfred_rev2 C105
U 1 1 59210E8B
P 7300 2600
F 0 "C105" H 7300 2700 40  0000 L CNN
F 1 "22u" H 7306 2515 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 2450 30  0001 C CNN
F 3 "" H 7300 2600 60  0000 C CNN
F 4 "X5R-G0805 22/25" H 7300 2600 60  0001 C CNN "Reichelt"
	1    7300 2600
	1    0    0    -1  
$EndComp
$Comp
L L6920D U101
U 1 1 5920B393
P 5000 2500
F 0 "U101" H 5000 2500 60  0000 C CNN
F 1 "L6920D" H 5000 2400 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_4.4x3mm_Pitch0.65mm" H 5000 2500 60  0001 C CNN
F 3 "" H 5000 2500 60  0001 C CNN
F 4 "L 6920 D" H 5000 2500 60  0001 C CNN "Reichelt"
F 5 "511-L6920DTR" H 5000 2500 60  0001 C CNN "Mouser"
	1    5000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3100 5000 3100
$Sheet
S 6100 4200 1200 900 
U 5A122619
F0 "Wifi connection" 60
F1 "wfred-wifi.sch" 60
$EndSheet
Wire Wire Line
	1800 3700 1800 2600
Wire Wire Line
	2400 3700 2400 2800
$Comp
L BATT_HOLDER_2 B101
U 1 1 5BE48F43
P 2100 4900
F 0 "B101" H 2100 5000 60  0000 C CNN
F 1 "BATT_HOLDER_2" H 2100 4900 60  0000 C CNN
F 2 "myFootprints:NEW_AGE_COMPACT_AA" H 2100 4900 60  0001 C CNN
F 3 "" H 2100 4900 60  0001 C CNN
	1    2100 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2600 3400 2700
Wire Wire Line
	2800 2800 2800 3300
$EndSCHEMATC
