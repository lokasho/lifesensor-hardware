EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "esp32_devkitc_main"
Date "2020-08-25"
Rev "0"
Comp "Cadus e.V."
Comment1 "n.p.: not placed"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	15150 1550 14100 1550
Wire Wire Line
	15150 1650 14100 1650
$Comp
L esp32_devkitc_main:GND #PWR02
U 1 1 580C1D11
P 14200 3600
F 0 "#PWR02" H 14200 3350 50  0001 C CNN
F 1 "GND" H 14200 3450 50  0000 C CNN
F 2 "" H 14200 3600 50  0000 C CNN
F 3 "" H 14200 3600 50  0000 C CNN
	1    14200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 1750 14200 2150
Wire Wire Line
	14200 3150 14100 3150
Wire Wire Line
	14200 2950 14100 2950
Connection ~ 14200 3150
Wire Wire Line
	14200 2450 14100 2450
Connection ~ 14200 2950
Wire Wire Line
	14200 2150 14100 2150
Connection ~ 14200 2450
$Comp
L esp32_devkitc_main:GND #PWR03
U 1 1 580C1E01
P 13500 3600
F 0 "#PWR03" H 13500 3350 50  0001 C CNN
F 1 "GND" H 13500 3450 50  0000 C CNN
F 2 "" H 13500 3600 50  0000 C CNN
F 3 "" H 13500 3600 50  0000 C CNN
	1    13500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 3450 13600 3450
Wire Wire Line
	13500 1950 13500 2750
Wire Wire Line
	13500 2750 13600 2750
Connection ~ 13500 3450
Wire Wire Line
	12450 2350 13600 2350
Wire Wire Line
	12450 1550 13600 1550
Wire Wire Line
	13500 1950 13600 1950
Connection ~ 13500 2750
Wire Wire Line
	13600 1650 12450 1650
Wire Wire Line
	12450 1750 13600 1750
Wire Wire Line
	13600 2050 12450 2050
Wire Wire Line
	12450 2150 13600 2150
Wire Wire Line
	12450 2250 13600 2250
Wire Wire Line
	13600 2450 12450 2450
Wire Wire Line
	12450 2550 13600 2550
Wire Wire Line
	12450 2650 13600 2650
Wire Wire Line
	14100 3250 15150 3250
Wire Wire Line
	14100 3350 15150 3350
Wire Wire Line
	14100 2850 15150 2850
Wire Wire Line
	14100 2550 15150 2550
Wire Wire Line
	14100 2650 15150 2650
Wire Wire Line
	14100 2250 15150 2250
Wire Wire Line
	14100 2350 15150 2350
Wire Wire Line
	14100 1950 15150 1950
Wire Wire Line
	14100 2050 15150 2050
Wire Wire Line
	14100 1850 15150 1850
Wire Wire Line
	14100 3050 15150 3050
Text Label 12450 1650 0    50   ~ 0
SENS_SDA
Text Label 12450 1750 0    50   ~ 0
SENS_SCL
Text Label 12450 1850 0    50   ~ 0
SENS_INT_BPM
Text Label 12450 2050 0    50   ~ 0
SENS_INT_ECG
Text Label 12450 2150 0    50   ~ 0
SENS_START
Text Label 12450 2250 0    50   ~ 0
~SENS_RST_BPM
Text Label 12450 2450 0    50   ~ 0
SENS_MOSI
Text Label 12450 2550 0    50   ~ 0
SENS_MISO
Text Label 12450 2650 0    50   ~ 0
SENS_SCLK
Text Label 15150 3350 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 15150 3250 2    50   ~ 0
GPIO16
Text Label 15150 3050 2    50   ~ 0
GPIO12(PWM0)
Text Label 15150 2850 2    50   ~ 0
ID_SC
Text Label 15150 2750 2    50   ~ 0
~SENS_CS_SPO2
Text Label 15150 2650 2    50   ~ 0
~SENS_CS_ECG
Text Label 15150 2550 2    50   ~ 0
~SENS_CS_BPM
Text Label 15150 2350 2    50   ~ 0
~SENS_RST_SPO2
Text Label 15150 2250 2    50   ~ 0
~SENS_RST_ECG
Text Label 15150 2050 2    50   ~ 0
SENS_INT_SPO2
Text Label 15150 1950 2    50   ~ 0
SENS_GPIO1
Text Label 15150 1850 2    50   ~ 0
SENS_GPIO0
Wire Wire Line
	14200 1750 14100 1750
Connection ~ 14200 2150
Text Notes 12150 5000 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L esp32_devkitc_main:MountingHole MK1
U 1 1 5834FB2E
P 12450 5700
F 0 "MK1" H 12550 5746 50  0000 L CNN
F 1 "M2.5" H 12550 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 12450 5700 60  0001 C CNN
F 3 "" H 12450 5700 60  0001 C CNN
	1    12450 5700
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK3
U 1 1 5834FBEF
P 13950 5700
F 0 "MK3" H 14050 5746 50  0000 L CNN
F 1 "M2.5" H 14050 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13950 5700 60  0001 C CNN
F 3 "" H 13950 5700 60  0001 C CNN
	1    13950 5700
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK2
U 1 1 5834FC19
P 12450 5950
F 0 "MK2" H 12550 5996 50  0000 L CNN
F 1 "M2.5" H 12550 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 12450 5950 60  0001 C CNN
F 3 "" H 12450 5950 60  0001 C CNN
	1    12450 5950
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK4
U 1 1 5834FC4F
P 13950 5950
F 0 "MK4" H 14050 5996 50  0000 L CNN
F 1 "M2.5" H 14050 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 13950 5950 60  0001 C CNN
F 3 "" H 13950 5950 60  0001 C CNN
	1    13950 5950
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 13800 2450
F 0 "P1" H 13850 3567 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 13850 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8950 1500 50  0001 C CNN
F 3 "" H 8950 1500 50  0001 C CNN
	1    13800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 3450 15150 3450
Text Label 15150 3450 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	14200 3150 14200 3600
Wire Wire Line
	14200 2950 14200 3150
Wire Wire Line
	14200 2450 14200 2950
Wire Wire Line
	13500 3450 13500 3600
Wire Wire Line
	13500 2750 13500 3450
Wire Wire Line
	14200 2150 14200 2450
Text Label 12450 1550 0    50   ~ 0
SENS_3V3_ANA
Text Label 15150 1550 2    50   ~ 0
SENS_5V_ANA
Text Label 15150 1650 2    50   ~ 0
SENS_5V_DIG
Text Label 12450 3350 0    50   ~ 0
GPIO26
Text Label 12450 3250 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 12450 3150 0    50   ~ 0
GPIO13(PWM1)
Text Label 12450 3050 0    50   ~ 0
GPIO6
Text Label 12450 2950 0    50   ~ 0
GPIO5
Text Label 12450 2850 0    50   ~ 0
ID_SD
Wire Wire Line
	12450 3350 13600 3350
Wire Wire Line
	12450 3250 13600 3250
Wire Wire Line
	13600 3150 12450 3150
Wire Wire Line
	12450 3050 13600 3050
Wire Wire Line
	12450 2950 13600 2950
Wire Wire Line
	13600 2850 12450 2850
Text Notes 12450 3950 0    50   ~ 0
Pins 1 to 26 belong to the sensor bus.\nPins 27 to 40 are named according to RPi header pin names.
Wire Wire Line
	12450 1850 13600 1850
Text Notes 14450 800  2    100  ~ 20
Interconnect
Text Notes 14550 5450 2    100  ~ 20
Mounting holes
$Comp
L esp32_devkitc_main:MountingHole MK5
U 1 1 5EABF7F1
P 15450 5700
F 0 "MK5" H 15550 5746 50  0000 L CNN
F 1 "M2.5" H 15550 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 15450 5700 60  0001 C CNN
F 3 "" H 15450 5700 60  0001 C CNN
	1    15450 5700
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:MountingHole MK6
U 1 1 5EABF7F7
P 15450 5950
F 0 "MK6" H 15550 5996 50  0000 L CNN
F 1 "M2.5" H 15550 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 15450 5950 60  0001 C CNN
F 3 "" H 15450 5950 60  0001 C CNN
	1    15450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 2750 15150 2750
Wire Notes Line width 12
	11950 600  15950 600 
Wire Notes Line width 12
	15950 600  15950 5100
Wire Notes Line width 12
	15950 5100 11950 5100
Wire Notes Line width 12
	15950 5200 15950 6200
Wire Notes Line width 12
	15950 6200 11950 6200
Wire Notes Line width 12
	11950 6200 11950 5200
Wire Notes Line width 12
	11950 5200 15950 5200
$Comp
L esp32_devkitc_main:ESP32-DEVKITC-32D U1
U 1 1 5F45B769
P 8750 3050
F 0 "U1" H 8750 4250 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 8750 4150 50  0000 C CNN
F 2 "lib_footprint:MODULE_ESP32-DEVKITC-32D" H 8750 3050 50  0001 L BNN
F 3 "4" H 8750 3050 50  0001 L BNN
F 4 "Espressif Systems" H 8750 3050 50  0001 L BNN "Field4"
	1    8750 3050
	1    0    0    -1  
$EndComp
$Comp
L esp32_devkitc_main:GND #PWR06
U 1 1 5F73EEFF
P 7550 3450
F 0 "#PWR06" H 7550 3200 50  0001 C CNN
F 1 "GND" H 7550 3300 50  0000 C CNN
F 2 "" H 7550 3450 50  0000 C CNN
F 3 "" H 7550 3450 50  0000 C CNN
	1    7550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2050 7400 2050
Text Label 6150 2350 0    50   ~ 0
SENS_INT_BPM
Text Label 6150 2550 0    50   ~ 0
SENS_INT_ECG
Text Label 6950 8700 0    50   ~ 0
SENS_START
Text Label 6700 2050 0    50   ~ 0
SENS_3V3_ANA
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5F74E0F0
P 7500 2050
F 0 "FB1" V 7250 2050 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 7350 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 2050 50  0001 C CNN
F 3 "~" H 7500 2050 50  0001 C CNN
	1    7500 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2850 6600 2850
Wire Wire Line
	10000 3150 10900 3150
Text Label 10350 3350 2    50   ~ 0
~SENS_CS_SPO2
Text Label 10900 3150 2    50   ~ 0
~SENS_RST_SPO2
Text Label 6600 2850 0    50   ~ 0
~SENS_RST_ECG
Text Label 6150 2450 0    50   ~ 0
SENS_INT_SPO2
Text Label 9000 4200 2    50   ~ 0
SENS_5V_ANA
Text Label 9000 4300 2    50   ~ 0
SENS_5V_DIG
$Comp
L esp32_devkitc_main:GND #PWR07
U 1 1 5F7CEAF7
P 9600 4200
F 0 "#PWR07" H 9600 3950 50  0001 C CNN
F 1 "GND" H 9600 4050 50  0000 C CNN
F 2 "" H 9600 4200 50  0000 C CNN
F 3 "" H 9600 4200 50  0000 C CNN
	1    9600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2150 9550 2150
Wire Wire Line
	9550 2750 9600 2750
Wire Wire Line
	9600 2750 9600 2150
Text Label 12450 2350 0    50   ~ 0
SENS_3V3_DIG
Wire Wire Line
	6700 3250 7950 3250
Wire Wire Line
	6700 3550 7950 3550
Text Label 10800 3650 2    50   ~ 0
JTAG_TDO
Text Label 6700 3250 0    50   ~ 0
JTAG_TMS
Wire Wire Line
	7600 2050 7850 2050
Text Label 6700 2150 0    50   ~ 0
SENS_3V3_DIG
Wire Wire Line
	6700 2150 7850 2150
Wire Wire Line
	7850 2050 7850 2150
Connection ~ 7850 2150
Wire Wire Line
	7850 2150 7950 2150
NoConn ~ 9550 3850
$Comp
L Device:D D1
U 1 1 5F948E56
P 7250 3950
F 0 "D1" H 7250 4050 50  0000 C CNN
F 1 "D" H 7250 4100 50  0000 C CNN
F 2 "Diode_SMD:D_SMA-SMB_Universal_Handsoldering" H 7250 3950 50  0001 C CNN
F 3 "~" H 7250 3950 50  0001 C CNN
	1    7250 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3950 7100 3950
Wire Wire Line
	7400 3950 7750 3950
Wire Wire Line
	7750 4200 7750 3950
Wire Wire Line
	7750 4200 9000 4200
Connection ~ 7750 3950
Wire Wire Line
	7750 3950 7950 3950
Wire Wire Line
	7750 4300 7750 4200
Wire Wire Line
	7750 4300 9000 4300
Connection ~ 7750 4200
Text Label 6700 3950 0    50   ~ 0
5V_in
Text Notes 12900 1250 0    50   ~ 0
ATTENTION: Do NOT connect RPi and esp32 \ncomponent on same  interconnect as they \nboth provide the 3.3V and 5V power rails! 
Text Label 6700 2950 0    50   ~ 0
SENS_MOSI
Text Label 6700 3050 0    50   ~ 0
SENS_MISO
Text Label 6700 3150 0    50   ~ 0
SENS_SCLK
Wire Wire Line
	7950 3150 6700 3150
Wire Wire Line
	7950 3050 6700 3050
Wire Wire Line
	7950 2950 7550 2950
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5FA232EF
P 2700 4650
F 0 "J1" H 2750 5100 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 2750 5000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 2700 4650 50  0001 C CNN
F 3 "~" H 2700 4650 50  0001 C CNN
	1    2700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4650 2200 4650
Wire Wire Line
	2500 4750 1100 4750
Text Label 1750 4650 2    50   ~ 0
JTAG_~TRST
$Comp
L esp32_devkitc_main:R_Small R2
U 1 1 5F7F8499
P 1000 4750
F 0 "R2" V 950 4600 50  0000 C CNN
F 1 "n.p." V 950 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 1000 4750 50  0001 C CNN
F 3 "~" H 1000 4750 50  0001 C CNN
	1    1000 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	900  4750 750  4750
$Comp
L esp32_devkitc_main:R_Small R1
U 1 1 5F7F98EC
P 2100 4650
F 0 "R1" V 2050 4500 50  0000 C CNN
F 1 "0" V 2050 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2100 4650 50  0001 C CNN
F 3 "~" H 2100 4650 50  0001 C CNN
	1    2100 4650
	0    -1   1    0   
$EndComp
Wire Wire Line
	2000 4650 1750 4650
$Comp
L esp32_devkitc_main:GND #PWR04
U 1 1 5F826BBD
P 750 4750
F 0 "#PWR04" H 750 4500 50  0001 C CNN
F 1 "GND" V 750 4650 50  0000 R CNN
F 2 "" H 750 4750 50  0001 C CNN
F 3 "" H 750 4750 50  0001 C CNN
	1    750  4750
	0    1    -1   0   
$EndComp
Text Label 1750 4750 2    50   ~ 0
JTAG_~SRST
Text Label 1800 4450 0    50   ~ 0
SENS_3V3_DIG
Wire Wire Line
	1800 4450 2500 4450
$Comp
L esp32_devkitc_main:GND #PWR01
U 1 1 5F790E13
P 2400 4950
F 0 "#PWR01" H 2400 4700 50  0001 C CNN
F 1 "GND" H 2400 4800 50  0000 C CNN
F 2 "" H 2400 4950 50  0000 C CNN
F 3 "" H 2400 4950 50  0000 C CNN
	1    2400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4850 2400 4950
Wire Wire Line
	2400 4850 2500 4850
Wire Wire Line
	2400 4850 2400 4550
Wire Wire Line
	2400 4550 2500 4550
Connection ~ 2400 4850
Wire Wire Line
	3000 4550 3850 4550
Wire Wire Line
	4300 4850 4050 4850
Wire Wire Line
	4300 4650 4050 4650
Wire Wire Line
	4300 4750 4050 4750
Text Label 4300 4750 0    50   ~ 0
JTAG_TDI
Text Label 4300 4650 0    50   ~ 0
JTAG_TDO
Text Label 4300 4850 0    50   ~ 0
JTAG_TMS
Text Label 4300 4550 0    50   ~ 0
JTAG_TCK
$Comp
L esp32_devkitc_main:R_Small R3
U 1 1 5F7DF904
P 3950 4450
F 0 "R3" V 3900 4300 50  0000 C CNN
F 1 "0" V 3900 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3950 4450 50  0001 C CNN
F 3 "~" H 3950 4450 50  0001 C CNN
	1    3950 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4450 4200 4450
$Comp
L esp32_devkitc_main:GND #PWR05
U 1 1 5F7ED315
P 4200 4450
F 0 "#PWR05" H 4200 4200 50  0001 C CNN
F 1 "GND" V 4200 4350 50  0000 R CNN
F 2 "" H 4200 4450 50  0001 C CNN
F 3 "" H 4200 4450 50  0001 C CNN
	1    4200 4450
	0    -1   -1   0   
$EndComp
Text Label 3200 4450 0    50   ~ 0
JTAG_RTCK
Wire Wire Line
	3000 4450 3850 4450
Wire Wire Line
	7950 2550 6150 2550
Wire Wire Line
	7950 2450 6150 2450
Wire Wire Line
	7950 2350 6150 2350
Text Label 10300 3550 2    50   ~ 0
~SENS_CS_ECG
Wire Wire Line
	9550 3550 10300 3550
Text Label 10650 2250 2    50   ~ 0
DISP_MOSI
Text Label 10650 2850 2    50   ~ 0
DISP_MISO
Text Label 10650 2950 2    50   ~ 0
DISP_SCLK
Wire Wire Line
	9550 2950 10650 2950
Wire Wire Line
	9550 2850 10650 2850
Wire Wire Line
	9550 2250 9800 2250
Text Label 3550 5950 2    50   ~ 0
DISP_MOSI
Text Label 3550 6050 2    50   ~ 0
DISP_MISO
Text Label 3550 5850 2    50   ~ 0
DISP_SCLK
Wire Wire Line
	3000 5850 3550 5850
Wire Wire Line
	3000 6050 3550 6050
Wire Wire Line
	3000 5950 3550 5950
Text Label 4350 5500 2    50   ~ 0
SENS_3V3_DIG
Wire Wire Line
	4350 5500 3700 5500
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5FD4406C
P 3700 5750
F 0 "JP1" V 3650 5900 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 3700 5900 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_Pad1.0x1.5mm_NumberLabels" H 3700 5750 50  0001 C CNN
F 3 "~" H 3700 5750 50  0001 C CNN
	1    3700 5750
	0    1    1    0   
$EndComp
Text Label 4350 6000 2    50   ~ 0
SENS_5V_DIG
Wire Wire Line
	3700 6000 4350 6000
Wire Wire Line
	3000 5750 3600 5750
$Comp
L esp32_devkitc_main:GND #PWR0102
U 1 1 5FD76621
P 2450 6100
F 0 "#PWR0102" H 2450 5850 50  0001 C CNN
F 1 "GND" H 2450 5950 50  0000 C CNN
F 2 "" H 2450 6100 50  0000 C CNN
F 3 "" H 2450 6100 50  0000 C CNN
	1    2450 6100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 5FD810F3
P 2700 5850
F 0 "J2" H 2750 6200 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 2750 6100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2700 5850 50  0001 C CNN
F 3 "~" H 2700 5850 50  0001 C CNN
	1    2700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 7050 2550 7050
Wire Wire Line
	1900 6950 2550 6950
Text Label 1900 7050 0    50   ~ 0
PROC_SDA
Text Label 1900 6950 0    50   ~ 0
PROC_SCL
Text Label 10750 2350 2    50   ~ 0
PROC_SCL
$Comp
L esp32_devkitc_main:R_Small R14
U 1 1 5FC63EC6
P 9900 3150
F 0 "R14" V 9850 3000 50  0000 C CNN
F 1 "0" V 9850 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9900 3150 50  0001 C CNN
F 3 "~" H 9900 3150 50  0001 C CNN
	1    9900 3150
	0    -1   1    0   
$EndComp
Wire Wire Line
	9550 3150 9800 3150
Wire Wire Line
	9600 4200 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	7950 8700 8300 8700
Wire Wire Line
	7950 2850 7600 2850
$Comp
L esp32_devkitc_main:R_Small R13
U 1 1 60147B66
P 7500 2850
F 0 "R13" V 7450 2700 50  0000 C CNN
F 1 "0" V 7450 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7500 2850 50  0001 C CNN
F 3 "~" H 7500 2850 50  0001 C CNN
	1    7500 2850
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R12
U 1 1 60147F32
P 7850 8700
F 0 "R12" V 7800 8550 50  0000 C CNN
F 1 "0" V 7800 8850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7850 8700 50  0001 C CNN
F 3 "~" H 7850 8700 50  0001 C CNN
	1    7850 8700
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R21
U 1 1 601BD0ED
P 9900 2250
F 0 "R21" V 9850 2100 50  0000 C CNN
F 1 "100" V 9850 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9900 2250 50  0001 C CNN
F 3 "~" H 9900 2250 50  0001 C CNN
	1    9900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2250 10650 2250
$Comp
L esp32_devkitc_main:R_Small R22
U 1 1 601BE07A
P 7450 2950
F 0 "R22" V 7400 2800 50  0000 C CNN
F 1 "100" V 7400 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7450 2950 50  0001 C CNN
F 3 "~" H 7450 2950 50  0001 C CNN
	1    7450 2950
	0    -1   1    0   
$EndComp
Wire Wire Line
	7350 2950 6700 2950
Wire Wire Line
	7550 3450 7950 3450
Wire Wire Line
	10650 3050 9550 3050
Text Label 10650 3050 2    50   ~ 0
DISP_CS_DISP
Wire Wire Line
	10650 2550 9550 2550
Text Label 10650 2550 2    50   ~ 0
DISP_CS_TOUCH
Text Label 6150 2650 0    50   ~ 0
DISP_INT_TOUCH
Text Label 6700 2250 0    50   ~ 0
JTAG_~TRST
Wire Wire Line
	6950 8700 7750 8700
Wire Wire Line
	9550 3350 10350 3350
Wire Notes Line width 12
	11950 5100 11950 600 
Text Notes 10700 3050 0    43   ~ 0
Display SPI Bus is fastest \nwith these pins (VSPI)\n(DISP_MOSI, DISP_MISO, DISP_SCLK)\n\n
Text Notes 7300 5000 0    50   ~ 0
The pins D0, D1, D2, D3, CMD and CLK (GPIO6-GPIO11) are used\ninternally for communication between ESP32 and SPI flash memory.\nThey are grouped on both sides near the USB connector. Avoid using\nthese pins, as it may disrupt access to the SPI flash memory / SPI \nRAM.\n\nhttps://docs.espressif.com/projects/esp-idf/en/latest/esp32/hw-reference/esp32/get-started-devkitc.html\n
Wire Wire Line
	7950 2650 6150 2650
Wire Wire Line
	9550 2350 10750 2350
NoConn ~ 9550 3750
NoConn ~ 9550 3950
NoConn ~ 7950 3650
NoConn ~ 7950 3750
NoConn ~ 7950 3850
$Comp
L esp32_devkitc_main:R_Small R15
U 1 1 60147723
P 9900 3250
F 0 "R15" V 9850 3100 50  0000 C CNN
F 1 "0" V 9850 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9900 3250 50  0001 C CNN
F 3 "~" H 9900 3250 50  0001 C CNN
	1    9900 3250
	0    -1   1    0   
$EndComp
Wire Wire Line
	9800 3250 9550 3250
Text Label 10900 3250 2    50   ~ 0
~SENS_RST_BPM
Wire Wire Line
	10900 3250 10000 3250
$Comp
L esp32_devkitc_main:GND #PWR09
U 1 1 5FB10B32
P 3350 8400
F 0 "#PWR09" H 3350 8150 50  0001 C CNN
F 1 "GND" V 3350 8300 50  0000 R CNN
F 2 "" H 3350 8400 50  0001 C CNN
F 3 "" H 3350 8400 50  0001 C CNN
	1    3350 8400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 8400 3000 8400
Wire Wire Line
	3000 8300 3450 8300
Text Label 3450 8300 2    50   ~ 0
5V_in
Text Notes 2050 4050 0    50   ~ 0
JTAG has 100Ohm Resistors in manual\nhttps://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf p14
$Comp
L esp32_devkitc_main:R_Small R4
U 1 1 5FBDBC54
P 3950 4550
F 0 "R4" V 3900 4400 50  0000 C CNN
F 1 "100" V 3900 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3950 4550 50  0001 C CNN
F 3 "~" H 3950 4550 50  0001 C CNN
	1    3950 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4550 4300 4550
$Comp
L esp32_devkitc_main:R_Small R5
U 1 1 5FBE6318
P 3950 4650
F 0 "R5" V 3900 4500 50  0000 C CNN
F 1 "100" V 3900 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3950 4650 50  0001 C CNN
F 3 "~" H 3950 4650 50  0001 C CNN
	1    3950 4650
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R6
U 1 1 5FBEE9BD
P 3950 4750
F 0 "R6" V 3900 4600 50  0000 C CNN
F 1 "100" V 3900 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3950 4750 50  0001 C CNN
F 3 "~" H 3950 4750 50  0001 C CNN
	1    3950 4750
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R7
U 1 1 5FBF7099
P 3950 4850
F 0 "R7" V 3900 4700 50  0000 C CNN
F 1 "100" V 3900 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3950 4850 50  0001 C CNN
F 3 "~" H 3950 4850 50  0001 C CNN
	1    3950 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4750 3000 4750
Wire Wire Line
	3850 4650 3000 4650
Wire Wire Line
	3850 4850 3000 4850
Text Label 6700 3350 0    50   ~ 0
JTAG_TDI
Wire Wire Line
	6700 3350 7950 3350
Text Label 6700 3550 0    50   ~ 0
JTAG_TCK
Wire Wire Line
	9550 3450 10300 3450
Text Label 10300 3450 2    50   ~ 0
~SENS_CS_BPM
Wire Wire Line
	10750 2650 9550 2650
Text Label 10750 2650 2    50   ~ 0
PROC_SDA
Wire Wire Line
	10800 3650 9550 3650
Wire Wire Line
	6700 2250 7950 2250
Text Notes 7300 5750 0    50   ~ 0
Strapping Pins:\nGPIO 0 (is pulled down to enter bootloader)\nGPIO 2(needs to be floating)\nGPIO 4\nGPIO 5\nGPIO 12 (dont pull high while booting)\nGPIO 15
$Comp
L PCF8574ADWR:PCF8574ADWR U2
U 1 1 5FCCF6B2
P 9000 8500
F 0 "U2" H 9000 9570 50  0000 C CNN
F 1 "PCF8574ADWR" H 9000 9479 50  0000 C CNN
F 2 "SOIC127P1030X265-16N" H 9000 8300 50  0001 L BNN
F 3 "" H 9000 8500 50  0001 L BNN
	1    9000 8500
	1    0    0    -1  
$EndComp
Text Label 10500 7700 0    50   ~ 0
SENS_3V3_DIG
Wire Wire Line
	10500 7700 9700 7700
Text Label 7450 8300 0    50   ~ 0
PROC_SCL
Wire Wire Line
	8300 8300 7450 8300
Wire Wire Line
	7450 8400 8300 8400
Text Label 7450 8400 0    50   ~ 0
PROC_SDA
$Comp
L esp32_devkitc_main:GND #PWR0101
U 1 1 5FD37EE3
P 6400 8600
F 0 "#PWR0101" H 6400 8350 50  0001 C CNN
F 1 "GND" H 6400 8450 50  0000 C CNN
F 2 "" H 6400 8600 50  0000 C CNN
F 3 "" H 6400 8600 50  0000 C CNN
	1    6400 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 8800 7650 8800
Text Label 7650 8800 0    50   ~ 0
EXPGPIO1
Wire Wire Line
	8300 8900 7650 8900
Text Label 7650 8900 0    50   ~ 0
EXPGPIO2
Wire Wire Line
	8300 9000 7650 9000
Text Label 7650 9000 0    50   ~ 0
EXPGPIO3
$Comp
L esp32_devkitc_main:GND #PWR0104
U 1 1 5FD9CC3C
P 9800 9300
F 0 "#PWR0104" H 9800 9050 50  0001 C CNN
F 1 "GND" H 9800 9150 50  0000 C CNN
F 2 "" H 9800 9300 50  0000 C CNN
F 3 "" H 9800 9300 50  0000 C CNN
	1    9800 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 9300 9800 9200
Wire Wire Line
	9800 9200 9700 9200
Wire Wire Line
	8300 7900 7000 7900
Wire Wire Line
	7950 2750 6650 2750
Wire Wire Line
	2550 7150 1900 7150
Text Label 3700 7350 2    50   ~ 0
EXPGPIO4
Wire Wire Line
	3050 7350 3700 7350
Text Label 1900 7350 0    50   ~ 0
EXPGPIO3
Wire Wire Line
	2550 7350 1900 7350
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FADF030
P 2800 8300
F 0 "J4" H 2718 8517 50  0000 C CNN
F 1 "CUI_PJ-102AH_Horizontal" H 2718 8426 50  0000 C CNN
F 2 "lib_footprint:CUI_PJ-037B" H 2800 8300 50  0001 C CNN
F 3 "~" H 2800 8300 50  0001 C CNN
	1    2800 8300
	-1   0    0    -1  
$EndComp
Text Label 6650 2750 0    50   ~ 0
GPIOEXP_INT
Text Label 7000 7900 0    50   ~ 0
GPIOEXP_INT
Text Notes 7300 6600 0    50   ~ 0
Done:\n- Add button connector\n- Add LED connector\n- Add GPIO expander\n- Merged I2C Header with extra GPIO header \n- Change P1 Text\n- Interrupt wire for gpio/Sense_start\n- JP1 more central\n- replace j4 barrel connector with different footprint e.g. https://www.snapeda.com/parts/PJ-037B/CUI%20Devices/view-part/493700/ \n
Wire Wire Line
	9700 8800 10350 8800
Text Label 10350 8800 2    50   ~ 0
EXPGPIO5
Wire Wire Line
	9700 8900 10350 8900
Text Label 10350 8900 2    50   ~ 0
EXPGPIO6
Text Label 10350 8700 2    50   ~ 0
EXPGPIO4
Wire Wire Line
	9700 8700 10350 8700
$Comp
L esp32_devkitc_main:GND #PWR0105
U 1 1 5FE6E45E
P 3250 7750
F 0 "#PWR0105" H 3250 7500 50  0001 C CNN
F 1 "GND" H 3250 7600 50  0000 C CNN
F 2 "" H 3250 7750 50  0000 C CNN
F 3 "" H 3250 7750 50  0000 C CNN
	1    3250 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 9000 10350 9000
Text Label 10350 9000 2    50   ~ 0
EXPGPIO7
Wire Wire Line
	3050 7050 3250 7050
Text Label 3700 7550 2    50   ~ 0
EXPGPIO6
Wire Wire Line
	3050 7550 3700 7550
Text Label 1900 7550 0    50   ~ 0
EXPGPIO5
Wire Wire Line
	2550 7550 1900 7550
Wire Wire Line
	3050 7150 3700 7150
Wire Wire Line
	3250 7050 3250 6950
Wire Wire Line
	3250 6950 3050 6950
Connection ~ 3250 7050
Text Label 3700 7150 2    50   ~ 0
EXPGPIO2
Text Label 1900 7150 0    50   ~ 0
EXPGPIO1
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3
U 1 1 5FDD3908
P 2750 7250
F 0 "J3" H 2800 7800 50  0000 C CNN
F 1 "Button/LED/I2C Connector" H 2800 7700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 2750 7250 50  0001 C CNN
F 3 "~" H 2750 7250 50  0001 C CNN
	1    2750 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP3
U 1 1 5FE36A9A
P 6600 8100
F 0 "JP3" V 6550 8150 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 6650 8150 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_Pad1.0x1.5mm_NumberLabels" H 6600 8100 50  0001 C CNN
F 3 "~" H 6600 8100 50  0001 C CNN
	1    6600 8100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 8350 6600 8450
Connection ~ 6600 8450
Wire Wire Line
	6600 8450 6800 8450
Wire Wire Line
	6400 8450 6600 8450
Text Label 5750 7700 0    50   ~ 0
SENS_3V3_DIG
Wire Wire Line
	6600 7700 6600 7850
Wire Wire Line
	6600 7700 6800 7700
Wire Wire Line
	6800 7700 6800 7950
Connection ~ 6600 7700
$Comp
L Device:Jumper_NC_Dual JP4
U 1 1 5FE275EF
P 6800 8200
F 0 "JP4" V 6700 8250 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 6800 8250 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_Pad1.0x1.5mm_NumberLabels" H 6800 8200 50  0001 C CNN
F 3 "~" H 6800 8200 50  0001 C CNN
	1    6800 8200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 8200 8300 8200
Wire Wire Line
	6700 8100 8300 8100
Wire Wire Line
	6500 8000 8300 8000
Wire Wire Line
	5750 7700 6400 7700
Wire Wire Line
	6400 7700 6600 7700
Connection ~ 6400 7700
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 5FE44C9F
P 6400 8000
F 0 "JP2" V 6400 8150 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 6500 8100 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_Pad1.0x1.5mm_NumberLabels" H 6400 8000 50  0001 C CNN
F 3 "~" H 6400 8000 50  0001 C CNN
	1    6400 8000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 8250 6400 8450
Wire Wire Line
	6400 7750 6400 7700
Wire Wire Line
	6400 8600 6400 8450
Connection ~ 6400 8450
Wire Wire Line
	3250 7050 3250 7250
Wire Wire Line
	3050 7250 3250 7250
Connection ~ 3250 7250
Wire Wire Line
	3250 7250 3250 7450
Wire Wire Line
	3050 7450 3250 7450
Connection ~ 3250 7450
$Comp
L esp32_devkitc_main:GND #PWR0103
U 1 1 5FE3CF02
P 2350 7750
F 0 "#PWR0103" H 2350 7500 50  0001 C CNN
F 1 "GND" H 2350 7600 50  0000 C CNN
F 2 "" H 2350 7750 50  0000 C CNN
F 3 "" H 2350 7750 50  0000 C CNN
	1    2350 7750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 7250 2350 7250
Wire Wire Line
	2350 7250 2350 7450
Wire Wire Line
	2550 7450 2350 7450
Connection ~ 2350 7450
Wire Wire Line
	3050 7650 3700 7650
Text Label 3700 7650 2    50   ~ 0
EXPGPIO7
Wire Wire Line
	2350 7450 2350 7650
Wire Wire Line
	2350 7750 2350 7650
Connection ~ 2350 7650
Wire Wire Line
	2550 7650 2350 7650
Wire Wire Line
	3250 7450 3250 7750
Text Label 1600 5850 0    50   ~ 0
DISP_CS_DISP
Wire Wire Line
	1600 5850 2500 5850
Text Label 1600 5950 0    50   ~ 0
DISP_CS_TOUCH
Wire Wire Line
	1600 5950 2500 5950
Text Label 1600 5750 0    50   ~ 0
DISP_INT_TOUCH
Wire Wire Line
	1600 5750 2500 5750
Wire Wire Line
	2450 6100 2450 6050
Wire Wire Line
	2450 6050 2500 6050
$EndSCHEMATC
