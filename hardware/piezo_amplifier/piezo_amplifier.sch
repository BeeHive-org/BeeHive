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
L Device:Opamp_Dual_Generic U?
U 1 1 623E24D8
P 4850 2800
F 0 "U?" H 4850 3167 50  0000 C CNN
F 1 "unit gain + bias" H 4850 3076 50  0000 C CNN
F 2 "" H 4850 2800 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U?
U 2 1 623E2BBB
P 6400 2850
F 0 "U?" H 6400 3217 50  0000 C CNN
F 1 "modular gain" H 6400 3126 50  0000 C CNN
F 2 "" H 6400 2850 50  0001 C CNN
F 3 "~" H 6400 2850 50  0001 C CNN
	2    6400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U?
U 3 1 623E3265
P 4350 4050
F 0 "U?" H 4308 4096 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 4308 4005 50  0000 L CNN
F 2 "" H 4350 4050 50  0001 C CNN
F 3 "~" H 4350 4050 50  0001 C CNN
	3    4350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 623E407B
P 4250 3550
F 0 "#PWR?" H 4250 3400 50  0001 C CNN
F 1 "+12V" H 4265 3723 50  0000 C CNN
F 2 "" H 4250 3550 50  0001 C CNN
F 3 "" H 4250 3550 50  0001 C CNN
	1    4250 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 623E4725
P 4250 4550
F 0 "#PWR?" H 4250 4300 50  0001 C CNN
F 1 "GND" H 4255 4377 50  0000 C CNN
F 2 "" H 4250 4550 50  0001 C CNN
F 3 "" H 4250 4550 50  0001 C CNN
	1    4250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3550 4250 3750
Wire Wire Line
	4250 4350 4250 4550
Text Notes 2650 1600 0    50   ~ 0
piezo gives out pos and neg voltage values. \nthis circuit uses a single supply voltage opamp (AD8056ANZ)\nso we bias the piezo input around+- 6V\n\n
$Comp
L Regulator_Linear:L7806 U?
U 1 1 623E6AA4
P 5900 3600
F 0 "U?" H 5900 3842 50  0000 C CNN
F 1 "L7806" H 5900 3751 50  0000 C CNN
F 2 "" H 5925 3450 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5900 3550 50  0001 C CNN
	1    5900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 623E7299
P 5500 3550
F 0 "#PWR?" H 5500 3400 50  0001 C CNN
F 1 "+12V" H 5515 3723 50  0000 C CNN
F 2 "" H 5500 3550 50  0001 C CNN
F 3 "" H 5500 3550 50  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 623E779C
P 5900 4000
F 0 "#PWR?" H 5900 3750 50  0001 C CNN
F 1 "GND" H 5905 3827 50  0000 C CNN
F 2 "" H 5900 4000 50  0001 C CNN
F 3 "" H 5900 4000 50  0001 C CNN
	1    5900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3900 5900 4000
Wire Wire Line
	5500 3550 5500 3600
Wire Wire Line
	5500 3600 5600 3600
$EndSCHEMATC
