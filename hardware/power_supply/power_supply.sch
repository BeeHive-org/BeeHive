EESchema Schematic File Version 4
LIBS:power_supply-cache
EELAYER 30 0
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
L Device:CP C1
U 1 1 5E269D01
P 4450 2800
F 0 "C1" V 4250 2800 50  0000 C CNN
F 1 "680µ" V 4150 2800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4488 2650 50  0001 C CNN
F 3 "~" H 4450 2800 50  0001 C CNN
	1    4450 2800
	0    -1   -1   0   
$EndComp
$Comp
L flypi_components:LM2596 U1
U 1 1 5E26A79A
P 5300 2650
F 0 "U1" H 5325 2853 60  0000 C CNN
F 1 "LM2596" H 5325 2747 60  0000 C CNN
F 2 "Flypi:LM2596" H 5325 2641 60  0000 C CNN
F 3 "" H 5500 2650 60  0000 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5E26BBB5
P 5350 2300
F 0 "D1" H 5350 2084 50  0000 C CNN
F 1 "D_Schottky" H 5350 2175 50  0000 C CNN
F 2 "Diode_THT:D_DO-201_P15.24mm_Horizontal" H 5350 2300 50  0001 C CNN
F 3 "~" H 5350 2300 50  0001 C CNN
	1    5350 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 2800 4600 3000
Wire Wire Line
	4600 3000 4750 3000
Wire Wire Line
	4750 3000 4750 2300
Connection ~ 4750 3000
Wire Wire Line
	4750 3000 4900 3000
Wire Wire Line
	4750 2300 5200 2300
$Comp
L power:GND #PWR01
U 1 1 5E26D43B
P 4750 3550
F 0 "#PWR01" H 4750 3300 50  0001 C CNN
F 1 "GND" H 4755 3377 50  0000 C CNN
F 2 "" H 4750 3550 50  0001 C CNN
F 3 "" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3000 4750 3200
Wire Wire Line
	4750 3200 4900 3200
Connection ~ 4750 3200
Wire Wire Line
	5750 2900 5750 2300
Wire Wire Line
	5750 2300 5500 2300
Wire Wire Line
	4300 2800 4200 2800
Wire Wire Line
	4200 2800 4200 2650
Wire Wire Line
	4200 2650 4900 2650
Wire Wire Line
	4900 2650 4900 2800
Wire Wire Line
	3850 3200 4750 3200
Wire Wire Line
	4750 3550 4750 3400
$Comp
L Device:CP C2
U 1 1 5E2736F5
P 6250 3250
F 0 "C2" V 6505 3250 50  0000 C CNN
F 1 "220µ" V 6414 3250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 6288 3100 50  0001 C CNN
F 3 "~" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3100 6250 3100
Wire Wire Line
	6250 3400 4750 3400
Connection ~ 4750 3400
Wire Wire Line
	4750 3400 4750 3200
$Comp
L Device:L L1
U 1 1 5E275662
P 6000 2300
F 0 "L1" V 6190 2300 50  0000 C CNN
F 1 "33µH" V 6099 2300 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D10.0mm_P5.00mm_Neosid_SD12_style3" H 6000 2300 50  0001 C CNN
F 3 "~" H 6000 2300 50  0001 C CNN
	1    6000 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2300 5850 2300
Connection ~ 5750 2300
Wire Wire Line
	6150 2300 6250 2300
Wire Wire Line
	6250 2300 6250 3100
Connection ~ 6250 3100
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E277019
P 7300 2400
F 0 "J2" H 7300 2200 50  0000 C CNN
F 1 "Conn_01x02" H 7218 2166 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7300 2400 50  0001 C CNN
F 3 "~" H 7300 2400 50  0001 C CNN
	1    7300 2400
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5E277D0A
P 7300 2850
F 0 "J3" H 7300 2650 50  0000 C CNN
F 1 "Conn_01x02" H 7218 2616 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7300 2850 50  0001 C CNN
F 3 "~" H 7300 2850 50  0001 C CNN
	1    7300 2850
	1    0    0    1   
$EndComp
Wire Wire Line
	6250 2300 6750 2300
Connection ~ 6250 2300
$Comp
L power:GND #PWR02
U 1 1 5E278D9D
P 6900 3550
F 0 "#PWR02" H 6900 3300 50  0001 C CNN
F 1 "GND" H 6905 3377 50  0000 C CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
Text Notes 8750 2600 2    100  ~ 0
GND
Text Notes 8750 2400 2    100  ~ 0
VCC
Text Notes 8750 2800 2    100  ~ 0
DATA 2
Text Notes 8750 3000 2    100  ~ 0
DATA 1
Wire Notes Line style solid
	8800 3050 8150 3050
Wire Notes Line style solid
	8800 2250 8150 2250
Wire Notes Line style solid
	8150 2250 8150 3050
Wire Notes Line style solid
	8800 2250 8800 3050
Wire Notes Line style solid
	8800 2950 9200 2950
Wire Notes Line style solid
	8800 2750 9200 2750
Wire Notes Line style solid rgb(255, 0, 0)
	8800 2350 9200 2350
Wire Notes Line style solid rgb(0, 0, 0)
	8800 2550 9200 2550
Text Notes 8950 2350 2    100  ~ 0
1
Text Notes 8950 2550 2    100  ~ 0
2
Text Notes 8950 2750 2    100  ~ 0
3
Text Notes 8950 2950 2    100  ~ 0
4
Text Notes 8100 2150 0    100  ~ 0
Connector\npinout
Text Notes 3000 2600 0    100  ~ 0
Input\n12V5A (max)
Text Notes 6700 2100 0    100  ~ 0
Output\n5V3A (max)
Wire Notes Line
	2900 2200 2900 3300
Wire Notes Line
	4100 2200 4100 3300
Wire Notes Line
	6600 1700 7700 1700
Wire Notes Line
	6600 3300 7700 3300
Wire Notes Line
	2900 2200 4100 2200
Wire Notes Line
	2900 3300 4100 3300
Wire Notes Line
	7700 1700 7700 3300
Wire Notes Line
	6600 1700 6600 3300
Wire Wire Line
	6750 2850 7100 2850
Wire Wire Line
	6900 2300 6900 2750
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5E26F9D6
P 3100 2850
F 0 "J1" H 3100 3050 50  0000 C CNN
F 1 "Conn_01x04" H 3000 2550 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3100 2850 50  0001 C CNN
F 3 "~" H 3100 2850 50  0001 C CNN
	1    3100 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 2850 3850 2850
Wire Wire Line
	3850 2850 3850 3200
Wire Wire Line
	3300 2750 4000 2750
Wire Wire Line
	4000 2750 4000 2800
Wire Wire Line
	4000 2800 4200 2800
Connection ~ 4200 2800
NoConn ~ 3300 2950
NoConn ~ 3300 3050
Wire Wire Line
	6900 2300 7100 2300
Wire Wire Line
	6750 2300 6750 2400
Connection ~ 6750 2400
Wire Wire Line
	7100 2400 6750 2400
Wire Wire Line
	6750 2400 6750 2850
Wire Wire Line
	7100 2750 6900 2750
Connection ~ 6900 2750
Wire Wire Line
	6900 2750 6900 3550
$EndSCHEMATC
