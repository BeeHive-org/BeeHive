EESchema Schematic File Version 4
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
U 1 1 61168197
P 2900 3500
F 0 "J1" H 2818 3817 50  0000 C CNN
F 1 "Conn_01x04" H 2818 3726 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2900 3500 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
	1    2900 3500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 61168B75
P 4250 3500
F 0 "J2" H 4330 3492 50  0000 L CNN
F 1 "Conn_01x04" H 4330 3401 50  0000 L CNN
F 2 "Grove-Gas Sensor v1.4:4P-LEADED-2.0" H 4250 3500 50  0001 C CNN
F 3 "~" H 4250 3500 50  0001 C CNN
	1    4250 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 611695A1
P 3600 4000
F 0 "#PWR02" H 3600 3750 50  0001 C CNN
F 1 "GND" H 3605 3827 50  0000 C CNN
F 2 "" H 3600 4000 50  0001 C CNN
F 3 "" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 61169A62
P 3600 3150
F 0 "#PWR01" H 3600 3000 50  0001 C CNN
F 1 "+5V" H 3615 3323 50  0000 C CNN
F 2 "" H 3600 3150 50  0001 C CNN
F 3 "" H 3600 3150 50  0001 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3700 3600 3700
Wire Wire Line
	3600 3700 3600 4000
Wire Wire Line
	3600 3700 4050 3700
Connection ~ 3600 3700
Wire Wire Line
	3100 3600 3600 3600
Wire Wire Line
	3600 3600 3600 3150
Wire Wire Line
	3600 3600 4050 3600
Connection ~ 3600 3600
Wire Wire Line
	3100 3500 4050 3500
Wire Wire Line
	3100 3400 4050 3400
Text Notes 2650 3050 0    100  ~ 0
BeeHive
Text Notes 4050 3050 0    100  ~ 0
Grove
$EndSCHEMATC
