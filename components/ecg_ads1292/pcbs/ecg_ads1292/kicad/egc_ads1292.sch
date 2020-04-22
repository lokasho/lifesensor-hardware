EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date "2020-03-28"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3600 2700 1050 1700
U 5E80F57C
F0 "ecg_input_protection" 50
F1 "ecg_input_protection.sch" 50
F2 "LA" O R 4650 2800 50 
F3 "RA" O R 4650 3300 50 
F4 "LL" O R 4650 3800 50 
F5 "IN_LA" I L 3600 2800 50 
F6 "IN_RA" I L 3600 3300 50 
F7 "IN_LL" I L 3600 3800 50 
F8 "RLD" I R 4650 4300 50 
F9 "OUT_RLD" O L 3600 4300 50 
$EndSheet
Wire Notes Line rgb(194, 0, 10)
	1700 3500 3600 3500
Text Notes 2100 2950 0    50   ~ 10
5kV isolation
Text Label 2000 3300 0    50   ~ 0
in_RA
Text Label 1950 3800 0    50   ~ 0
in_LL
Text Label 1950 2800 0    50   ~ 0
in_LA
Text Label 1950 4300 0    50   ~ 0
out_rld
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF37
P 1700 2800
AR Path="/5E80F57C/5E8CBF37" Ref="J?"  Part="1" 
AR Path="/5E8CBF37" Ref="J1"  Part="1" 
F 0 "J1" H 1550 2550 50  0000 C CNN
F 1 "n.p." H 1550 2650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1700 2800 50  0001 C CNN
F 3 "~" H 1700 2800 50  0001 C CNN
F 4 "N" H 1700 2800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1700 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF3D
P 1700 3300
AR Path="/5E80F57C/5E8CBF3D" Ref="J?"  Part="1" 
AR Path="/5E8CBF3D" Ref="J2"  Part="1" 
F 0 "J2" H 1550 3050 50  0000 C CNN
F 1 "n.p." H 1550 3150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1700 3300 50  0001 C CNN
F 3 "~" H 1700 3300 50  0001 C CNN
F 4 "N" H 1700 3300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1700 3300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF43
P 1700 3800
AR Path="/5E80F57C/5E8CBF43" Ref="J?"  Part="1" 
AR Path="/5E8CBF43" Ref="J3"  Part="1" 
F 0 "J3" H 1550 3550 50  0000 C CNN
F 1 "n.p." H 1550 3650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1700 3800 50  0001 C CNN
F 3 "~" H 1700 3800 50  0001 C CNN
F 4 "N" H 1700 3800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1700 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF49
P 1700 4300
AR Path="/5E80F57C/5E8CBF49" Ref="J?"  Part="1" 
AR Path="/5E8CBF49" Ref="J4"  Part="1" 
F 0 "J4" H 1550 4050 50  0000 C CNN
F 1 "n.p." H 1550 4150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1700 4300 50  0001 C CNN
F 3 "~" H 1700 4300 50  0001 C CNN
F 4 "N" H 1700 4300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1700 4300
	-1   0    0    1   
$EndComp
Wire Notes Line rgb(194, 0, 0)
	1650 3000 3600 3000
Wire Notes Line rgb(194, 0, 0)
	1700 4000 3600 4000
Text Notes 2100 3450 0    50   ~ 10
5kV isolation
Text Notes 2100 3950 0    50   ~ 10
5kV isolation
Wire Wire Line
	8700 4550 8700 4400
$Comp
L component:R R?
U 1 1 5EAAA6B2
P 8700 5150
AR Path="/5E8EE786/5EAAA6B2" Ref="R?"  Part="1" 
AR Path="/5EAAA6B2" Ref="R2"  Part="1" 
F 0 "R2" H 8550 5100 50  0000 L CNN
F 1 "100k" H 8450 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8630 5150 50  0001 C CNN
F 3 "" H 8700 5150 50  0001 C CNN
F 4 "1738916" H 2900 3300 50  0001 C CNN "Best.Nr."
F 5 "Farnell" H 2900 3300 50  0001 C CNN "Distributor"
F 6 "1738916" H 2900 3300 50  0001 C CNN "Farnell"
F 7 "N" H 8700 5150 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8700 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 5350 8700 5300
Wire Wire Line
	8700 4750 8700 5000
Wire Wire Line
	4650 4300 4800 4300
Wire Wire Line
	8700 4750 7350 4750
Wire Wire Line
	4650 3800 4800 3800
Wire Wire Line
	6200 3300 4800 3300
Wire Wire Line
	6200 2800 4800 2800
$Sheet
S 6200 2700 950  2450
U 5E8EE786
F0 "ECG_Sensor" 50
F1 "ecg_ads1292_sensor.sch" 50
F2 "LA" I L 6200 2800 50 
F3 "RA" I L 6200 3300 50 
F4 "LL" I L 6200 3800 50 
F5 "3V3" U R 7150 4000 50 
F6 "~CS" I R 7150 3200 50 
F7 "START" I R 7150 4750 50 
F8 "SCLK" I R 7150 3600 50 
F9 "DIN" I R 7150 3400 50 
F10 "~PWDN/RESET" I R 7150 4550 50 
F11 "DOUT" O R 7150 3800 50 
F12 "~DRDY" O R 7150 4950 50 
F13 "5V" I R 7150 3000 50 
F14 "RLD" O L 6200 4300 50 
$EndSheet
Wire Wire Line
	8700 4550 7350 4550
Wire Wire Line
	7150 4950 7350 4950
$Comp
L component:R R?
U 1 1 5EAA9ADF
P 8700 4250
AR Path="/5E8EE786/5EAA9ADF" Ref="R?"  Part="1" 
AR Path="/5EAA9ADF" Ref="R1"  Part="1" 
F 0 "R1" H 8550 4200 50  0000 L CNN
F 1 "100k" H 8450 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8630 4250 50  0001 C CNN
F 3 "" H 8700 4250 50  0001 C CNN
F 4 "1738916" H 2900 2400 50  0001 C CNN "Best.Nr."
F 5 "Farnell" H 2900 2400 50  0001 C CNN "Distributor"
F 6 "1738916" H 2900 2400 50  0001 C CNN "Farnell"
F 7 "N" H 8700 4250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8700 4250
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Flag TP1
U 1 1 5EB0CE83
P 4800 2800
F 0 "TP1" H 5100 2900 50  0000 L CNN
F 1 " " H 5100 2800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5000 2800 50  0001 C CNN
F 3 "~" H 5000 2800 50  0001 C CNN
F 4 "N" H 4800 2800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4800 2800
	1    0    0    -1  
$EndComp
Connection ~ 4800 2800
Wire Wire Line
	4800 2800 4650 2800
$Comp
L Connector:TestPoint_Flag TP2
U 1 1 5EB0DB94
P 4800 3300
F 0 "TP2" H 5100 3400 50  0000 L CNN
F 1 " " H 5100 3300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5000 3300 50  0001 C CNN
F 3 "~" H 5000 3300 50  0001 C CNN
F 4 "N" H 4800 3300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4800 3300
	1    0    0    -1  
$EndComp
Connection ~ 4800 3300
Wire Wire Line
	4800 3300 4650 3300
$Comp
L Connector:TestPoint_Flag TP3
U 1 1 5EB0DFA1
P 4800 3800
F 0 "TP3" H 5100 3900 50  0000 L CNN
F 1 " " H 5100 3800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5000 3800 50  0001 C CNN
F 3 "~" H 5000 3800 50  0001 C CNN
F 4 "N" H 4800 3800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4800 3800
	1    0    0    -1  
$EndComp
Connection ~ 4800 3800
Wire Wire Line
	4800 3800 6200 3800
$Comp
L Connector:TestPoint_Flag TP4
U 1 1 5EB0E36F
P 4800 4300
F 0 "TP4" H 5100 4400 50  0000 L CNN
F 1 " " H 5100 4300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5000 4300 50  0001 C CNN
F 3 "~" H 5000 4300 50  0001 C CNN
F 4 "N" H 4800 4300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4800 4300
	1    0    0    -1  
$EndComp
Connection ~ 4800 4300
Wire Wire Line
	4800 4300 6200 4300
$Comp
L Connector:TestPoint_Flag TP12
U 1 1 5EB0FF22
P 7350 4550
F 0 "TP12" H 7650 4650 50  0000 L CNN
F 1 " " H 7650 4550 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7550 4550 50  0001 C CNN
F 3 "~" H 7550 4550 50  0001 C CNN
F 4 "N" H 7350 4550 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7350 4550
	1    0    0    -1  
$EndComp
Connection ~ 7350 4550
Wire Wire Line
	7350 4550 7150 4550
$Comp
L Connector:TestPoint_Flag TP13
U 1 1 5EB10623
P 7350 4750
F 0 "TP13" H 7650 4850 50  0000 L CNN
F 1 " " H 7650 4750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7550 4750 50  0001 C CNN
F 3 "~" H 7550 4750 50  0001 C CNN
F 4 "N" H 7350 4750 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7350 4750
	1    0    0    -1  
$EndComp
Connection ~ 7350 4750
Wire Wire Line
	7350 4750 7150 4750
$Comp
L Connector:TestPoint_Flag TP14
U 1 1 5EB10862
P 7350 4950
F 0 "TP14" H 7650 5050 50  0000 L CNN
F 1 " " H 7650 4950 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7550 4950 50  0001 C CNN
F 3 "~" H 7550 4950 50  0001 C CNN
F 4 "N" H 7350 4950 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7350 4950
	1    0    0    -1  
$EndComp
$Comp
L component:GND #PWR?
U 1 1 5EB1856C
P 7350 5550
AR Path="/5E8EE786/5EB1856C" Ref="#PWR?"  Part="1" 
AR Path="/5EB1856C" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 7350 5300 50  0001 C CNN
F 1 "GND" H 7350 5400 50  0000 C CNN
F 2 "" H 7350 5550 50  0001 C CNN
F 3 "" H 7350 5550 50  0001 C CNN
	1    7350 5550
	1    0    0    -1  
$EndComp
$Comp
L component:GND #PWR?
U 1 1 5EB18F02
P 4800 4800
AR Path="/5E8EE786/5EB18F02" Ref="#PWR?"  Part="1" 
AR Path="/5EB18F02" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4800 4550 50  0001 C CNN
F 1 "GND" H 4800 4650 50  0000 C CNN
F 2 "" H 4800 4800 50  0001 C CNN
F 3 "" H 4800 4800 50  0001 C CNN
	1    4800 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP5
U 1 1 5EB28150
P 4800 4700
F 0 "TP5" H 5100 4800 50  0000 L CNN
F 1 " " H 5100 4700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5000 4700 50  0001 C CNN
F 3 "~" H 5000 4700 50  0001 C CNN
F 4 "N" H 4800 4700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4800 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP15
U 1 1 5EB284C8
P 7350 5450
F 0 "TP15" H 7650 5550 50  0000 L CNN
F 1 " " H 7650 5450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7550 5450 50  0001 C CNN
F 3 "~" H 7550 5450 50  0001 C CNN
F 4 "N" H 7350 5450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5450 7350 5550
Wire Wire Line
	4800 4700 4800 4800
Text Label 5300 2800 0    50   ~ 0
protected_LA
Text Label 5300 3300 0    50   ~ 0
protected_RA
Text Label 5300 3800 0    50   ~ 0
protected_LL
Text Label 5300 4300 0    50   ~ 0
protected_RLD
Text Label 8200 4000 0    50   ~ 0
3V3
Text Label 8200 3000 0    50   ~ 0
5V
Text Label 8200 3200 0    50   ~ 0
~CS_ECG
Text Label 8200 3600 0    50   ~ 0
SCLK
Text Label 8200 3400 0    50   ~ 0
MOSI
Text Label 8200 4550 0    50   ~ 0
~PDN_RESET
Text Label 8200 4750 0    50   ~ 0
START
Text Label 8200 4950 0    50   ~ 0
~DRDY
Text Label 8200 3800 0    50   ~ 0
MISO
Wire Wire Line
	1900 2800 3600 2800
Wire Wire Line
	1900 3300 3600 3300
Wire Wire Line
	1900 3800 3600 3800
Wire Wire Line
	1900 4300 3600 4300
$Comp
L component:GND #PWR?
U 1 1 5EC2A850
P 8700 5350
AR Path="/5E8EE786/5EC2A850" Ref="#PWR?"  Part="1" 
AR Path="/5EC2A850" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 8700 5100 50  0001 C CNN
F 1 "GND" H 8700 5200 50  0000 C CNN
F 2 "" H 8700 5350 50  0001 C CNN
F 3 "" H 8700 5350 50  0001 C CNN
	1    8700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EC34E54
P 9400 4000
F 0 "#FLG0101" H 9400 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 4050 50  0000 C CNN
F 2 "" H 9400 4000 50  0001 C CNN
F 3 "~" H 9400 4000 50  0001 C CNN
	1    9400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EC359A6
P 9400 3000
F 0 "#FLG0102" H 9400 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 3050 50  0000 C CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "~" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
Connection ~ 9400 3000
$Comp
L Mechanical:MountingHole H1
U 1 1 5E88FB4A
P 800 6100
F 0 "H1" H 900 6150 50  0000 L CNN
F 1 "MountingHole" H 900 6100 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 800 6100 50  0001 C CNN
F 3 "~" H 800 6100 50  0001 C CNN
F 4 "N" H 800 6100 50  0001 C CNN "Spice_Netlist_Enabled"
	1    800  6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E88FB50
P 800 6400
F 0 "H2" H 900 6450 50  0000 L CNN
F 1 "MountingHole" H 900 6400 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 800 6400 50  0001 C CNN
F 3 "~" H 800 6400 50  0001 C CNN
F 4 "N" H 800 6400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    800  6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E88FB56
P 800 6700
F 0 "H3" H 900 6750 50  0000 L CNN
F 1 "MountingHole" H 900 6700 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 800 6700 50  0001 C CNN
F 3 "~" H 800 6700 50  0001 C CNN
F 4 "N" H 800 6700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    800  6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E88FB5C
P 800 6950
F 0 "H4" H 900 7000 50  0000 L CNN
F 1 "MountingHole" H 900 6950 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 800 6950 50  0001 C CNN
F 3 "~" H 800 6950 50  0001 C CNN
F 4 "N" H 800 6950 50  0001 C CNN "Spice_Netlist_Enabled"
	1    800  6950
	1    0    0    -1  
$EndComp
$Comp
L component:R R30
U 1 1 5E89A389
P 2450 7050
F 0 "R30" V 2200 7050 50  0000 C CNN
F 1 "n.p." V 2300 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2380 7050 50  0001 C CNN
F 3 "" H 2450 7050 50  0001 C CNN
F 4 "N" H 2450 7050 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 7050
	0    1    1    0   
$EndComp
$Comp
L component:R R29
U 1 1 5E89B1A8
P 2450 6650
F 0 "R29" V 2200 6650 50  0000 C CNN
F 1 "n.p." V 2300 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2380 6650 50  0001 C CNN
F 3 "" H 2450 6650 50  0001 C CNN
F 4 "N" H 2450 6650 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 6650
	0    1    1    0   
$EndComp
$Comp
L component:R R27
U 1 1 5E89B868
P 2450 6250
F 0 "R27" V 2200 6250 50  0000 C CNN
F 1 "n.p." V 2300 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2380 6250 50  0001 C CNN
F 3 "" H 2450 6250 50  0001 C CNN
F 4 "N" H 2450 6250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 6250
	0    1    1    0   
$EndComp
$Comp
L component:R R26
U 1 1 5E89BC88
P 2450 5850
F 0 "R26" V 2200 5850 50  0000 C CNN
F 1 "n.p." V 2300 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2380 5850 50  0001 C CNN
F 3 "" H 2450 5850 50  0001 C CNN
F 4 "N" H 2450 5850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 5850
	0    1    1    0   
$EndComp
$Comp
L component:R R25
U 1 1 5E89C150
P 2450 5450
F 0 "R25" V 2200 5450 50  0000 C CNN
F 1 "n.p." V 2300 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2380 5450 50  0001 C CNN
F 3 "" H 2450 5450 50  0001 C CNN
F 4 "N" H 2450 5450 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 5450 2300 5450
Wire Wire Line
	2600 5450 2650 5450
Wire Wire Line
	2650 5450 2650 5850
Wire Wire Line
	2250 5850 2300 5850
Connection ~ 2250 5850
Wire Wire Line
	2250 5850 2250 5450
Wire Wire Line
	2600 5850 2650 5850
Connection ~ 2650 5850
Wire Wire Line
	2650 5850 2650 6250
Wire Wire Line
	2650 6250 2600 6250
Connection ~ 2650 6250
Wire Wire Line
	2650 6250 2650 6650
Wire Wire Line
	2300 6250 2250 6250
Connection ~ 2250 6250
Wire Wire Line
	2250 6250 2250 5850
Wire Wire Line
	2250 6650 2300 6650
Connection ~ 2250 6650
Wire Wire Line
	2250 6650 2250 6250
Wire Wire Line
	2600 6650 2650 6650
Connection ~ 2650 6650
Wire Wire Line
	2650 6650 2650 7050
Wire Wire Line
	2650 7050 2600 7050
Connection ~ 2650 7050
Wire Wire Line
	2300 7050 2250 7050
Connection ~ 2250 7050
Wire Wire Line
	2250 7050 2250 6650
Wire Wire Line
	2650 7050 2650 7150
Wire Wire Line
	2250 7150 2250 7050
$Comp
L component:GND #PWR0104
U 1 1 5E899B61
P 2650 7150
F 0 "#PWR0104" H 2650 6900 50  0001 C CNN
F 1 "GND" H 2700 6950 50  0000 C CNN
F 2 "" H 2650 7150 50  0001 C CNN
F 3 "" H 2650 7150 50  0001 C CNN
	1    2650 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0105
U 1 1 5E898834
P 2250 7150
F 0 "#PWR0105" H 2250 6950 50  0001 C CNN
F 1 "GNDPWR" H 2300 6950 50  0000 C CNN
F 2 "" H 2250 7100 50  0001 C CNN
F 3 "" H 2250 7100 50  0001 C CNN
	1    2250 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5E8D7331
P 1700 6750
F 0 "H5" H 1800 6850 50  0000 L CNN
F 1 "n.p." H 1800 6750 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1700 6750 50  0001 C CNN
F 3 "~" H 1700 6750 50  0001 C CNN
F 4 "N" H 1700 6750 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1700 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6850 1700 7050
Wire Wire Line
	1700 7050 2100 7050
Wire Wire Line
	8200 4950 7350 4950
Connection ~ 7350 4950
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E91687C
P 2100 6550
F 0 "#FLG0104" H 2100 6625 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 6600 50  0000 C CNN
F 2 "" H 2100 6550 50  0001 C CNN
F 3 "~" H 2100 6550 50  0001 C CNN
	1    2100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6550 2100 7050
Connection ~ 2100 7050
Wire Wire Line
	2100 7050 2250 7050
Connection ~ 10700 3600
Wire Wire Line
	10700 3600 10700 3500
Connection ~ 10700 3700
Wire Wire Line
	10700 3700 10700 3600
Connection ~ 10700 3800
Wire Wire Line
	10700 3800 10700 3700
Wire Wire Line
	10500 3700 10700 3700
Wire Wire Line
	10500 3600 10700 3600
Wire Wire Line
	10700 3500 10500 3500
Wire Wire Line
	10500 3800 10700 3800
Wire Wire Line
	9500 3900 10000 3900
$Comp
L power:GND #PWR0103
U 1 1 5E92A458
P 10700 3900
F 0 "#PWR0103" H 10700 3650 50  0001 C CNN
F 1 "GND" H 10750 3700 50  0000 C CNN
F 2 "" H 10700 3900 50  0001 C CNN
F 3 "" H 10700 3900 50  0001 C CNN
	1    10700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 3800 10700 3900
Wire Wire Line
	10000 3900 10000 4000
Wire Wire Line
	10000 4000 10550 4000
Wire Wire Line
	10550 4000 10550 3900
Wire Wire Line
	10550 3900 10500 3900
Wire Wire Line
	10500 3000 10550 3000
Wire Wire Line
	10550 3000 10550 2900
Wire Wire Line
	10550 2900 10000 2900
Wire Wire Line
	10000 2900 10000 3000
Connection ~ 9400 4000
Wire Wire Line
	8700 4100 8700 4000
Connection ~ 8700 4000
Wire Wire Line
	8700 4000 9400 4000
Text Label 9600 3000 0    50   ~ 0
5V
Text Label 9600 3500 0    50   ~ 0
~CS_ECG
Text Label 9600 3600 0    50   ~ 0
MOSI
Text Label 9600 3700 0    50   ~ 0
SCLK
Text Label 9600 3800 0    50   ~ 0
MISO
Text Label 9600 3900 0    50   ~ 0
3V3
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J6
U 1 1 5E9B093D
P 10200 3500
F 0 "J6" H 10250 2750 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 10250 2850 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Vertical_Lock" H 10200 3500 50  0001 C CNN
F 3 "~" H 10200 3500 50  0001 C CNN
F 4 "N" H 10200 3500 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10200 3500
	1    0    0    1   
$EndComp
Connection ~ 10000 3000
Connection ~ 10000 3900
Wire Wire Line
	9600 3400 10000 3400
Text Label 9600 3400 0    50   ~ 0
~CS_PPG
Text Label 9600 3300 0    50   ~ 0
~CS_BPR
Wire Wire Line
	10000 3300 9600 3300
Wire Wire Line
	9600 3100 10000 3100
Wire Wire Line
	9600 3200 10000 3200
Wire Wire Line
	10700 3500 10700 3400
Wire Wire Line
	10700 3100 10500 3100
Connection ~ 10700 3500
Wire Wire Line
	10500 3200 10700 3200
Connection ~ 10700 3200
Wire Wire Line
	10700 3200 10700 3100
Wire Wire Line
	10500 3300 10700 3300
Connection ~ 10700 3300
Wire Wire Line
	10700 3300 10700 3200
Wire Wire Line
	10500 3400 10700 3400
Connection ~ 10700 3400
Wire Wire Line
	10700 3400 10700 3300
Text Label 9600 3100 0    50   ~ 0
SCL
Text Label 9600 3200 0    50   ~ 0
SDA
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E9F657C
P 10700 3000
F 0 "#FLG0103" H 10700 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 10950 3000 50  0000 C CNN
F 2 "" H 10700 3000 50  0001 C CNN
F 3 "~" H 10700 3000 50  0001 C CNN
	1    10700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 3000 10700 3100
Connection ~ 10700 3100
Wire Wire Line
	9400 3000 10000 3000
Wire Wire Line
	9500 3200 9500 3500
Wire Wire Line
	9500 3500 10000 3500
Wire Wire Line
	9400 3400 9400 3600
Wire Wire Line
	9400 3600 10000 3600
Wire Wire Line
	9300 3700 9300 3600
Wire Wire Line
	9300 3700 10000 3700
Wire Wire Line
	9500 4000 9500 3900
Wire Wire Line
	9400 4000 9500 4000
Connection ~ 10650 1900
Wire Wire Line
	10650 1900 10650 1800
Connection ~ 10650 2000
Wire Wire Line
	10650 2000 10650 1900
Connection ~ 10650 2100
Wire Wire Line
	10650 2100 10650 2000
Wire Wire Line
	10450 2000 10650 2000
Wire Wire Line
	10450 1900 10650 1900
Wire Wire Line
	10650 1800 10450 1800
Wire Wire Line
	10450 2100 10650 2100
Wire Wire Line
	9550 2200 9950 2200
$Comp
L power:GND #PWR0110
U 1 1 5EA66CF2
P 10650 2200
F 0 "#PWR0110" H 10650 1950 50  0001 C CNN
F 1 "GND" H 10700 2000 50  0000 C CNN
F 2 "" H 10650 2200 50  0001 C CNN
F 3 "" H 10650 2200 50  0001 C CNN
	1    10650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2100 10650 2200
Wire Wire Line
	9950 2200 9950 2300
Wire Wire Line
	9950 2300 10500 2300
Wire Wire Line
	10500 2300 10500 2200
Wire Wire Line
	10500 2200 10450 2200
Wire Wire Line
	10450 1300 10500 1300
Wire Wire Line
	10500 1300 10500 1200
Wire Wire Line
	10500 1200 9950 1200
Wire Wire Line
	9950 1200 9950 1300
Text Label 9550 1300 0    50   ~ 0
5V
Text Label 9550 1800 0    50   ~ 0
~CS_ECG
Text Label 9550 1900 0    50   ~ 0
MOSI
Text Label 9550 2000 0    50   ~ 0
SCLK
Text Label 9550 2100 0    50   ~ 0
MISO
Text Label 9550 2200 0    50   ~ 0
3V3
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J5
U 1 1 5EA66D07
P 10150 1800
F 0 "J5" H 10200 1050 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 10200 1150 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Vertical_Lock" H 10150 1800 50  0001 C CNN
F 3 "~" H 10150 1800 50  0001 C CNN
F 4 "N" H 10150 1800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    10150 1800
	1    0    0    1   
$EndComp
Connection ~ 9950 1300
Connection ~ 9950 2200
Wire Wire Line
	9550 1700 9950 1700
Text Label 9550 1700 0    50   ~ 0
~CS_PPG
Text Label 9550 1600 0    50   ~ 0
~CS_BPR
Wire Wire Line
	9950 1600 9550 1600
Wire Wire Line
	9550 1400 9950 1400
Wire Wire Line
	9550 1500 9950 1500
Wire Wire Line
	10650 1800 10650 1700
Wire Wire Line
	10650 1400 10450 1400
Connection ~ 10650 1800
Wire Wire Line
	10450 1500 10650 1500
Connection ~ 10650 1500
Wire Wire Line
	10650 1500 10650 1400
Wire Wire Line
	10450 1600 10650 1600
Connection ~ 10650 1600
Wire Wire Line
	10650 1600 10650 1500
Wire Wire Line
	10450 1700 10650 1700
Connection ~ 10650 1700
Wire Wire Line
	10650 1700 10650 1600
Text Label 9550 1400 0    50   ~ 0
SCL
Text Label 9550 1500 0    50   ~ 0
SDA
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5EA66D23
P 10650 1300
F 0 "#FLG0105" H 10650 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 10900 1300 50  0000 C CNN
F 2 "" H 10650 1300 50  0001 C CNN
F 3 "~" H 10650 1300 50  0001 C CNN
	1    10650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1300 10650 1400
Connection ~ 10650 1400
Wire Wire Line
	9550 1300 9950 1300
Wire Wire Line
	9550 1800 9950 1800
Wire Wire Line
	9550 1900 9950 1900
Wire Wire Line
	9550 2000 9950 2000
Wire Wire Line
	9550 2100 9950 2100
Wire Wire Line
	7150 3000 9400 3000
Wire Wire Line
	7150 3200 9500 3200
Wire Wire Line
	7150 3400 9400 3400
Wire Wire Line
	7150 3600 9300 3600
Wire Wire Line
	7150 3800 10000 3800
Wire Wire Line
	7150 4000 8700 4000
$EndSCHEMATC
