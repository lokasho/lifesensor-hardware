EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5VA #PWR01
U 1 1 580C1B61
P 15200 2400
F 0 "#PWR01" H 15200 2250 50  0001 C CNN
F 1 "+5VA" H 15200 2550 50  0000 C CNN
F 2 "" H 15200 2400 50  0000 C CNN
F 3 "" H 15200 2400 50  0000 C CNN
	1    15200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15200 2400 15200 2450
Wire Wire Line
	15200 2450 14150 2450
Wire Wire Line
	15550 2550 14150 2550
$Comp
L power:GND #PWR02
U 1 1 580C1D11
P 14250 4500
F 0 "#PWR02" H 14250 4250 50  0001 C CNN
F 1 "GND" H 14250 4350 50  0000 C CNN
F 2 "" H 14250 4500 50  0000 C CNN
F 3 "" H 14250 4500 50  0000 C CNN
	1    14250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 2650 14250 3050
Wire Wire Line
	14250 4050 14150 4050
Wire Wire Line
	14250 3850 14150 3850
Connection ~ 14250 4050
Wire Wire Line
	14250 3350 14150 3350
Connection ~ 14250 3850
Wire Wire Line
	14250 3050 14150 3050
Connection ~ 14250 3350
$Comp
L power:GND #PWR03
U 1 1 580C1E01
P 13550 4500
F 0 "#PWR03" H 13550 4250 50  0001 C CNN
F 1 "GND" H 13550 4350 50  0000 C CNN
F 2 "" H 13550 4500 50  0000 C CNN
F 3 "" H 13550 4500 50  0000 C CNN
	1    13550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 4350 13650 4350
Wire Wire Line
	13550 2850 13550 3650
Wire Wire Line
	13550 3650 13650 3650
Connection ~ 13550 4350
Wire Wire Line
	12150 3250 13650 3250
Wire Wire Line
	12500 2450 13650 2450
Wire Wire Line
	12500 2400 12500 2450
$Comp
L power:+3.3VA #PWR04
U 1 1 580C1BC1
P 12500 2400
F 0 "#PWR04" H 12500 2250 50  0001 C CNN
F 1 "+3.3VA" H 12500 2550 50  0000 C CNN
F 2 "" H 12500 2400 50  0000 C CNN
F 3 "" H 12500 2400 50  0000 C CNN
	1    12500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 2850 13650 2850
Connection ~ 13550 3650
Wire Wire Line
	13650 2550 12500 2550
Wire Wire Line
	12500 2650 13650 2650
Wire Wire Line
	13650 2950 12500 2950
Wire Wire Line
	12500 3050 13650 3050
Wire Wire Line
	12500 3150 13650 3150
Wire Wire Line
	13650 3350 12500 3350
Wire Wire Line
	12500 3450 13650 3450
Wire Wire Line
	12500 3550 13650 3550
Wire Wire Line
	14150 4150 15200 4150
Wire Wire Line
	14150 4250 15200 4250
Wire Wire Line
	14150 3750 15200 3750
Wire Wire Line
	14150 3450 15350 3450
Wire Wire Line
	14150 3550 15350 3550
Wire Wire Line
	14150 3150 15200 3150
Wire Wire Line
	14150 3250 15200 3250
Wire Wire Line
	14150 2850 15200 2850
Wire Wire Line
	14150 2950 15200 2950
Wire Wire Line
	14150 2750 15200 2750
Wire Wire Line
	14150 3950 15200 3950
Text Label 12500 2550 0    50   ~ 0
SENS_SDA
Text Label 12500 2650 0    50   ~ 0
SENS_SCL
Text Label 12500 2750 0    50   ~ 0
SENS_INT_BPM
Text Label 12500 2950 0    50   ~ 0
SENS_INT_ECG
Text Label 12500 3050 0    50   ~ 0
SENS_START
Text Label 12500 3150 0    50   ~ 0
~SENS_RST_BPM
Text Label 12500 3350 0    50   ~ 0
SENS_MOSI
Text Label 12500 3450 0    50   ~ 0
SENS_MISO
Text Label 12500 3550 0    50   ~ 0
SENS_SCLK
Text Label 15200 4250 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 15200 4150 2    50   ~ 0
GPIO16
Text Label 15200 3950 2    50   ~ 0
GPIO12(PWM0)
Text Label 15200 3750 2    50   ~ 0
ID_SC
Text Label 15200 3650 2    50   ~ 0
~SENS_CS_SPO2
Text Label 15200 3550 2    50   ~ 0
~SENS_CS_ECG
Text Label 15200 3450 2    50   ~ 0
~SENS_CS_BPM
Text Label 15200 3250 2    50   ~ 0
~SENS_RST_SPO2
Text Label 15200 3150 2    50   ~ 0
~SENS_RST_ECG
Text Label 15200 2950 2    50   ~ 0
SENS_INT_SPO2
Text Label 15200 2850 2    50   ~ 0
SENS_GPIO1
Text Label 15200 2750 2    50   ~ 0
SENS_GPIO0
Wire Wire Line
	14250 2650 14150 2650
Connection ~ 14250 3050
Text Notes 12500 5950 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L Mechanical:MountingHole MK1
U 1 1 5834FB2E
P 13400 8100
F 0 "MK1" H 13500 8146 50  0000 L CNN
F 1 "M2.5" H 13500 8055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13400 8100 60  0001 C CNN
F 3 "" H 13400 8100 60  0001 C CNN
	1    13400 8100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK3
U 1 1 5834FBEF
P 13950 8100
F 0 "MK3" H 14050 8146 50  0000 L CNN
F 1 "M2.5" H 14050 8055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13950 8100 60  0001 C CNN
F 3 "" H 13950 8100 60  0001 C CNN
	1    13950 8100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK2
U 1 1 5834FC19
P 13400 8350
F 0 "MK2" H 13500 8396 50  0000 L CNN
F 1 "M2.5" H 13500 8305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13400 8350 60  0001 C CNN
F 3 "" H 13400 8350 60  0001 C CNN
	1    13400 8350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK4
U 1 1 5834FC4F
P 13950 8350
F 0 "MK4" H 14050 8396 50  0000 L CNN
F 1 "M2.5" H 14050 8305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13950 8350 60  0001 C CNN
F 3 "" H 13950 8350 60  0001 C CNN
	1    13950 8350
	1    0    0    -1  
$EndComp
Text Notes 13400 5800 0    50   ~ 0
Mounting Holes
$Comp
L Connector_Generic:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 13850 3350
F 0 "P1" H 13900 4467 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 13900 4376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 9000 2400 50  0001 C CNN
F 3 "" H 9000 2400 50  0001 C CNN
	1    13850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 4350 15200 4350
Text Label 15200 4350 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	14250 4050 14250 4500
Wire Wire Line
	14250 3850 14250 4050
Wire Wire Line
	14250 3350 14250 3850
Wire Wire Line
	13550 4350 13550 4500
Wire Wire Line
	13550 3650 13550 4350
Wire Wire Line
	14250 3050 14250 3350
$Comp
L power:+5VD #PWR0101
U 1 1 5EA6E5C1
P 15550 2400
F 0 "#PWR0101" H 15550 2250 50  0001 C CNN
F 1 "+5VD" H 15550 2550 50  0000 C CNN
F 2 "" H 15550 2400 50  0001 C CNN
F 3 "" H 15550 2400 50  0001 C CNN
	1    15550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 2400 15550 2550
$Comp
L power:+3.3V #PWR0102
U 1 1 5EA72FFE
P 12150 2400
F 0 "#PWR0102" H 12150 2250 50  0001 C CNN
F 1 "+3.3V" H 12150 2550 50  0000 C CNN
F 2 "" H 12150 2400 50  0001 C CNN
F 3 "" H 12150 2400 50  0001 C CNN
	1    12150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 2400 12150 3250
Text Label 12500 2450 0    50   ~ 0
SENS_3V3_ANA
Text Label 15200 2450 2    50   ~ 0
SENS_5V_ANA
Text Label 15200 2550 2    50   ~ 0
SENS_5V_DIG
Text Notes 12500 2000 0    50   ~ 0
ATTENTION: max. 30mA for both 3.3V rails together allowed on RPi.
Text Notes 12500 2100 0    50   ~ 0
ATTENTION: max. 300mA for both 5V rails together allowed on RPi.
Text Label 12500 4250 0    50   ~ 0
GPIO26
Text Label 12500 4150 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 12500 4050 0    50   ~ 0
GPIO13(PWM1)
Text Label 12500 3950 0    50   ~ 0
GPIO6
Text Label 12500 3850 0    50   ~ 0
GPIO5
Text Label 12500 3750 0    50   ~ 0
ID_SD
Wire Wire Line
	12500 4250 13650 4250
Wire Wire Line
	12500 4150 13650 4150
Wire Wire Line
	13650 4050 12500 4050
Wire Wire Line
	12500 3950 13650 3950
Wire Wire Line
	12500 3850 13650 3850
Wire Wire Line
	13650 3750 12500 3750
Text Notes 12500 4850 0    50   ~ 0
Pins 1 to 26 belong to the sensor bus.\nPins 27 to 40 are named according to RPi header pin names.
Wire Wire Line
	12500 2750 13650 2750
Text Notes 14350 1550 2    100  ~ 20
Interconnect
Text Notes 14100 7650 2    100  ~ 20
Mounting
$Comp
L Mechanical:MountingHole MK5
U 1 1 5EABF7F1
P 14450 8100
F 0 "MK5" H 14550 8146 50  0000 L CNN
F 1 "M2.5" H 14550 8055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 14450 8100 60  0001 C CNN
F 3 "" H 14450 8100 60  0001 C CNN
	1    14450 8100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK6
U 1 1 5EABF7F7
P 14450 8350
F 0 "MK6" H 14550 8396 50  0000 L CNN
F 1 "M2.5" H 14550 8305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 14450 8350 60  0001 C CNN
F 3 "" H 14450 8350 60  0001 C CNN
	1    14450 8350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5EA7E07E
P 15450 3450
F 0 "R1" V 15400 3300 50  0000 C CNN
F 1 "n.p." V 15400 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15450 3450 50  0001 C CNN
F 3 "~" H 15450 3450 50  0001 C CNN
	1    15450 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 3650 15350 3650
Wire Wire Line
	15550 3650 15700 3650
Wire Wire Line
	15700 3650 15700 3550
Wire Wire Line
	15550 3450 15700 3450
Connection ~ 15700 3450
Wire Wire Line
	15700 3450 16000 3450
Wire Wire Line
	15550 3550 15700 3550
Connection ~ 15700 3550
Wire Wire Line
	15700 3550 15700 3450
Text Label 16000 3450 2    50   ~ 0
~CS
$Comp
L Device:R_Small R2
U 1 1 5EA881A8
P 15450 3550
F 0 "R2" V 15400 3400 50  0000 C CNN
F 1 "n.p." V 15400 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15450 3550 50  0001 C CNN
F 3 "~" H 15450 3550 50  0001 C CNN
	1    15450 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5EA8833D
P 15450 3650
F 0 "R3" V 15400 3500 50  0000 C CNN
F 1 "n.p." V 15400 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15450 3650 50  0001 C CNN
F 3 "~" H 15450 3650 50  0001 C CNN
	1    15450 3650
	0    1    1    0   
$EndComp
$EndSCHEMATC
