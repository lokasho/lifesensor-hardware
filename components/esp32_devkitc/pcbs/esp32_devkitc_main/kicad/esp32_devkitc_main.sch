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
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 8950 1500 50  0001 C CNN
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
Wire Wire Line
	6600 2950 7400 2950
Text Label 6150 2350 0    50   ~ 0
SENS_INT_BPM
Text Label 6150 2550 0    50   ~ 0
SENS_INT_ECG
Text Label 6600 2750 0    50   ~ 0
SENS_START
Text Label 6600 2950 0    50   ~ 0
~SENS_RST_BPM
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
	7400 3050 6600 3050
Text Label 10350 3350 2    50   ~ 0
~SENS_CS_SPO2
Text Label 6600 3050 0    50   ~ 0
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
Wire Wire Line
	6700 3350 7950 3350
Text Label 6700 3350 0    50   ~ 0
JTAG_TDI
Text Label 6700 3550 0    50   ~ 0
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
F 0 "D1" H 7250 3700 50  0000 C CNN
F 1 "D" H 7250 3800 50  0000 C CNN
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
Text Label 6700 3650 0    50   ~ 0
SENS_MOSI
Text Label 6700 3750 0    50   ~ 0
SENS_MISO
Text Label 6700 3850 0    50   ~ 0
SENS_SCLK
Wire Wire Line
	7950 3850 6700 3850
Wire Wire Line
	7950 3750 6700 3750
Wire Wire Line
	7950 3650 7550 3650
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1000 4750 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2100 4650 50  0001 C CNN
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
	3000 4550 3200 4550
Wire Wire Line
	3200 4850 3000 4850
Wire Wire Line
	3200 4650 3000 4650
Wire Wire Line
	3200 4750 3000 4750
Text Label 3200 4750 0    50   ~ 0
JTAG_TDI
Text Label 3200 4650 0    50   ~ 0
JTAG_TDO
Text Label 3200 4850 0    50   ~ 0
JTAG_TMS
Text Label 3200 4550 0    50   ~ 0
JTAG_TCK
$Comp
L esp32_devkitc_main:R_Small R3
U 1 1 5F7DF904
P 3950 4450
F 0 "R3" V 3900 4300 50  0000 C CNN
F 1 "0" V 3900 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3950 4450 50  0001 C CNN
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
Text Label 10300 3450 2    50   ~ 0
~SENS_CS_BPM
Text Label 10300 3550 2    50   ~ 0
~SENS_CS_ECG
Wire Wire Line
	9550 3550 10300 3550
Wire Wire Line
	9550 3450 10300 3450
Text Notes 10300 1950 0    50   ~ 0
place close to display connector
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
Wire Wire Line
	1600 6050 2500 6050
Wire Wire Line
	1600 5750 2500 5750
$Comp
L esp32_devkitc_main:GND #PWR0102
U 1 1 5FD76621
P 2350 6250
F 0 "#PWR0102" H 2350 6000 50  0001 C CNN
F 1 "GND" H 2350 6100 50  0000 C CNN
F 2 "" H 2350 6250 50  0000 C CNN
F 3 "" H 2350 6250 50  0000 C CNN
	1    2350 6250
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
Text Label 1600 5750 0    50   ~ 0
DISP_CS_DISP
Text Label 1600 6050 0    50   ~ 0
DISP_INT_TOUCH
Wire Wire Line
	2500 5850 2350 5850
Wire Wire Line
	3550 6850 3000 6850
Wire Wire Line
	3550 6950 3000 6950
Wire Wire Line
	3550 7050 3000 7050
Text Label 3550 6850 2    50   ~ 0
PROC_SDA
Text Label 3550 7050 2    50   ~ 0
PROC_SCL
$Comp
L esp32_devkitc_main:GND #PWR0103
U 1 1 5FE4C164
P 3550 6950
F 0 "#PWR0103" H 3550 6700 50  0001 C CNN
F 1 "GND" H 3550 6800 50  0000 C CNN
F 2 "" H 3550 6950 50  0000 C CNN
F 3 "" H 3550 6950 50  0000 C CNN
	1    3550 6950
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5FE6695B
P 2800 6950
F 0 "J3" H 2950 7250 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2950 7150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2800 6950 50  0001 C CNN
F 3 "~" H 2800 6950 50  0001 C CNN
	1    2800 6950
	1    0    0    -1  
$EndComp
Text Label 10750 3750 2    50   ~ 0
PROC_SCL
Text Label 10750 3650 2    50   ~ 0
PROC_SDA
$Comp
L esp32_devkitc_main:R_Small R14
U 1 1 5FC63EC6
P 7500 3050
F 0 "R14" V 7450 2900 50  0000 C CNN
F 1 "0" V 7450 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7500 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3050 7600 3050
Wire Wire Line
	9600 4200 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	7600 2750 7950 2750
Wire Wire Line
	7950 2850 7600 2850
Wire Wire Line
	7600 2950 7950 2950
$Comp
L esp32_devkitc_main:R_Small R15
U 1 1 60147723
P 7500 2950
F 0 "R15" V 7450 2800 50  0000 C CNN
F 1 "0" V 7450 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 2950 50  0001 C CNN
F 3 "~" H 7500 2950 50  0001 C CNN
	1    7500 2950
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R13
U 1 1 60147B66
P 7500 2850
F 0 "R13" V 7450 2700 50  0000 C CNN
F 1 "0" V 7450 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 2850 50  0001 C CNN
F 3 "~" H 7500 2850 50  0001 C CNN
	1    7500 2850
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R12
U 1 1 60147F32
P 7500 2750
F 0 "R12" V 7450 2600 50  0000 C CNN
F 1 "0" V 7450 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 2750 50  0001 C CNN
F 3 "~" H 7500 2750 50  0001 C CNN
	1    7500 2750
	0    1    1    0   
$EndComp
$Comp
L esp32_devkitc_main:R_Small R21
U 1 1 601BD0ED
P 9900 2250
F 0 "R21" V 9850 2100 50  0000 C CNN
F 1 "100" V 9850 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9900 2250 50  0001 C CNN
F 3 "~" H 9900 2250 50  0001 C CNN
	1    9900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2250 10650 2250
$Comp
L esp32_devkitc_main:R_Small R22
U 1 1 601BE07A
P 7450 3650
F 0 "R22" V 7400 3500 50  0000 C CNN
F 1 "100" V 7400 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7450 3650 50  0001 C CNN
F 3 "~" H 7450 3650 50  0001 C CNN
	1    7450 3650
	0    -1   1    0   
$EndComp
Wire Wire Line
	7350 3650 6700 3650
Wire Wire Line
	7550 3450 7950 3450
Wire Wire Line
	2350 5850 2350 6250
Wire Wire Line
	1600 5950 2500 5950
Text Label 1600 5950 0    50   ~ 0
DISP_CS_TOUCH
Wire Wire Line
	10650 3050 9550 3050
Text Label 10650 3050 2    50   ~ 0
DISP_CS_DISP
Wire Wire Line
	10800 2650 9550 2650
Wire Wire Line
	10800 2550 9550 2550
Text Label 10800 2550 2    50   ~ 0
DISP_CS_TOUCH
Text Label 10800 2650 2    50   ~ 0
DISP_INT_TOUCH
Text Label 6700 2250 0    50   ~ 0
JTAG_~TRST
Wire Wire Line
	7950 2250 6700 2250
Wire Wire Line
	6600 2750 7400 2750
Wire Wire Line
	9550 3350 10350 3350
Wire Notes Line width 12
	11950 5100 11950 600 
Wire Wire Line
	9550 3650 10750 3650
Wire Wire Line
	9550 3750 10750 3750
Text Notes 10550 3300 0    50   ~ 0
Display SPI Bus is fastest with these pins \n(DISP_MOSI, DISP_MISO, DISP_SCLK)\n\n
Text Notes 10400 3450 0    50   ~ 0
TODO: double check GPIO0 bootloader capability
Text Notes 8750 4900 0    50   ~ 0
TODO: Check SD signals for conflicts with esp memory bus
Text Notes 8750 6050 0    50   ~ 0
TODO: \n- Add power plug\n- Add button connector\n- Add LED connector (header LED+GND)3x\n- Check 1206 parts
$EndSCHEMATC
