EESchema Schematic File Version 4
LIBS:4_switch_array-cache
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
L Connector_Generic:Conn_01x04 J1
U 1 1 5E239C52
P 3050 2250
F 0 "J1" H 3000 1950 50  0000 L CNN
F 1 "Conn_01x04" H 2968 1916 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3050 2250 50  0001 C CNN
F 3 "~" H 3050 2250 50  0001 C CNN
	1    3050 2250
	-1   0    0    1   
$EndComp
$Comp
L Interface_Expansion:TPIC6595 U1
U 1 1 5E24E275
P 4900 2450
F 0 "U1" H 4550 3150 50  0000 C CNN
F 1 "TPIC6595" H 4550 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5550 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpic6595.pdf" H 4900 2400 50  0001 C CNN
	1    4900 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5E24FA7E
P 3050 2800
F 0 "J2" H 3000 2500 50  0000 L CNN
F 1 "Conn_01x04" H 2968 2466 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3050 2800 50  0001 C CNN
F 3 "~" H 3050 2800 50  0001 C CNN
	1    3050 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E255A8F
P 4150 3200
F 0 "#PWR02" H 4150 2950 50  0001 C CNN
F 1 "GND" H 4155 3027 50  0000 C CNN
F 2 "" H 4150 3200 50  0001 C CNN
F 3 "" H 4150 3200 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3200 4150 3150
Wire Wire Line
	4150 2650 4400 2650
Wire Wire Line
	4800 3150 4600 3150
Wire Wire Line
	4600 3150 4150 3150
Connection ~ 4600 3150
Connection ~ 4150 3150
$Comp
L Device:R R4
U 1 1 5E2596A7
P 6200 5750
F 0 "R4" V 6100 5750 50  0000 C CNN
F 1 "270" V 6200 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Box_L13.0mm_W4.0mm_P9.00mm" V 6130 5750 50  0001 C CNN
F 3 "~" H 6200 5750 50  0001 C CNN
	1    6200 5750
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NPN_EBC Q4
U 1 1 5E2344CC
P 6650 5750
F 0 "Q4" H 6800 5950 50  0000 L CNN
F 1 "Q_NPN_EBC" H 6841 5705 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6850 5850 50  0001 C CNN
F 3 "~" H 6650 5750 50  0001 C CNN
	1    6650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5750 6450 5750
Wire Wire Line
	6750 5950 6950 5950
Wire Wire Line
	6950 5950 6950 5550
Wire Wire Line
	6950 5550 7350 5550
$Comp
L Device:R R3
U 1 1 5E23CE9F
P 6200 4650
F 0 "R3" V 6100 4650 50  0000 C CNN
F 1 "270" V 6200 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Box_L13.0mm_W4.0mm_P9.00mm" V 6130 4650 50  0001 C CNN
F 3 "~" H 6200 4650 50  0001 C CNN
	1    6200 4650
	0    -1   1    0   
$EndComp
Wire Wire Line
	6750 4850 6950 4850
Wire Wire Line
	6950 4850 6950 4450
Wire Wire Line
	6950 4450 7350 4450
$Comp
L Device:R R2
U 1 1 5E23F4EA
P 4400 5750
F 0 "R2" V 4300 5750 50  0000 C CNN
F 1 "270" V 4400 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Box_L13.0mm_W4.0mm_P9.00mm" V 4330 5750 50  0001 C CNN
F 3 "~" H 4400 5750 50  0001 C CNN
	1    4400 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 5750 4150 5750
Wire Wire Line
	3850 5950 3650 5950
Wire Wire Line
	3650 5950 3650 5550
Wire Wire Line
	3650 5550 3250 5550
$Comp
L Device:R R1
U 1 1 5E241F42
P 4400 4650
F 0 "R1" V 4300 4650 50  0000 C CNN
F 1 "270" V 4400 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Box_L13.0mm_W4.0mm_P9.00mm" V 4330 4650 50  0001 C CNN
F 3 "~" H 4400 4650 50  0001 C CNN
	1    4400 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 4650 4150 4650
Wire Wire Line
	3850 4850 3650 4850
Wire Wire Line
	3650 4850 3650 4450
Wire Wire Line
	3650 4450 3250 4450
NoConn ~ 3250 2700
NoConn ~ 3250 2150
NoConn ~ 5400 2950
NoConn ~ 5400 2550
NoConn ~ 5400 2450
NoConn ~ 5400 2350
NoConn ~ 5400 2250
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5E272691
P 6800 2150
F 0 "J7" H 6800 2250 50  0000 C CNN
F 1 "Conn_01x02" H 6718 1916 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 6800 2150 50  0001 C CNN
F 3 "~" H 6800 2150 50  0001 C CNN
	1    6800 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E27A951
P 7150 2450
F 0 "#PWR08" H 7150 2200 50  0001 C CNN
F 1 "GND" H 7155 2277 50  0000 C CNN
F 2 "" H 7150 2450 50  0001 C CNN
F 3 "" H 7150 2450 50  0001 C CNN
	1    7150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2250 7150 2450
Wire Wire Line
	7150 2150 7150 1950
$Comp
L power:+5V #PWR07
U 1 1 5E283F8A
P 7150 1950
F 0 "#PWR07" H 7150 1800 50  0001 C CNN
F 1 "+5V" H 7165 2123 50  0000 C CNN
F 2 "" H 7150 1950 50  0001 C CNN
F 3 "" H 7150 1950 50  0001 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5E28795A
P 7550 4350
F 0 "J5" H 7550 4450 50  0000 C CNN
F 1 "Conn_01x02" H 7468 4116 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7550 4350 50  0001 C CNN
F 3 "~" H 7550 4350 50  0001 C CNN
	1    7550 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5E2882ED
P 7550 5450
F 0 "J6" H 7550 5550 50  0000 C CNN
F 1 "Conn_01x02" H 7468 5216 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7550 5450 50  0001 C CNN
F 3 "~" H 7550 5450 50  0001 C CNN
	1    7550 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5E2887FD
P 3050 5450
F 0 "J4" H 3000 5550 50  0000 L CNN
F 1 "Conn_01x02" H 2968 5216 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 3050 5450 50  0001 C CNN
F 3 "~" H 3050 5450 50  0001 C CNN
	1    3050 5450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5E289406
P 3050 4350
F 0 "J3" H 3000 4450 50  0000 L CNN
F 1 "Conn_01x02" H 2968 4116 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 3050 4350 50  0001 C CNN
F 3 "~" H 3050 4350 50  0001 C CNN
	1    3050 4350
	-1   0    0    -1  
$EndComp
Connection ~ 4150 2650
Wire Wire Line
	4150 2650 4150 3150
Wire Wire Line
	3550 2600 3550 2650
$Comp
L Device:Q_NPN_EBC Q3
U 1 1 5E2B9120
P 6650 4650
F 0 "Q3" H 6800 4850 50  0000 L CNN
F 1 "Q_NPN_EBC" H 6841 4605 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6850 4750 50  0001 C CNN
F 3 "~" H 6650 4650 50  0001 C CNN
	1    6650 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 5E2B9472
P 3950 4650
F 0 "Q1" H 4100 4850 50  0000 L CNN
F 1 "Q_NPN_EBC" H 4141 4605 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4150 4750 50  0001 C CNN
F 3 "~" H 3950 4650 50  0001 C CNN
	1    3950 4650
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q2
U 1 1 5E2BA68D
P 3950 5750
F 0 "Q2" H 4100 5950 50  0000 L CNN
F 1 "Q_NPN_EBC" H 4141 5705 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4150 5850 50  0001 C CNN
F 3 "~" H 3950 5750 50  0001 C CNN
	1    3950 5750
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5E265876
P 4900 1650
F 0 "#PWR0101" H 4900 1500 50  0001 C CNN
F 1 "+5V" H 4915 1823 50  0000 C CNN
F 2 "" H 4900 1650 50  0001 C CNN
F 3 "" H 4900 1650 50  0001 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1850 4900 1650
Wire Wire Line
	4900 1650 6050 1650
Connection ~ 4900 1650
$Comp
L Device:C C1
U 1 1 5E27638C
P 6050 1800
F 0 "C1" H 6165 1846 50  0000 L CNN
F 1 "100nF" H 6165 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 6088 1650 50  0001 C CNN
F 3 "~" H 6050 1800 50  0001 C CNN
	1    6050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E2792D0
P 6050 3200
F 0 "#PWR0102" H 6050 2950 50  0001 C CNN
F 1 "GND" H 6055 3027 50  0000 C CNN
F 2 "" H 6050 3200 50  0001 C CNN
F 3 "" H 6050 3200 50  0001 C CNN
	1    6050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3200 6050 1950
Wire Wire Line
	3450 2450 4050 2450
Wire Wire Line
	4050 2450 4050 2250
Wire Wire Line
	4050 2250 4400 2250
Wire Wire Line
	3450 2450 3450 2800
Wire Wire Line
	6350 4650 6450 4650
Wire Wire Line
	3250 2600 3550 2600
Wire Wire Line
	7000 2150 7150 2150
Wire Wire Line
	7000 2250 7150 2250
Wire Wire Line
	3250 2800 3450 2800
Wire Wire Line
	3250 2900 3650 2900
Wire Wire Line
	3650 2900 3650 2550
Wire Wire Line
	3650 2550 4400 2550
Text Notes 6750 1650 0    100  ~ 0
Input power
Text Notes 3000 1800 0    100  ~ 0
Input\nconnectors
Wire Notes Line
	2850 3100 3900 3100
Wire Notes Line
	3900 1400 3900 3100
Wire Notes Line
	2850 1400 3900 1400
Wire Notes Line
	2850 1400 2850 3100
Wire Notes Line
	6600 2700 7750 2700
Wire Notes Line
	7750 1400 6600 1400
Wire Notes Line
	6600 1400 6600 2700
Wire Notes Line
	7750 1400 7750 2700
Text Notes 3000 3850 0    100  ~ 0
Output transistor-switch array
Text GLabel 5500 2050 2    50   Input ~ 0
DRAIN0
Wire Wire Line
	5400 2050 5500 2050
Text GLabel 4700 4650 2    50   Input ~ 0
DRAIN0
Wire Wire Line
	4550 4650 4700 4650
Text GLabel 5500 2150 2    50   Input ~ 0
DRAIN1
Wire Wire Line
	5400 2150 5500 2150
Text GLabel 4700 5750 2    50   Input ~ 0
DRAIN1
Wire Wire Line
	4550 5750 4700 5750
Text GLabel 5500 2650 2    50   Input ~ 0
DRAIN6
Wire Wire Line
	5400 2650 5500 2650
Text GLabel 5900 5750 0    50   Input ~ 0
DRAIN6
Wire Wire Line
	5900 5750 6050 5750
Text GLabel 5500 2750 2    50   Input ~ 0
DRAIN7
Wire Wire Line
	5400 2750 5500 2750
Text GLabel 5900 4650 0    50   Input ~ 0
DRAIN7
Wire Wire Line
	5900 4650 6050 4650
Wire Notes Line
	2850 3600 2850 6100
Wire Notes Line
	7750 6100 7750 3600
Wire Notes Line
	2850 6100 7750 6100
Wire Notes Line
	2850 3600 7750 3600
Text Notes 8950 4700 0    100  ~ 0
GND
Text Notes 8950 4500 0    100  ~ 0
VCC
Text Notes 8950 4300 0    100  ~ 0
DATA 2
Text Notes 8950 4100 0    100  ~ 0
DATA 1
Wire Notes Line style solid
	8900 3950 9550 3950
Wire Notes Line style solid
	8900 4750 9550 4750
Wire Notes Line style solid
	9550 4750 9550 3950
Wire Notes Line style solid
	8900 4750 8900 3950
Wire Notes Line style solid
	8900 4050 8500 4050
Wire Notes Line style solid
	8900 4250 8500 4250
Wire Notes Line style solid rgb(255, 0, 0)
	8900 4450 8500 4450
Wire Notes Line style solid rgb(0, 0, 0)
	8900 4650 8500 4650
Text Notes 8750 4050 0    100  ~ 0
1
Text Notes 8750 4250 0    100  ~ 0
2
Text Notes 8750 4450 0    100  ~ 0
3
Text Notes 8750 4650 0    100  ~ 0
4
Text Notes 8450 3850 0    100  ~ 0
Input connector\npinout
Text Notes 9100 5450 2    100  ~ 0
GND
Text Notes 9100 5650 2    100  ~ 0
VCC
Text Notes 9100 5850 2    100  ~ 0
DATA 2
Text Notes 9100 6050 2    100  ~ 0
DATA 1
Wire Notes Line style solid
	9150 6100 8500 6100
Wire Notes Line style solid
	9150 5300 8500 5300
Wire Notes Line style solid
	8500 5300 8500 6100
Wire Notes Line style solid
	9150 5300 9150 6100
Wire Notes Line style solid
	9150 6000 9550 6000
Wire Notes Line style solid
	9150 5800 9550 5800
Wire Notes Line style solid rgb(255, 0, 0)
	9150 5600 9550 5600
Wire Notes Line style solid rgb(0, 0, 0)
	9150 5400 9550 5400
Text Notes 9300 5400 2    100  ~ 0
1
Text Notes 9300 5600 2    100  ~ 0
2
Text Notes 9300 5800 2    100  ~ 0
3
Text Notes 9300 6000 2    100  ~ 0
4
Text Notes 8450 5200 0    100  ~ 0
Output connector\npinout
$Comp
L power:+5V #PWR0103
U 1 1 5E373971
P 3850 4100
F 0 "#PWR0103" H 3850 3950 50  0001 C CNN
F 1 "+5V" H 3850 4250 50  0000 C CNN
F 2 "" H 3850 4100 50  0001 C CNN
F 3 "" H 3850 4100 50  0001 C CNN
	1    3850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5E3748CA
P 6750 4100
F 0 "#PWR0104" H 6750 3950 50  0001 C CNN
F 1 "+5V" H 6750 4250 50  0000 C CNN
F 2 "" H 6750 4100 50  0001 C CNN
F 3 "" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5E375072
P 3850 5200
F 0 "#PWR0106" H 3850 5050 50  0001 C CNN
F 1 "+5V" H 3850 5350 50  0000 C CNN
F 2 "" H 3850 5200 50  0001 C CNN
F 3 "" H 3850 5200 50  0001 C CNN
	1    3850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4100 3850 4450
Wire Wire Line
	3850 5200 3850 5550
Wire Wire Line
	6750 5200 6750 5550
Wire Wire Line
	6750 4100 6750 4450
$Comp
L power:GND #PWR0107
U 1 1 5E378DAF
P 3600 4100
F 0 "#PWR0107" H 3600 3850 50  0001 C CNN
F 1 "GND" H 3600 3950 50  0000 C CNN
F 2 "" H 3600 4100 50  0001 C CNN
F 3 "" H 3600 4100 50  0001 C CNN
	1    3600 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4350 3600 4350
Wire Wire Line
	3600 4350 3600 4100
$Comp
L power:GND #PWR0108
U 1 1 5E37BFD6
P 3600 5200
F 0 "#PWR0108" H 3600 4950 50  0001 C CNN
F 1 "GND" H 3600 5050 50  0000 C CNN
F 2 "" H 3600 5200 50  0001 C CNN
F 3 "" H 3600 5200 50  0001 C CNN
	1    3600 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 5450 3600 5450
Wire Wire Line
	3600 5450 3600 5200
$Comp
L power:GND #PWR0109
U 1 1 5E37E4E2
P 7000 5200
F 0 "#PWR0109" H 7000 4950 50  0001 C CNN
F 1 "GND" H 7000 5050 50  0000 C CNN
F 2 "" H 7000 5200 50  0001 C CNN
F 3 "" H 7000 5200 50  0001 C CNN
	1    7000 5200
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5E374C90
P 6750 5200
F 0 "#PWR0105" H 6750 5050 50  0001 C CNN
F 1 "+5V" H 6750 5350 50  0000 C CNN
F 2 "" H 6750 5200 50  0001 C CNN
F 3 "" H 6750 5200 50  0001 C CNN
	1    6750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5200 7000 5450
Wire Wire Line
	7000 5450 7350 5450
$Comp
L power:GND #PWR0110
U 1 1 5E380682
P 7000 4100
F 0 "#PWR0110" H 7000 3850 50  0001 C CNN
F 1 "GND" H 7000 3950 50  0000 C CNN
F 2 "" H 7000 4100 50  0001 C CNN
F 3 "" H 7000 4100 50  0001 C CNN
	1    7000 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4100 7000 4350
Wire Wire Line
	7000 4350 7350 4350
Wire Wire Line
	3650 2050 4400 2050
Wire Wire Line
	3650 2350 3250 2350
Wire Wire Line
	3650 2050 3650 2350
Wire Wire Line
	3250 2250 3950 2250
Wire Wire Line
	3950 2250 3950 2350
Wire Wire Line
	3950 2350 4400 2350
Wire Wire Line
	3550 2650 3800 2650
Wire Wire Line
	4150 2650 3800 2650
Connection ~ 3800 2650
Wire Wire Line
	3800 2150 3800 2650
Wire Wire Line
	3350 2050 3250 2050
Wire Wire Line
	3800 2150 3350 2150
Wire Wire Line
	3350 2150 3350 2050
$EndSCHEMATC
