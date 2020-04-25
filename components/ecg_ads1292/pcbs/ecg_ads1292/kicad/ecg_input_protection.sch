EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "ECG Defibrillator Input Protection"
Date "2020-03-28"
Rev "0"
Comp "Cadus e.V."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1800 2900 2150 2900
Wire Wire Line
	1800 4400 2150 4400
Wire Wire Line
	4000 2900 4350 2900
Connection ~ 4000 2900
Wire Wire Line
	4000 4400 4350 4400
Connection ~ 4000 4400
Wire Notes Line rgb(194, 0, 10)
	950  3400 1600 3400
Wire Notes Line rgb(255, 0, 0)
	1600 3400 1650 3400
Wire Wire Line
	4000 4400 4000 4700
Wire Wire Line
	4000 2900 4000 3200
Wire Notes Line
	4500 3400 2300 3400
Text Notes 2300 1050 0    50   ~ 10
150V isolation\n
Text Notes 1350 1750 0    50   ~ 10
5kV isolation
Text Label 3050 2900 0    50   ~ 0
neon_RA
Text Label 3050 4400 0    50   ~ 0
neon_LL
Text Label 3050 1300 0    50   ~ 0
neon_LA
Connection ~ 4000 1300
Wire Wire Line
	4000 1300 4350 1300
Text Label 3050 5850 0    50   ~ 0
neon_rld
Wire Notes Line
	4500 6350 2300 6350
Wire Wire Line
	4000 5850 4000 6150
Connection ~ 4000 5850
Wire Wire Line
	4000 5850 4350 5850
Wire Wire Line
	1800 5850 2150 5850
Wire Notes Line
	4500 4900 2300 4900
Wire Wire Line
	4000 6650 5200 6650
Wire Wire Line
	4000 6550 4000 6650
Wire Wire Line
	5950 6400 5950 6650
Wire Wire Line
	4000 5200 5200 5200
Wire Wire Line
	4000 5100 4000 5200
Wire Wire Line
	5950 4950 5950 5200
Wire Wire Line
	4000 3700 5200 3700
Wire Wire Line
	4000 3600 4000 3700
Wire Wire Line
	5950 3450 5950 3700
Wire Wire Line
	4000 2000 4000 2100
Wire Wire Line
	5950 1900 5950 2100
Text Label 6150 1300 0    50   ~ 0
out_LA
Text Label 6150 2900 0    50   ~ 0
out_RA
Text Label 6300 5850 0    50   ~ 0
in_rld
Wire Wire Line
	5200 1300 5200 1650
Connection ~ 5200 1300
Wire Wire Line
	5200 1300 4650 1300
Wire Wire Line
	5200 1850 5200 2100
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5950 2100
Wire Wire Line
	5200 2900 5200 3200
Wire Wire Line
	5200 3400 5200 3700
Connection ~ 5200 3700
Wire Wire Line
	5200 4400 5200 4700
Wire Wire Line
	5200 4900 5200 5200
Connection ~ 5200 5200
Wire Wire Line
	5200 5200 5950 5200
Wire Wire Line
	5200 5850 5200 6150
Wire Wire Line
	5200 6350 5200 6650
Connection ~ 5200 6650
Wire Wire Line
	5200 6650 5950 6650
Wire Notes Line
	4500 3400 4500 2200
Wire Notes Line
	4500 2200 3500 2200
Wire Notes Line
	3500 2200 3500 1800
Wire Notes Line
	4500 1800 4500 1100
Wire Notes Line
	4500 1100 2300 1100
Wire Notes Line
	4500 1800 2300 1800
Wire Notes Line
	3500 3400 3500 3800
Wire Notes Line
	3500 3800 4500 3800
Wire Notes Line
	4500 3800 4500 4900
Wire Notes Line
	3500 4900 3500 5300
Wire Notes Line
	3500 5300 4500 5300
Wire Notes Line
	4500 5300 4500 6350
Connection ~ 5200 5850
Wire Wire Line
	5200 5850 4650 5850
Connection ~ 5200 4400
Wire Wire Line
	5200 4400 4650 4400
Connection ~ 5200 2900
Wire Wire Line
	5200 2900 4650 2900
Wire Wire Line
	5200 5850 5950 5850
Wire Wire Line
	5200 2900 5950 2900
Wire Wire Line
	5200 1300 5950 1300
Wire Wire Line
	5950 6100 5950 5850
Connection ~ 5950 5850
Wire Wire Line
	5950 3150 5950 2900
Wire Wire Line
	5950 1600 5950 1300
Connection ~ 5950 1300
Wire Notes Line rgb(194, 0, 0)
	950  1800 2300 1800
Wire Notes Line rgb(194, 0, 0)
	1600 3400 2300 3400
Wire Notes Line rgb(194, 0, 0)
	950  4900 2350 4900
Wire Wire Line
	2450 4400 4000 4400
Wire Wire Line
	2450 5850 4000 5850
Text Notes 8650 2300 0    50   ~ 0
n.p. -> do not place
Text Notes 1350 3350 0    50   ~ 10
5kV isolation
Text Notes 1350 4850 0    50   ~ 10
5kV isolation
Text Notes 2300 1750 0    50   ~ 10
150V isolation\n
Text Notes 2350 3350 0    50   ~ 10
150V isolation\n
Text Notes 2350 4850 0    50   ~ 10
150V isolation\n
Text Notes 2350 6300 0    50   ~ 10
150V isolation\n
Text Label 1850 1300 0    50   ~ 0
in2_LA
Text Label 1850 2900 0    50   ~ 0
in2_RA
Text Label 1850 4400 0    50   ~ 0
in2_LL
Text Label 1850 5850 0    50   ~ 0
out2_rld
Text HLabel 6800 1300 2    50   Output ~ 0
LA
Text HLabel 6800 4400 2    50   Output ~ 0
LL
Text HLabel 6800 5850 2    50   Input ~ 0
RLD
Connection ~ 5950 2900
Text HLabel 6800 2900 2    50   Output ~ 0
RA
Connection ~ 5950 2100
Connection ~ 5950 3700
Connection ~ 5950 5200
Connection ~ 5950 6650
Connection ~ 5950 4400
Wire Wire Line
	5950 4650 5950 4400
Wire Wire Line
	5200 4400 5950 4400
Text Label 6150 4400 0    50   ~ 0
out_LL
Wire Wire Line
	5950 5200 6700 5200
Wire Wire Line
	5950 2100 6700 2100
Wire Wire Line
	5950 6650 6700 6650
Text HLabel 1000 1300 0    50   Input ~ 0
IN_LA
Text HLabel 1000 2900 0    50   Input ~ 0
IN_RA
Text HLabel 1000 4400 0    50   Input ~ 0
IN_LL
Wire Wire Line
	1500 4400 1000 4400
Wire Wire Line
	1500 2900 1000 2900
Wire Wire Line
	1500 1300 1000 1300
Text HLabel 1000 5850 0    50   Output ~ 0
OUT_RLD
Wire Wire Line
	1500 5850 1000 5850
Wire Wire Line
	5950 3700 6700 3700
Wire Wire Line
	5950 1300 6800 1300
Wire Wire Line
	5950 2900 6800 2900
Wire Wire Line
	5950 4400 6800 4400
Wire Wire Line
	5950 5850 6800 5850
$Comp
L power:GNDPWR #PWR0106
U 1 1 5E895216
P 6700 2100
F 0 "#PWR0106" H 6700 1900 50  0001 C CNN
F 1 "GNDPWR" H 6750 1900 50  0000 C CNN
F 2 "" H 6700 2050 50  0001 C CNN
F 3 "" H 6700 2050 50  0001 C CNN
	1    6700 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0107
U 1 1 5E895CD4
P 6700 3700
F 0 "#PWR0107" H 6700 3500 50  0001 C CNN
F 1 "GNDPWR" H 6750 3500 50  0000 C CNN
F 2 "" H 6700 3650 50  0001 C CNN
F 3 "" H 6700 3650 50  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0108
U 1 1 5E896454
P 6700 5200
F 0 "#PWR0108" H 6700 5000 50  0001 C CNN
F 1 "GNDPWR" H 6750 5000 50  0000 C CNN
F 2 "" H 6700 5150 50  0001 C CNN
F 3 "" H 6700 5150 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0109
U 1 1 5E896BF1
P 6700 6650
F 0 "#PWR0109" H 6700 6450 50  0001 C CNN
F 1 "GNDPWR" H 6750 6450 50  0000 C CNN
F 2 "" H 6700 6600 50  0001 C CNN
F 3 "" H 6700 6600 50  0001 C CNN
	1    6700 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3700 5950 3700
Wire Wire Line
	8750 3950 8000 3950
$Comp
L power:GNDPWR #PWR0111
U 1 1 5EA53B97
P 8900 4550
F 0 "#PWR0111" H 8900 4350 50  0001 C CNN
F 1 "GNDPWR" H 8950 4350 50  0000 C CNN
F 2 "" H 8900 4500 50  0001 C CNN
F 3 "" H 8900 4500 50  0001 C CNN
	1    8900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4550 8900 4550
Text HLabel 8750 3900 0    50   Input ~ 0
IN_LA
Wire Wire Line
	8750 3900 8750 3950
$Comp
L Device:R R4
U 1 1 5E81635D
P 1650 2900
F 0 "R4" V 1500 2750 50  0000 C CNN
F 1 "10k, 1W, carbon" V 1750 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1580 2900 50  0001 C CNN
F 3 "~" H 1650 2900 50  0001 C CNN
F 4 "N" H 1650 2900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E816990
P 1650 4400
F 0 "R5" V 1500 4250 50  0000 C CNN
F 1 "10k, 1W, carbon" V 1750 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1580 4400 50  0001 C CNN
F 3 "~" H 1650 4400 50  0001 C CNN
F 4 "N" H 1650 4400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5E83CA61
P 4500 2900
F 0 "R12" V 4400 3000 50  0000 C CNN
F 1 "10k, 250mW" V 4600 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 2900 50  0001 C CNN
F 3 "~" H 4500 2900 50  0001 C CNN
F 4 "N" H 4500 2900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4500 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E83CE2D
P 4500 4400
F 0 "R13" V 4400 4500 50  0000 C CNN
F 1 "10k, 250mW" V 4600 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4400 50  0001 C CNN
F 3 "~" H 4500 4400 50  0001 C CNN
F 4 "N" H 4500 4400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4500 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E83C3B6
P 4500 1300
F 0 "R11" V 4400 1400 50  0000 C CNN
F 1 "10k, 250mW" V 4600 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 1300 50  0001 C CNN
F 3 "~" H 4500 1300 50  0001 C CNN
F 4 "Y" H 4500 1300 50  0001 C CNN "Spice_Netlist_Enabled"
F 5 "R" H 4500 1300 50  0001 C CNN "Spice_Primitive"
F 6 "10k" H 4500 1300 50  0001 C CNN "Spice_Model"
	1    4500 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5E8819FC
P 4500 5850
F 0 "R14" V 4400 5950 50  0000 C CNN
F 1 "10k, 250mW" V 4600 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 5850 50  0001 C CNN
F 3 "~" H 4500 5850 50  0001 C CNN
F 4 "N" H 4500 5850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4500 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E8819FE
P 1650 5850
F 0 "R6" V 1550 5700 50  0000 C CNN
F 1 "10k, 1W, carbon" V 1750 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1580 5850 50  0001 C CNN
F 3 "~" H 1650 5850 50  0001 C CNN
F 4 "N" H 1650 5850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 5850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E8E01C1
P 5200 1750
F 0 "C1" H 5300 1800 50  0000 L CNN
F 1 "n.p." H 5300 1750 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5200 1750 50  0001 C CNN
F 3 "~" H 5200 1750 50  0001 C CNN
F 4 "N" H 5200 1750 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E881A04
P 5200 3300
F 0 "C2" H 5300 3350 50  0000 L CNN
F 1 "n.p." H 5300 3300 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5200 3300 50  0001 C CNN
F 3 "~" H 5200 3300 50  0001 C CNN
F 4 "N" H 5200 3300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E8F5FD1
P 5200 4800
F 0 "C3" H 5300 4850 50  0000 L CNN
F 1 "n.p." H 5300 4800 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5200 4800 50  0001 C CNN
F 3 "~" H 5200 4800 50  0001 C CNN
F 4 "N" H 5200 4800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E8F98AE
P 5200 6250
F 0 "C4" H 5300 6300 50  0000 L CNN
F 1 "n.p." H 5300 6250 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5200 6250 50  0001 C CNN
F 3 "~" H 5200 6250 50  0001 C CNN
F 4 "N" H 5200 6250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5200 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_TVS_ALT D2
U 1 1 5E8819F1
P 5950 3300
F 0 "D2" V 5900 3400 50  0000 L CNN
F 1 "TVS, 5V, 9.2V" V 5950 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 5950 3300 50  0001 C CNN
F 3 "~" H 5950 3300 50  0001 C CNN
F 4 "N" H 5950 3300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5950 3300
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS_ALT D1
U 1 1 5E8819F2
P 5950 1750
F 0 "D1" V 5900 1850 50  0000 L CNN
F 1 "TVS, 5V, 9.2V" V 5950 1850 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 5950 1750 50  0001 C CNN
F 3 "~" H 5950 1750 50  0001 C CNN
F 4 "Y" H 5950 1750 50  0001 C CNN "Spice_Netlist_Enabled"
F 5 "X" H 5950 1750 50  0001 C CNN "Spice_Primitive"
F 6 "SMCJ5.0A" H 5950 1750 50  0001 C CNN "Spice_Model"
F 7 "smcj50a.lib" H 5950 1750 50  0001 C CNN "Spice_Lib_File"
	1    5950 1750
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS_ALT D3
U 1 1 5E8819F3
P 5950 4800
F 0 "D3" V 5900 4900 50  0000 L CNN
F 1 "TVS, 5V, 9.2V" V 5950 4900 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 5950 4800 50  0001 C CNN
F 3 "~" H 5950 4800 50  0001 C CNN
F 4 "N" H 5950 4800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5950 4800
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS_ALT D4
U 1 1 5E8229A6
P 5950 6250
F 0 "D4" V 5900 6350 50  0000 L CNN
F 1 "TVS, 5V, 9.2V" V 5950 6350 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 5950 6250 50  0001 C CNN
F 3 "~" H 5950 6250 50  0001 C CNN
F 4 "N" H 5950 6250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5950 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E84C818
P 2300 5850
F 0 "R10" V 2200 5700 50  0000 C CNN
F 1 "10k, 1W, carbon" V 2400 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2230 5850 50  0001 C CNN
F 3 "~" H 2300 5850 50  0001 C CNN
F 4 "N" H 2300 5850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2300 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E8819F9
P 2300 4400
F 0 "R9" V 2150 4250 50  0000 C CNN
F 1 "10k, 1W, carbon" V 2400 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2230 4400 50  0001 C CNN
F 3 "~" H 2300 4400 50  0001 C CNN
F 4 "N" H 2300 4400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2300 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E8819FA
P 2300 2900
F 0 "R8" V 2150 2750 50  0000 C CNN
F 1 "10k, 1W, carbon" V 2400 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2230 2900 50  0001 C CNN
F 3 "~" H 2300 2900 50  0001 C CNN
F 4 "N" H 2300 2900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2300 2900
	0    1    1    0   
$EndComp
$Comp
L Device:Lamp_Neon NE4
U 1 1 5E88DEFE
P 4000 6350
F 0 "NE4" H 4050 6500 50  0000 L CNN
F 1 "150V" H 4050 6200 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" V 4000 6450 50  0001 C CNN
F 3 "~" V 4000 6450 50  0001 C CNN
F 4 "N" H 4000 6350 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp_Neon NE3
U 1 1 5E8104DC
P 4000 4900
F 0 "NE3" H 4050 5050 50  0000 L CNN
F 1 "150V" H 4050 4750 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" V 4000 5000 50  0001 C CNN
F 3 "~" V 4000 5000 50  0001 C CNN
F 4 "N" H 4000 4900 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4000 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp_Neon NE2
U 1 1 5E8819EC
P 4000 3400
F 0 "NE2" H 4050 3550 50  0000 L CNN
F 1 "150V" H 4050 3250 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" V 4000 3500 50  0001 C CNN
F 3 "~" V 4000 3500 50  0001 C CNN
F 4 "N" H 4000 3400 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2900 4000 2900
Text Notes 7800 3250 0    118  ~ 0
Simulation
$Comp
L Device:R R3
U 1 1 5E814445
P 1650 1300
F 0 "R3" V 1550 1400 50  0000 C CNN
F 1 "10k, 1W, carbon" V 1750 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1580 1300 50  0001 C CNN
F 3 "~" H 1650 1300 50  0001 C CNN
F 4 "R" H 1650 1300 50  0001 C CNN "Spice_Primitive"
F 5 "10k" H 1650 1300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1650 1300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1650 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E8819FB
P 2300 1300
F 0 "R7" V 2200 1400 50  0000 C CNN
F 1 "10k, 1W, carbon" V 2400 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2230 1300 50  0001 C CNN
F 3 "~" H 2300 1300 50  0001 C CNN
F 4 "Y" H 2300 1300 50  0001 C CNN "Spice_Netlist_Enabled"
F 5 "R" H 2300 1300 50  0001 C CNN "Spice_Primitive"
F 6 "10k" H 2300 1300 50  0001 C CNN "Spice_Model"
	1    2300 1300
	0    1    1    0   
$EndComp
Text Notes 7850 5000 0    50   ~ 0
source is simplication from\nhttps://www.medteq.net/article/defibrillator-proof-testing
Wire Wire Line
	4000 2100 5200 2100
Wire Wire Line
	1800 1300 2150 1300
Wire Wire Line
	9550 4550 9650 4550
$Comp
L pspice:R R000
U 1 1 5EAB5892
P 9300 4550
F 0 "R000" V 9095 4550 50  0000 C CNN
F 1 "R" V 9186 4550 50  0000 C CNN
F 2 "" H 9300 4550 50  0001 C CNN
F 3 "~" H 9300 4550 50  0001 C CNN
F 4 "R" H 9300 4550 50  0001 C CNN "Spice_Primitive"
F 5 "0" H 9300 4550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 9300 4550 50  0001 C CNN "Spice_Netlist_Enabled"
	1    9300 4550
	0    1    1    0   
$EndComp
Connection ~ 8900 4550
Wire Wire Line
	9050 4550 8900 4550
$Comp
L component:GND #PWR0112
U 1 1 5EA64C5C
P 9650 4550
F 0 "#PWR0112" H 9650 4300 50  0001 C CNN
F 1 "GND" H 9655 4377 50  0000 C CNN
F 2 "" H 9650 4550 50  0001 C CNN
F 3 "" H 9650 4550 50  0001 C CNN
	1    9650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1300 4000 1300
Text Notes 7800 3950 0    50   ~ 0
* Parameters of Helium Lamp\n.param Vstrike=150 Vhold=50 Zon=2K Ihold=200u Tau=100u\n* Simulation Parameters\n.tran 10u 10m 0\n\n\n\n
Wire Wire Line
	4000 1300 4000 1600
$Comp
L Device:Lamp_Neon NE1
U 1 1 5E8819EB
P 4000 1800
F 0 "NE1" H 4050 1950 50  0000 L CNN
F 1 "150V" H 4050 1650 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" V 4000 1900 50  0001 C CNN
F 3 "~" V 4000 1900 50  0001 C CNN
F 4 "Y" H 4000 1800 50  0001 C CNN "Spice_Netlist_Enabled"
F 5 "X" H 4000 1800 50  0001 C CNN "Spice_Primitive"
F 6 "neonbulb" H 4000 1800 50  0001 C CNN "Spice_Model"
F 7 "sim_ne2.lib" H 4000 1800 50  0001 C CNN "Spice_Lib_File"
	1    4000 1800
	-1   0    0    1   
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 5EA496AB
P 8000 4250
F 0 "V1" H 8228 4296 50  0000 L CNN
F 1 "VSOURCE" H 8228 4205 50  0000 L CNN
F 2 "" H 8000 4250 50  0001 C CNN
F 3 "~" H 8000 4250 50  0001 C CNN
F 4 "V" H 8000 4250 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 pulse(0 4.8k 1m 10u 10m 10u)" H 8000 4250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8000 4250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8000 4250
	1    0    0    -1  
$EndComp
Text Notes 7850 5450 0    50   ~ 0
due to unavailability of spice model, \nsmcj5.0a (vr 5.0V, vbr 6.4V, vc 9.2V, 1500W)\nwas used instead of \nsmbj5.0a (vr 5.0V, vbr 6.4V, vc 9.2V,  600W)\n
Text Notes 9600 4450 0    50   ~ 0
R000 only to connect \nGNDPWR to GND for the simulation\n
$EndSCHEMATC
