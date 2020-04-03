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
S 4000 2900 1050 1700
U 5E80F57C
F0 "ecg input protection" 50
F1 "ecg_input_protection.sch" 50
F2 "LA" O R 5050 3000 50 
F3 "RA" O R 5050 3500 50 
F4 "LL" O R 5050 4000 50 
F5 "IN_LA" I L 4000 3000 50 
F6 "IN_RA" I L 4000 3500 50 
F7 "IN_LL" I L 4000 4000 50 
F8 "RLD" I R 5050 4500 50 
F9 "OUT_RLD" O L 4000 4500 50 
$EndSheet
Wire Notes Line rgb(194, 0, 10)
	2100 3700 4000 3700
Text Notes 2500 3150 0    50   ~ 10
5kV isolation
Text Label 2400 3500 0    50   ~ 0
in_RA
Text Label 2350 4000 0    50   ~ 0
in_LL
Text Label 2350 3000 0    50   ~ 0
in_LA
Text Label 2350 4500 0    50   ~ 0
out_rld
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF37
P 2100 3000
AR Path="/5E80F57C/5E8CBF37" Ref="J?"  Part="1" 
AR Path="/5E8CBF37" Ref="J1"  Part="1" 
F 0 "J1" H 1950 2750 50  0000 C CNN
F 1 "n.p." H 1950 2850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 3000 50  0001 C CNN
F 3 "~" H 2100 3000 50  0001 C CNN
	1    2100 3000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF3D
P 2100 3500
AR Path="/5E80F57C/5E8CBF3D" Ref="J?"  Part="1" 
AR Path="/5E8CBF3D" Ref="J2"  Part="1" 
F 0 "J2" H 1950 3250 50  0000 C CNN
F 1 "n.p." H 1950 3350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 3500 50  0001 C CNN
F 3 "~" H 2100 3500 50  0001 C CNN
	1    2100 3500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF43
P 2100 4000
AR Path="/5E80F57C/5E8CBF43" Ref="J?"  Part="1" 
AR Path="/5E8CBF43" Ref="J3"  Part="1" 
F 0 "J3" H 1950 3750 50  0000 C CNN
F 1 "n.p." H 1950 3850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 4000 50  0001 C CNN
F 3 "~" H 2100 4000 50  0001 C CNN
	1    2100 4000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5E8CBF49
P 2100 4500
AR Path="/5E80F57C/5E8CBF49" Ref="J?"  Part="1" 
AR Path="/5E8CBF49" Ref="J4"  Part="1" 
F 0 "J4" H 1950 4250 50  0000 C CNN
F 1 "n.p." H 1950 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 4500 50  0001 C CNN
F 3 "~" H 2100 4500 50  0001 C CNN
	1    2100 4500
	-1   0    0    1   
$EndComp
Wire Notes Line rgb(194, 0, 0)
	2050 3200 4000 3200
Wire Notes Line rgb(194, 0, 0)
	2100 4200 4000 4200
Text Notes 2500 3650 0    50   ~ 10
5kV isolation
Text Notes 2500 4150 0    50   ~ 10
5kV isolation
Connection ~ 11050 3700
Wire Wire Line
	11050 3700 11050 3600
Connection ~ 11050 3800
Wire Wire Line
	11050 3800 11050 3700
Connection ~ 11050 3900
Wire Wire Line
	11050 3900 11050 3800
Wire Wire Line
	9100 4750 9100 4600
$Comp
L component:R R?
U 1 1 5EAAA6B2
P 9100 5350
AR Path="/5E8EE786/5EAAA6B2" Ref="R?"  Part="1" 
AR Path="/5EAAA6B2" Ref="R2"  Part="1" 
F 0 "R2" H 8950 5300 50  0000 L CNN
F 1 "100k" H 8850 5500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 5350 50  0001 C CNN
F 3 "" H 9100 5350 50  0001 C CNN
F 4 "1738916" H 3300 3500 50  0001 C CNN "Best.Nr."
F 5 "Farnell" H 3300 3500 50  0001 C CNN "Distributor"
F 6 "1738916" H 3300 3500 50  0001 C CNN "Farnell"
	1    9100 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 5550 9100 5500
Wire Wire Line
	9100 4950 9100 5200
Wire Wire Line
	10850 3800 11050 3800
Wire Wire Line
	10850 3700 11050 3700
Wire Wire Line
	11050 3600 10850 3600
Wire Wire Line
	10850 3900 11050 3900
Wire Wire Line
	5050 4500 5200 4500
Wire Wire Line
	9100 4950 7750 4950
Wire Wire Line
	5050 4000 5200 4000
Wire Wire Line
	6600 3500 5200 3500
Wire Wire Line
	6600 3000 5200 3000
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J5
U 1 1 5EAAEBA9
P 10550 3800
F 0 "J5" H 10600 3250 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 10600 3350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 10550 3800 50  0001 C CNN
F 3 "~" H 10550 3800 50  0001 C CNN
	1    10550 3800
	1    0    0    1   
$EndComp
$Sheet
S 6600 2900 950  2450
U 5E8EE786
F0 "ECG Sensor" 50
F1 "ecg_ads1292_sensor.sch" 50
F2 "LA" I L 6600 3000 50 
F3 "RA" I L 6600 3500 50 
F4 "LL" I L 6600 4000 50 
F5 "3V3" U R 7550 3000 50 
F6 "~CS" I R 7550 3500 50 
F7 "START" I R 7550 4950 50 
F8 "SCLK" I R 7550 3700 50 
F9 "DIN" I R 7550 3850 50 
F10 "~PWDN/RESET" I R 7550 4750 50 
F11 "DOUT" O R 7550 4000 50 
F12 "~DRDY" O R 7550 5150 50 
F13 "5V" I R 7550 3200 50 
F14 "RLD" O L 6600 4500 50 
$EndSheet
Wire Wire Line
	9850 3900 10350 3900
Wire Wire Line
	7550 3700 7750 3700
Wire Wire Line
	9750 3600 10350 3600
Wire Wire Line
	9850 3500 10350 3500
Wire Wire Line
	9850 3200 9850 3500
Wire Wire Line
	7550 3200 7750 3200
Wire Wire Line
	9950 4000 10350 4000
Wire Wire Line
	9850 3900 9850 4000
Wire Wire Line
	9750 3850 7750 3850
Wire Wire Line
	9950 4000 9950 3000
Wire Wire Line
	9750 3600 9750 3500
Wire Wire Line
	9850 4000 7750 4000
Wire Wire Line
	9750 3500 7750 3500
Wire Wire Line
	9950 3000 9100 3000
Wire Wire Line
	9100 4750 7750 4750
Wire Wire Line
	7550 5150 7750 5150
Connection ~ 9100 3000
Wire Wire Line
	9100 3000 7750 3000
Wire Wire Line
	9100 3000 9100 4300
$Comp
L component:R R?
U 1 1 5EAA9ADF
P 9100 4450
AR Path="/5E8EE786/5EAA9ADF" Ref="R?"  Part="1" 
AR Path="/5EAA9ADF" Ref="R1"  Part="1" 
F 0 "R1" H 8950 4400 50  0000 L CNN
F 1 "100k" H 8850 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 4450 50  0001 C CNN
F 3 "" H 9100 4450 50  0001 C CNN
F 4 "1738916" H 3300 2600 50  0001 C CNN "Best.Nr."
F 5 "Farnell" H 3300 2600 50  0001 C CNN "Distributor"
F 6 "1738916" H 3300 2600 50  0001 C CNN "Farnell"
	1    9100 4450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5EAF7471
P 11050 4200
F 0 "#PWR04" H 11050 3950 50  0001 C CNN
F 1 "GND" H 11100 4000 50  0000 C CNN
F 2 "" H 11050 4200 50  0001 C CNN
F 3 "" H 11050 4200 50  0001 C CNN
	1    11050 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP1
U 1 1 5EB0CE83
P 5200 3000
F 0 "TP1" H 5500 3100 50  0000 L CNN
F 1 " " H 5500 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5400 3000 50  0001 C CNN
F 3 "~" H 5400 3000 50  0001 C CNN
	1    5200 3000
	1    0    0    -1  
$EndComp
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5050 3000
$Comp
L Connector:TestPoint_Flag TP2
U 1 1 5EB0DB94
P 5200 3500
F 0 "TP2" H 5500 3600 50  0000 L CNN
F 1 " " H 5500 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5400 3500 50  0001 C CNN
F 3 "~" H 5400 3500 50  0001 C CNN
	1    5200 3500
	1    0    0    -1  
$EndComp
Connection ~ 5200 3500
Wire Wire Line
	5200 3500 5050 3500
$Comp
L Connector:TestPoint_Flag TP3
U 1 1 5EB0DFA1
P 5200 4000
F 0 "TP3" H 5500 4100 50  0000 L CNN
F 1 " " H 5500 4000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5400 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5200 4000
	1    0    0    -1  
$EndComp
Connection ~ 5200 4000
Wire Wire Line
	5200 4000 6600 4000
$Comp
L Connector:TestPoint_Flag TP4
U 1 1 5EB0E36F
P 5200 4500
F 0 "TP4" H 5500 4600 50  0000 L CNN
F 1 " " H 5500 4500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5400 4500 50  0001 C CNN
F 3 "~" H 5400 4500 50  0001 C CNN
	1    5200 4500
	1    0    0    -1  
$EndComp
Connection ~ 5200 4500
Wire Wire Line
	5200 4500 6600 4500
$Comp
L Connector:TestPoint_Flag TP6
U 1 1 5EB0E728
P 7750 3000
F 0 "TP6" H 8050 3100 50  0000 L CNN
F 1 " " H 8050 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 3000 50  0001 C CNN
F 3 "~" H 7950 3000 50  0001 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
Connection ~ 7750 3000
Wire Wire Line
	7750 3000 7550 3000
$Comp
L Connector:TestPoint_Flag TP7
U 1 1 5EB0EFF7
P 7750 3200
F 0 "TP7" H 8050 3300 50  0000 L CNN
F 1 " " H 8050 3200 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 3200 50  0001 C CNN
F 3 "~" H 7950 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
Connection ~ 7750 3200
Wire Wire Line
	7750 3200 9850 3200
$Comp
L Connector:TestPoint_Flag TP8
U 1 1 5EB0F24B
P 7750 3500
F 0 "TP8" H 8050 3600 50  0000 L CNN
F 1 " " H 8050 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 3500 50  0001 C CNN
F 3 "~" H 7950 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
Connection ~ 7750 3500
Wire Wire Line
	7750 3500 7550 3500
$Comp
L Connector:TestPoint_Flag TP9
U 1 1 5EB0F508
P 7750 3700
F 0 "TP9" H 8050 3800 50  0000 L CNN
F 1 " " H 8050 3700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 3700 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP10
U 1 1 5EB0F8EB
P 7750 3850
F 0 "TP10" H 8050 3950 50  0000 L CNN
F 1 " " H 8050 3850 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 3850 50  0001 C CNN
F 3 "~" H 7950 3850 50  0001 C CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
Connection ~ 7750 3850
Wire Wire Line
	7750 3850 7550 3850
$Comp
L Connector:TestPoint_Flag TP11
U 1 1 5EB0FBE7
P 7750 4000
F 0 "TP11" H 8050 4100 50  0000 L CNN
F 1 " " H 8050 4000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 4000 50  0001 C CNN
F 3 "~" H 7950 4000 50  0001 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
Connection ~ 7750 4000
Wire Wire Line
	7750 4000 7550 4000
$Comp
L Connector:TestPoint_Flag TP12
U 1 1 5EB0FF22
P 7750 4750
F 0 "TP12" H 8050 4850 50  0000 L CNN
F 1 " " H 8050 4750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 4750 50  0001 C CNN
F 3 "~" H 7950 4750 50  0001 C CNN
	1    7750 4750
	1    0    0    -1  
$EndComp
Connection ~ 7750 4750
Wire Wire Line
	7750 4750 7550 4750
$Comp
L Connector:TestPoint_Flag TP13
U 1 1 5EB10623
P 7750 4950
F 0 "TP13" H 8050 5050 50  0000 L CNN
F 1 " " H 8050 4950 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 4950 50  0001 C CNN
F 3 "~" H 7950 4950 50  0001 C CNN
	1    7750 4950
	1    0    0    -1  
$EndComp
Connection ~ 7750 4950
Wire Wire Line
	7750 4950 7550 4950
$Comp
L Connector:TestPoint_Flag TP14
U 1 1 5EB10862
P 7750 5150
F 0 "TP14" H 8050 5250 50  0000 L CNN
F 1 " " H 8050 5150 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 5150 50  0001 C CNN
F 3 "~" H 7950 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
$Comp
L component:GND #PWR?
U 1 1 5EB1856C
P 7750 5750
AR Path="/5E8EE786/5EB1856C" Ref="#PWR?"  Part="1" 
AR Path="/5EB1856C" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 7750 5500 50  0001 C CNN
F 1 "GND" H 7750 5600 50  0000 C CNN
F 2 "" H 7750 5750 50  0001 C CNN
F 3 "" H 7750 5750 50  0001 C CNN
	1    7750 5750
	1    0    0    -1  
$EndComp
$Comp
L component:GND #PWR?
U 1 1 5EB18F02
P 5200 5000
AR Path="/5E8EE786/5EB18F02" Ref="#PWR?"  Part="1" 
AR Path="/5EB18F02" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 5200 4750 50  0001 C CNN
F 1 "GND" H 5200 4850 50  0000 C CNN
F 2 "" H 5200 5000 50  0001 C CNN
F 3 "" H 5200 5000 50  0001 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP5
U 1 1 5EB28150
P 5200 4900
F 0 "TP5" H 5500 5000 50  0000 L CNN
F 1 " " H 5500 4900 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5400 4900 50  0001 C CNN
F 3 "~" H 5400 4900 50  0001 C CNN
	1    5200 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP15
U 1 1 5EB284C8
P 7750 5650
F 0 "TP15" H 8050 5750 50  0000 L CNN
F 1 " " H 8050 5650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 5650 50  0001 C CNN
F 3 "~" H 7950 5650 50  0001 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5650 7750 5750
Wire Wire Line
	5200 4900 5200 5000
Text Label 5700 3000 0    50   ~ 0
protected_LA
Text Label 5700 3500 0    50   ~ 0
protected_RA
Text Label 5700 4000 0    50   ~ 0
protected_LL
Text Label 5700 4500 0    50   ~ 0
protected_RLD
Text Label 8600 3000 0    50   ~ 0
3V3
Text Label 8600 3200 0    50   ~ 0
5V
Text Label 8600 3500 0    50   ~ 0
~CS
Text Label 8600 3700 0    50   ~ 0
SCLK
Text Label 8600 3850 0    50   ~ 0
DIN
Text Label 8600 4750 0    50   ~ 0
~PDN_RESET
Text Label 8600 4950 0    50   ~ 0
START
Text Label 8600 5150 0    50   ~ 0
~DRDY
Text Label 8600 4000 0    50   ~ 0
DOUT
Wire Wire Line
	2300 3000 4000 3000
Wire Wire Line
	2300 3500 4000 3500
Wire Wire Line
	2300 4000 4000 4000
Wire Wire Line
	2300 4500 4000 4500
$Comp
L component:GND #PWR?
U 1 1 5EC2A850
P 9100 5550
AR Path="/5E8EE786/5EC2A850" Ref="#PWR?"  Part="1" 
AR Path="/5EC2A850" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 9100 5300 50  0001 C CNN
F 1 "GND" H 9100 5400 50  0000 C CNN
F 2 "" H 9100 5550 50  0001 C CNN
F 3 "" H 9100 5550 50  0001 C CNN
	1    9100 5550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EC34E54
P 9950 3000
F 0 "#FLG0101" H 9950 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 3050 50  0000 C CNN
F 2 "" H 9950 3000 50  0001 C CNN
F 3 "~" H 9950 3000 50  0001 C CNN
	1    9950 3000
	1    0    0    -1  
$EndComp
Connection ~ 9950 3000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EC359A6
P 9850 3200
F 0 "#FLG0102" H 9850 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 9600 3250 50  0000 C CNN
F 2 "" H 9850 3200 50  0001 C CNN
F 3 "~" H 9850 3200 50  0001 C CNN
	1    9850 3200
	1    0    0    -1  
$EndComp
Connection ~ 9850 3200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5EC91E7F
P 11050 3000
F 0 "#FLG0103" H 11050 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 10800 3050 50  0000 C CNN
F 2 "" H 11050 3000 50  0001 C CNN
F 3 "~" H 11050 3000 50  0001 C CNN
	1    11050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3700 10350 3700
Wire Wire Line
	9750 3700 9750 3850
Wire Wire Line
	7750 3700 9650 3700
Wire Wire Line
	9650 3700 9650 3800
Wire Wire Line
	9650 3800 10350 3800
Connection ~ 7750 3700
Wire Wire Line
	11050 3900 11050 4200
Wire Wire Line
	10350 4000 10350 4100
Wire Wire Line
	10350 4100 10900 4100
Wire Wire Line
	10900 4100 10900 4000
Wire Wire Line
	10900 4000 10850 4000
Connection ~ 10350 4000
Wire Wire Line
	10850 3500 10900 3500
Wire Wire Line
	10900 3500 10900 3400
Wire Wire Line
	10900 3400 10350 3400
Wire Wire Line
	10350 3400 10350 3500
Connection ~ 10350 3500
$Comp
L Mechanical:MountingHole H1
U 1 1 5E88FB4A
P 1300 6450
F 0 "H1" H 1400 6500 50  0000 L CNN
F 1 "MountingHole" H 1400 6450 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 1300 6450 50  0001 C CNN
F 3 "~" H 1300 6450 50  0001 C CNN
	1    1300 6450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E88FB50
P 1300 6750
F 0 "H2" H 1400 6800 50  0000 L CNN
F 1 "MountingHole" H 1400 6750 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 1300 6750 50  0001 C CNN
F 3 "~" H 1300 6750 50  0001 C CNN
	1    1300 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E88FB56
P 1300 7050
F 0 "H3" H 1400 7100 50  0000 L CNN
F 1 "MountingHole" H 1400 7050 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 1300 7050 50  0001 C CNN
F 3 "~" H 1300 7050 50  0001 C CNN
	1    1300 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E88FB5C
P 1300 7300
F 0 "H4" H 1400 7350 50  0000 L CNN
F 1 "MountingHole" H 1400 7300 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 1300 7300 50  0001 C CNN
F 3 "~" H 1300 7300 50  0001 C CNN
	1    1300 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 3600 11050 3000
Connection ~ 11050 3600
$Comp
L component:R R30
U 1 1 5E89A389
P 2850 7250
F 0 "R30" V 2600 7250 50  0000 C CNN
F 1 "n.p." V 2700 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2780 7250 50  0001 C CNN
F 3 "" H 2850 7250 50  0001 C CNN
	1    2850 7250
	0    1    1    0   
$EndComp
$Comp
L component:R R29
U 1 1 5E89B1A8
P 2850 6850
F 0 "R29" V 2600 6850 50  0000 C CNN
F 1 "n.p." V 2700 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2780 6850 50  0001 C CNN
F 3 "" H 2850 6850 50  0001 C CNN
	1    2850 6850
	0    1    1    0   
$EndComp
$Comp
L component:R R27
U 1 1 5E89B868
P 2850 6450
F 0 "R27" V 2600 6450 50  0000 C CNN
F 1 "n.p." V 2700 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2780 6450 50  0001 C CNN
F 3 "" H 2850 6450 50  0001 C CNN
	1    2850 6450
	0    1    1    0   
$EndComp
$Comp
L component:R R26
U 1 1 5E89BC88
P 2850 6050
F 0 "R26" V 2600 6050 50  0000 C CNN
F 1 "n.p." V 2700 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2780 6050 50  0001 C CNN
F 3 "" H 2850 6050 50  0001 C CNN
	1    2850 6050
	0    1    1    0   
$EndComp
$Comp
L component:R R25
U 1 1 5E89C150
P 2850 5650
F 0 "R25" V 2600 5650 50  0000 C CNN
F 1 "n.p." V 2700 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.53x4.00mm_HandSolder" V 2780 5650 50  0001 C CNN
F 3 "" H 2850 5650 50  0001 C CNN
	1    2850 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5650 2700 5650
Wire Wire Line
	3000 5650 3050 5650
Wire Wire Line
	3050 5650 3050 6050
Wire Wire Line
	2650 6050 2700 6050
Connection ~ 2650 6050
Wire Wire Line
	2650 6050 2650 5650
Wire Wire Line
	3000 6050 3050 6050
Connection ~ 3050 6050
Wire Wire Line
	3050 6050 3050 6450
Wire Wire Line
	3050 6450 3000 6450
Connection ~ 3050 6450
Wire Wire Line
	3050 6450 3050 6850
Wire Wire Line
	2700 6450 2650 6450
Connection ~ 2650 6450
Wire Wire Line
	2650 6450 2650 6050
Wire Wire Line
	2650 6850 2700 6850
Connection ~ 2650 6850
Wire Wire Line
	2650 6850 2650 6450
Wire Wire Line
	3000 6850 3050 6850
Connection ~ 3050 6850
Wire Wire Line
	3050 6850 3050 7250
Wire Wire Line
	3050 7250 3000 7250
Connection ~ 3050 7250
Wire Wire Line
	2700 7250 2650 7250
Connection ~ 2650 7250
Wire Wire Line
	2650 7250 2650 6850
Wire Wire Line
	3050 7250 3050 7350
Wire Wire Line
	2650 7350 2650 7250
$Comp
L component:GND #PWR0104
U 1 1 5E899B61
P 3050 7350
F 0 "#PWR0104" H 3050 7100 50  0001 C CNN
F 1 "GND" H 3100 7150 50  0000 C CNN
F 2 "" H 3050 7350 50  0001 C CNN
F 3 "" H 3050 7350 50  0001 C CNN
	1    3050 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0105
U 1 1 5E898834
P 2650 7350
F 0 "#PWR0105" H 2650 7150 50  0001 C CNN
F 1 "GNDPWR" H 2700 7150 50  0000 C CNN
F 2 "" H 2650 7300 50  0001 C CNN
F 3 "" H 2650 7300 50  0001 C CNN
	1    2650 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5E8D7331
P 2100 6950
F 0 "H5" H 2200 7050 50  0000 L CNN
F 1 "n.p." H 2200 6950 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2100 6950 50  0001 C CNN
F 3 "~" H 2100 6950 50  0001 C CNN
	1    2100 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7050 2100 7250
Wire Wire Line
	2100 7250 2500 7250
Wire Wire Line
	8600 5150 7750 5150
Connection ~ 7750 5150
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E91687C
P 2500 6750
F 0 "#FLG0104" H 2500 6825 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 6800 50  0000 C CNN
F 2 "" H 2500 6750 50  0001 C CNN
F 3 "~" H 2500 6750 50  0001 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6750 2500 7250
Connection ~ 2500 7250
Wire Wire Line
	2500 7250 2650 7250
$EndSCHEMATC
