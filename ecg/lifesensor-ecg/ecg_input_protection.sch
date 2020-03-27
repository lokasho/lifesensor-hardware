EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:R R2
U 1 1 5E81635D
P 2650 3000
F 0 "R2" V 2500 2850 50  0000 C CNN
F 1 "R" V 2750 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2580 3000 50  0001 C CNN
F 3 "~" H 2650 3000 50  0001 C CNN
	1    2650 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E816990
P 2650 4000
F 0 "R3" V 2500 3850 50  0000 C CNN
F 1 "R" V 2750 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2580 4000 50  0001 C CNN
F 3 "~" H 2650 4000 50  0001 C CNN
	1    2650 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3000 2500 3000
Wire Wire Line
	2800 3000 3000 3000
Wire Wire Line
	2800 4000 3000 4000
Wire Wire Line
	4000 3000 4350 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 4000 4350 4000
Connection ~ 4000 4000
Wire Notes Line rgb(194, 0, 10)
	950  3500 1600 3500
Wire Notes Line rgb(255, 0, 0)
	1600 3500 2650 3500
Wire Wire Line
	4000 4000 4000 4300
$Comp
L Device:Lamp_Neon NE6
U 1 1 5E8104DC
P 4000 4500
F 0 "NE6" H 4050 4650 50  0000 L CNN
F 1 "Lamp_Neon" H 4050 4350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 4000 4600 50  0001 C CNN
F 3 "~" V 4000 4600 50  0001 C CNN
	1    4000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3000 4000 3300
$Comp
L Device:Lamp_Neon NE5
U 1 1 5E8102C1
P 4000 3500
F 0 "NE5" H 4050 3650 50  0000 L CNN
F 1 "Lamp_Neon" H 4050 3350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 4000 3600 50  0001 C CNN
F 3 "~" V 4000 3600 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
Wire Notes Line
	4500 3500 2650 3500
Text Notes 3500 1700 0    50   ~ 10
150V isolation\n
Text Notes 2400 1500 0    50   ~ 10
5kV isolation
$Comp
L Device:R R6
U 1 1 5E83CA61
P 4500 3000
F 0 "R6" V 4400 3100 50  0000 C CNN
F 1 "R" V 4600 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 3000 50  0001 C CNN
F 3 "~" H 4500 3000 50  0001 C CNN
	1    4500 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E83CE2D
P 4500 4000
F 0 "R7" V 4400 4100 50  0000 C CNN
F 1 "R" V 4600 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4000 50  0001 C CNN
F 3 "~" H 4500 4000 50  0001 C CNN
	1    4500 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3000 3000 3300
$Comp
L Device:Lamp_Neon NE2
U 1 1 5E86C10F
P 3000 3500
F 0 "NE2" H 3050 3650 50  0000 L CNN
F 1 "Lamp_Neon" H 3050 3350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 3000 3600 50  0001 C CNN
F 3 "~" V 3000 3600 50  0001 C CNN
	1    3000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4000 3000 3700
Connection ~ 3000 4000
Wire Wire Line
	3000 4000 4000 4000
Connection ~ 3000 3000
Wire Wire Line
	3000 3000 4000 3000
Text Label 1750 3000 0    50   ~ 0
in_ch2
Text Label 1750 4000 0    50   ~ 0
in_ch3
Text Label 3050 3000 0    50   ~ 0
neon_ch2
Text Label 3050 4000 0    50   ~ 0
neon_ch3
Wire Wire Line
	3000 1900 4000 1900
Connection ~ 3000 1900
Text Label 3050 1900 0    50   ~ 0
neon_ch1
Text Label 1750 1900 0    50   ~ 0
in_ch1
Wire Wire Line
	3000 3000 3000 2600
$Comp
L Device:Lamp_Neon NE1
U 1 1 5E86AF99
P 3000 2400
F 0 "NE1" H 3050 2550 50  0000 L CNN
F 1 "Lamp_Neon" H 3050 2250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 3000 2500 50  0001 C CNN
F 3 "~" V 3000 2500 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1900 3000 2200
$Comp
L Device:R R5
U 1 1 5E83C3B6
P 4500 1900
F 0 "R5" V 4400 2000 50  0000 C CNN
F 1 "R" V 4600 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 1900 50  0001 C CNN
F 3 "~" H 4500 1900 50  0001 C CNN
	1    4500 1900
	0    1    1    0   
$EndComp
Wire Notes Line rgb(194, 0, 0)
	950  2400 2650 2400
$Comp
L Device:Lamp_Neon NE4
U 1 1 5E80F86A
P 4000 2400
F 0 "NE4" H 4050 2550 50  0000 L CNN
F 1 "Lamp_Neon" H 4050 2250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 4000 2500 50  0001 C CNN
F 3 "~" V 4000 2500 50  0001 C CNN
	1    4000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1900 4000 2200
Connection ~ 4000 1900
Wire Wire Line
	4000 1900 4350 1900
Wire Wire Line
	2800 1900 3000 1900
$Comp
L Device:R R1
U 1 1 5E814445
P 2650 1900
F 0 "R1" V 2550 1750 50  0000 C CNN
F 1 "R" V 2750 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2580 1900 50  0001 C CNN
F 3 "~" H 2650 1900 50  0001 C CNN
	1    2650 1900
	0    1    1    0   
$EndComp
Text Label 3050 5000 0    50   ~ 0
neon_rld
Text Label 1750 5000 0    50   ~ 0
out_rld
$Comp
L Device:R R8
U 1 1 5E88DEF5
P 4500 5000
F 0 "R8" V 4400 5100 50  0000 C CNN
F 1 "R" V 4600 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 5000 50  0001 C CNN
F 3 "~" H 4500 5000 50  0001 C CNN
	1    4500 5000
	0    1    1    0   
$EndComp
Wire Notes Line
	4500 5500 2650 5500
$Comp
L Device:Lamp_Neon NE7
U 1 1 5E88DEFE
P 4000 5500
F 0 "NE7" H 4050 5650 50  0000 L CNN
F 1 "Lamp_Neon" H 4050 5350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 4000 5600 50  0001 C CNN
F 3 "~" V 4000 5600 50  0001 C CNN
	1    4000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5000 4000 5300
Connection ~ 4000 5000
Wire Wire Line
	4000 5000 4350 5000
$Comp
L Device:R R4
U 1 1 5E88DF22
P 2650 5000
F 0 "R4" V 2550 4850 50  0000 C CNN
F 1 "R" V 2750 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2580 5000 50  0001 C CNN
F 3 "~" H 2650 5000 50  0001 C CNN
	1    2650 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4000 3000 4300
Wire Wire Line
	3000 5000 3000 4700
$Comp
L Device:Lamp_Neon NE3
U 1 1 5E88DEEE
P 3000 4500
F 0 "NE3" H 3050 4650 50  0000 L CNN
F 1 "Lamp_Neon" H 3050 4350 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" V 3000 4600 50  0001 C CNN
F 3 "~" V 3000 4600 50  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5000 3000 5000
Connection ~ 3000 5000
Wire Wire Line
	3000 5000 4000 5000
Wire Notes Line
	4500 4500 2650 4500
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 5E8B37F6
P 7350 3200
F 0 "J2" H 7400 3200 50  0000 L CNN
F 1 "Conn_01x08_Female" H 7400 3100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 7350 3200 50  0001 C CNN
F 3 "~" H 7350 3200 50  0001 C CNN
	1    7350 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	7150 2800 6550 2800
Wire Wire Line
	6550 2800 6550 1900
Wire Wire Line
	7150 3200 6550 3200
Wire Wire Line
	7150 3400 6750 3400
Wire Wire Line
	6750 3400 6750 5000
Wire Wire Line
	4000 5800 4850 5800
Wire Wire Line
	6850 5800 6850 3500
Wire Wire Line
	4000 5700 4000 5800
Wire Wire Line
	6850 3500 7150 3500
Wire Wire Line
	5600 5650 5600 5800
Connection ~ 5600 5800
Wire Wire Line
	5600 5800 6850 5800
Wire Wire Line
	6550 3200 6550 4000
Wire Wire Line
	4000 4800 4850 4800
Wire Wire Line
	6650 4800 6650 3300
Wire Wire Line
	6650 3300 7150 3300
Wire Wire Line
	4000 4700 4000 4800
Wire Wire Line
	5600 4650 5600 4800
Connection ~ 5600 4800
Wire Wire Line
	5600 4800 6650 4800
Wire Wire Line
	4000 3800 4850 3800
Wire Wire Line
	6450 3800 6450 3100
Wire Wire Line
	4000 3700 4000 3800
Wire Wire Line
	6450 3100 7150 3100
Wire Wire Line
	5600 3650 5600 3800
Connection ~ 5600 3800
Wire Wire Line
	5600 3800 6450 3800
Wire Wire Line
	4000 2600 4000 2800
Wire Wire Line
	4000 2800 4850 2800
Wire Wire Line
	5600 2550 5600 2800
Wire Wire Line
	6450 2900 7150 2900
Text Label 5950 1900 0    50   ~ 0
out_ch1
Text Label 5950 2800 0    50   ~ 0
gn_ch1
Text Label 5950 3000 0    50   ~ 0
out_ch2
Text Label 5950 3800 0    50   ~ 0
gnd_ch2
Text Label 5950 4000 0    50   ~ 0
out_ch3
Text Label 5950 4800 0    50   ~ 0
gnd_ch3
Text Label 5950 5000 0    50   ~ 0
in_rld
Text Label 5950 5800 0    50   ~ 0
gnd_rld
$Comp
L Device:C_Small C1
U 1 1 5E8E01C1
P 4850 2400
F 0 "C1" H 4950 2450 50  0000 L CNN
F 1 "C_Small" H 4950 2400 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4850 2400 50  0001 C CNN
F 3 "~" H 4850 2400 50  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1900 4850 2300
Connection ~ 4850 1900
Wire Wire Line
	4850 1900 4650 1900
Wire Wire Line
	4850 2500 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	4850 2800 5600 2800
$Comp
L Device:C_Small C2
U 1 1 5E8F2B04
P 4850 3500
F 0 "C2" H 4950 3550 50  0000 L CNN
F 1 "C_Small" H 4950 3500 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4850 3500 50  0001 C CNN
F 3 "~" H 4850 3500 50  0001 C CNN
	1    4850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3000 4850 3400
Wire Wire Line
	4850 3600 4850 3800
Connection ~ 4850 3800
Wire Wire Line
	4850 3800 5600 3800
$Comp
L Device:C_Small C3
U 1 1 5E8F5FD1
P 4850 4500
F 0 "C3" H 4950 4550 50  0000 L CNN
F 1 "C_Small" H 4950 4500 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4850 4500 50  0001 C CNN
F 3 "~" H 4850 4500 50  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4000 4850 4400
Wire Wire Line
	4850 4600 4850 4800
Connection ~ 4850 4800
Wire Wire Line
	4850 4800 5600 4800
$Comp
L Device:C_Small C4
U 1 1 5E8F98AE
P 4850 5500
F 0 "C4" H 4950 5550 50  0000 L CNN
F 1 "C_Small" H 4950 5500 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4850 5500 50  0001 C CNN
F 3 "~" H 4850 5500 50  0001 C CNN
	1    4850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5000 4850 5400
Wire Wire Line
	4850 5600 4850 5800
Connection ~ 4850 5800
Wire Wire Line
	4850 5800 5600 5800
Wire Notes Line
	4500 3500 4500 2900
Wire Notes Line
	4500 2900 3500 2900
Wire Notes Line
	3500 2900 3500 2400
Wire Notes Line
	4500 2400 4500 1800
Wire Notes Line
	4500 1800 2650 1800
Wire Notes Line
	4500 2400 2650 2400
Wire Wire Line
	6450 2900 6450 2800
Wire Wire Line
	6450 2800 5600 2800
Connection ~ 5600 2800
Wire Notes Line
	3500 3500 3500 3900
Wire Notes Line
	3500 3900 4500 3900
Wire Notes Line
	4500 3900 4500 4500
Wire Notes Line
	3500 4500 3500 4900
Wire Notes Line
	3500 4900 4500 4900
Wire Notes Line
	4500 4900 4500 5500
Wire Notes Line rgb(182, 0, 52)
	2650 1550 2650 5500
Connection ~ 4850 5000
Wire Wire Line
	4850 5000 4650 5000
Connection ~ 4850 4000
Wire Wire Line
	4850 4000 4650 4000
Connection ~ 4850 3000
Wire Wire Line
	4850 3000 4650 3000
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5E803F23
P 950 1900
F 0 "J1" H 800 1650 50  0000 C CNN
F 1 "Conn_01x01_Female" H 800 1750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 950 1900 50  0001 C CNN
F 3 "~" H 950 1900 50  0001 C CNN
	1    950  1900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5E804787
P 950 3000
F 0 "J3" H 800 2750 50  0000 C CNN
F 1 "Conn_01x01_Female" H 800 2850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 950 3000 50  0001 C CNN
F 3 "~" H 950 3000 50  0001 C CNN
	1    950  3000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5E804907
P 950 4000
F 0 "J4" H 800 3750 50  0000 C CNN
F 1 "Conn_01x01_Female" H 800 3850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 950 4000 50  0001 C CNN
F 3 "~" H 950 4000 50  0001 C CNN
	1    950  4000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5E804B2F
P 950 5000
F 0 "J5" H 800 4750 50  0000 C CNN
F 1 "Conn_01x01_Female" H 800 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 950 5000 50  0001 C CNN
F 3 "~" H 950 5000 50  0001 C CNN
	1    950  5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1900 2500 1900
Wire Wire Line
	1150 5000 2500 5000
Wire Notes Line rgb(194, 0, 0)
	950  4500 2650 4500
Wire Wire Line
	1150 4000 2500 4000
Wire Wire Line
	4850 5000 5600 5000
Wire Wire Line
	4850 4000 5600 4000
Wire Wire Line
	4850 3000 5600 3000
Wire Wire Line
	4850 1900 5600 1900
$Comp
L Device:D_Zener_ALT D4
U 1 1 5E81C3D1
P 5600 3500
F 0 "D4" V 5550 3600 50  0000 L CNN
F 1 "D_Zener_ALT" V 5600 3600 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 3500 50  0001 C CNN
F 3 "~" H 5600 3500 50  0001 C CNN
	1    5600 3500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D3
U 1 1 5E81CFF5
P 5600 3200
F 0 "D3" V 5650 3100 50  0000 R CNN
F 1 "D_Zener_ALT" V 5600 3100 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 3200 50  0001 C CNN
F 3 "~" H 5600 3200 50  0001 C CNN
	1    5600 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener_ALT D2
U 1 1 5E81E62C
P 5600 2400
F 0 "D2" V 5550 2500 50  0000 L CNN
F 1 "D_Zener_ALT" V 5600 2500 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 2400 50  0001 C CNN
F 3 "~" H 5600 2400 50  0001 C CNN
	1    5600 2400
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D1
U 1 1 5E81E632
P 5600 2100
F 0 "D1" V 5650 2000 50  0000 R CNN
F 1 "D_Zener_ALT" V 5600 2000 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 2100 50  0001 C CNN
F 3 "~" H 5600 2100 50  0001 C CNN
	1    5600 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener_ALT D6
U 1 1 5E8208D9
P 5600 4500
F 0 "D6" V 5550 4600 50  0000 L CNN
F 1 "D_Zener_ALT" V 5600 4600 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 4500 50  0001 C CNN
F 3 "~" H 5600 4500 50  0001 C CNN
	1    5600 4500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D5
U 1 1 5E8208DF
P 5600 4200
F 0 "D5" V 5650 4100 50  0000 R CNN
F 1 "D_Zener_ALT" V 5600 4100 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 4200 50  0001 C CNN
F 3 "~" H 5600 4200 50  0001 C CNN
	1    5600 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener_ALT D8
U 1 1 5E8229A6
P 5600 5500
F 0 "D8" V 5550 5600 50  0000 L CNN
F 1 "D_Zener_ALT" V 5600 5600 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 5500 50  0001 C CNN
F 3 "~" H 5600 5500 50  0001 C CNN
	1    5600 5500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D7
U 1 1 5E8229AC
P 5600 5200
F 0 "D7" V 5650 5100 50  0000 R CNN
F 1 "D_Zener_ALT" V 5600 5100 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 5200 50  0001 C CNN
F 3 "~" H 5600 5200 50  0001 C CNN
	1    5600 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 5050 5600 5000
Connection ~ 5600 5000
Wire Wire Line
	5600 5000 6750 5000
Wire Wire Line
	5600 4050 5600 4000
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 6550 4000
Wire Wire Line
	5600 3050 5600 3000
Connection ~ 5600 3000
Wire Wire Line
	5600 3000 7150 3000
Wire Wire Line
	5600 1950 5600 1900
Connection ~ 5600 1900
Wire Wire Line
	5600 1900 6550 1900
$EndSCHEMATC
