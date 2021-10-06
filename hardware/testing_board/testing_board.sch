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
Text Notes 650  1250 0    50   ~ 0
Testing properties:\n- Digital output (PWM can be incorporated in the same one)\n- Digital input\n- Analog input\n- Shift register\n- H-bridge\n- Solenoid driver\n- Temperature sensor\n- IR LED/detector pair
$Comp
L power:+5V #PWR?
U 1 1 6149BF65
P 2800 2100
F 0 "#PWR?" H 2800 1950 50  0001 C CNN
F 1 "+5V" V 2815 2228 50  0000 L CNN
F 2 "" H 2800 2100 50  0001 C CNN
F 3 "" H 2800 2100 50  0001 C CNN
	1    2800 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6149C4B6
P 2800 2200
F 0 "#PWR?" H 2800 1950 50  0001 C CNN
F 1 "GND" V 2805 2072 50  0000 R CNN
F 2 "" H 2800 2200 50  0001 C CNN
F 3 "" H 2800 2200 50  0001 C CNN
	1    2800 2200
	0    -1   -1   0   
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B4B-XH-A_LF__SN_ J?
U 1 1 614A1DFD
P 2550 1900
F 0 "J?" V 2325 1908 50  0000 C CNN
F 1 "B4B-XH-A_LF__SN_" V 2416 1908 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.5mm_Drill1.1mm" H 2750 2100 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2750 2200 60  0001 L CNN
F 4 "455-2249-ND" H 2750 2300 60  0001 L CNN "Digi-Key_PN"
F 5 "B4B-XH-A(LF)(SN)" H 2750 2400 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2750 2500 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2750 2600 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2750 2700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B4B-XH-A(LF)(SN)/455-2249-ND/1651047" H 2750 2800 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.5MM" H 2750 2900 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 2750 3000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2750 3100 60  0001 L CNN "Status"
	1    2550 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2100 2800 2100
Wire Wire Line
	2650 2200 2800 2200
$Comp
L Device:R_Small R?
U 1 1 614A5C9E
P 2900 2000
F 0 "R?" V 2704 2000 50  0000 C CNN
F 1 "R_Small" V 2795 2000 50  0000 C CNN
F 2 "" H 2900 2000 50  0001 C CNN
F 3 "~" H 2900 2000 50  0001 C CNN
	1    2900 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 614A6974
P 2900 1700
F 0 "R?" V 2704 1700 50  0000 C CNN
F 1 "R_Small" V 2795 1700 50  0000 C CNN
F 2 "" H 2900 1700 50  0001 C CNN
F 3 "~" H 2900 1700 50  0001 C CNN
	1    2900 1700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 614A70A6
P 3300 2000
F 0 "D?" H 3293 1745 50  0000 C CNN
F 1 "LED" H 3293 1836 50  0000 C CNN
F 2 "" H 3300 2000 50  0001 C CNN
F 3 "~" H 3300 2000 50  0001 C CNN
	1    3300 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 614A758C
P 3300 1700
F 0 "D?" H 3293 1445 50  0000 C CNN
F 1 "LED" H 3293 1536 50  0000 C CNN
F 2 "" H 3300 1700 50  0001 C CNN
F 3 "~" H 3300 1700 50  0001 C CNN
	1    3300 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1900 2650 1700
Wire Wire Line
	2650 1700 2800 1700
Wire Wire Line
	3000 1700 3150 1700
Wire Wire Line
	2650 2000 2800 2000
Wire Wire Line
	3000 2000 3150 2000
$Comp
L power:GND #PWR?
U 1 1 614A985A
P 3700 1850
F 0 "#PWR?" H 3700 1600 50  0001 C CNN
F 1 "GND" V 3705 1722 50  0000 R CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0001 C CNN
	1    3700 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 1700 3700 1700
Wire Wire Line
	3700 1700 3700 1850
Wire Wire Line
	3450 2000 3700 2000
Wire Wire Line
	3700 2000 3700 1850
Connection ~ 3700 1850
$Comp
L power:+5V #PWR?
U 1 1 614AF75F
P 2800 2950
F 0 "#PWR?" H 2800 2800 50  0001 C CNN
F 1 "+5V" V 2815 3078 50  0000 L CNN
F 2 "" H 2800 2950 50  0001 C CNN
F 3 "" H 2800 2950 50  0001 C CNN
	1    2800 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614AF765
P 2800 3050
F 0 "#PWR?" H 2800 2800 50  0001 C CNN
F 1 "GND" V 2805 2922 50  0000 R CNN
F 2 "" H 2800 3050 50  0001 C CNN
F 3 "" H 2800 3050 50  0001 C CNN
	1    2800 3050
	0    -1   -1   0   
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B4B-XH-A_LF__SN_ J?
U 1 1 614AF774
P 2550 2750
F 0 "J?" V 2325 2758 50  0000 C CNN
F 1 "B4B-XH-A_LF__SN_" V 2416 2758 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.5mm_Drill1.1mm" H 2750 2950 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2750 3050 60  0001 L CNN
F 4 "455-2249-ND" H 2750 3150 60  0001 L CNN "Digi-Key_PN"
F 5 "B4B-XH-A(LF)(SN)" H 2750 3250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2750 3350 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2750 3450 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2750 3550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B4B-XH-A(LF)(SN)/455-2249-ND/1651047" H 2750 3650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.5MM" H 2750 3750 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 2750 3850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2750 3950 60  0001 L CNN "Status"
	1    2550 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2950 2800 2950
Wire Wire Line
	2650 3050 2800 3050
$Comp
L Device:R_Small R?
U 1 1 614AF77C
P 2900 2850
F 0 "R?" V 2704 2850 50  0000 C CNN
F 1 "R_Small" V 2795 2850 50  0000 C CNN
F 2 "" H 2900 2850 50  0001 C CNN
F 3 "~" H 2900 2850 50  0001 C CNN
	1    2900 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 614AF782
P 2900 2550
F 0 "R?" V 2704 2550 50  0000 C CNN
F 1 "R_Small" V 2795 2550 50  0000 C CNN
F 2 "" H 2900 2550 50  0001 C CNN
F 3 "~" H 2900 2550 50  0001 C CNN
	1    2900 2550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 614AF788
P 3300 2850
F 0 "D?" H 3293 2595 50  0000 C CNN
F 1 "LED" H 3293 2686 50  0000 C CNN
F 2 "" H 3300 2850 50  0001 C CNN
F 3 "~" H 3300 2850 50  0001 C CNN
	1    3300 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 614AF78E
P 3300 2550
F 0 "D?" H 3293 2295 50  0000 C CNN
F 1 "LED" H 3293 2386 50  0000 C CNN
F 2 "" H 3300 2550 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 2750 2650 2550
Wire Wire Line
	2650 2550 2800 2550
Wire Wire Line
	3000 2550 3150 2550
Wire Wire Line
	2650 2850 2800 2850
Wire Wire Line
	3000 2850 3150 2850
$Comp
L power:GND #PWR?
U 1 1 614AF799
P 3700 2700
F 0 "#PWR?" H 3700 2450 50  0001 C CNN
F 1 "GND" V 3705 2572 50  0000 R CNN
F 2 "" H 3700 2700 50  0001 C CNN
F 3 "" H 3700 2700 50  0001 C CNN
	1    3700 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 2550 3700 2550
Wire Wire Line
	3700 2550 3700 2700
Wire Wire Line
	3450 2850 3700 2850
Wire Wire Line
	3700 2850 3700 2700
Connection ~ 3700 2700
$Comp
L power:+5V #PWR?
U 1 1 614BB494
P 2800 4050
F 0 "#PWR?" H 2800 3900 50  0001 C CNN
F 1 "+5V" H 2815 4223 50  0000 C CNN
F 2 "" H 2800 4050 50  0001 C CNN
F 3 "" H 2800 4050 50  0001 C CNN
	1    2800 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614BB49A
P 2650 4050
F 0 "#PWR?" H 2650 3800 50  0001 C CNN
F 1 "GND" H 2655 3877 50  0000 C CNN
F 2 "" H 2650 4050 50  0001 C CNN
F 3 "" H 2650 4050 50  0001 C CNN
	1    2650 4050
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B4B-XH-A_LF__SN_ J?
U 1 1 614BB4A9
P 2500 3750
F 0 "J?" V 2275 3758 50  0000 C CNN
F 1 "B4B-XH-A_LF__SN_" V 2366 3758 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.5mm_Drill1.1mm" H 2700 3950 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2700 4050 60  0001 L CNN
F 4 "455-2249-ND" H 2700 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "B4B-XH-A(LF)(SN)" H 2700 4250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2700 4350 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2700 4450 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2700 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B4B-XH-A(LF)(SN)/455-2249-ND/1651047" H 2700 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.5MM" H 2700 4750 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 2700 4850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2700 4950 60  0001 L CNN "Status"
	1    2500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4050 2650 4050
$Comp
L Device:LED D?
U 1 1 614BB4BD
P 3850 4150
F 0 "D?" V 3797 4230 50  0000 L CNN
F 1 "LED" V 3888 4230 50  0000 L CNN
F 2 "" H 3850 4150 50  0001 C CNN
F 3 "~" H 3850 4150 50  0001 C CNN
	1    3850 4150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 614BB4C3
P 3950 4850
F 0 "D?" H 3943 4595 50  0000 C CNN
F 1 "LED" H 3943 4686 50  0000 C CNN
F 2 "" H 3950 4850 50  0001 C CNN
F 3 "~" H 3950 4850 50  0001 C CNN
	1    3950 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 3950 2800 4050
Wire Wire Line
	2600 3950 2800 3950
$Comp
L Switch:SW_Push SW?
U 1 1 614C8B10
P 3300 4850
F 0 "SW?" H 3300 5135 50  0000 C CNN
F 1 "SW_Push" H 3300 5044 50  0000 C CNN
F 2 "" H 3300 5050 50  0001 C CNN
F 3 "~" H 3300 5050 50  0001 C CNN
	1    3300 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 614C9AE1
P 3300 4400
F 0 "SW?" H 3300 4685 50  0000 C CNN
F 1 "SW_Push" H 3300 4594 50  0000 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "~" H 3300 4600 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3950 3000 3950
Wire Wire Line
	3000 3950 3000 4400
Wire Wire Line
	3000 4400 3100 4400
Connection ~ 2800 3950
$Comp
L power:GND #PWR?
U 1 1 614D3394
P 4400 4400
F 0 "#PWR?" H 4400 4150 50  0001 C CNN
F 1 "GND" V 4405 4272 50  0000 R CNN
F 2 "" H 4400 4400 50  0001 C CNN
F 3 "" H 4400 4400 50  0001 C CNN
	1    4400 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 614E3B5B
P 3650 4400
F 0 "R?" V 3846 4400 50  0000 C CNN
F 1 "R_Small" V 3755 4400 50  0000 C CNN
F 2 "" H 3650 4400 50  0001 C CNN
F 3 "~" H 3650 4400 50  0001 C CNN
	1    3650 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 4400 4400 4400
Wire Wire Line
	3000 4400 3000 4850
Connection ~ 3000 4400
$Comp
L Device:R_Small R?
U 1 1 614D233E
P 4200 4400
F 0 "R?" V 4004 4400 50  0000 C CNN
F 1 "R_Small" V 4095 4400 50  0000 C CNN
F 2 "" H 4200 4400 50  0001 C CNN
F 3 "~" H 4200 4400 50  0001 C CNN
	1    4200 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615046FB
P 3650 4850
F 0 "R?" V 3454 4850 50  0000 C CNN
F 1 "R_Small" V 3545 4850 50  0000 C CNN
F 2 "" H 3650 4850 50  0001 C CNN
F 3 "~" H 3650 4850 50  0001 C CNN
	1    3650 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61504A53
P 4750 4800
F 0 "#PWR?" H 4750 4550 50  0001 C CNN
F 1 "GND" V 4755 4672 50  0000 R CNN
F 2 "" H 4750 4800 50  0001 C CNN
F 3 "" H 4750 4800 50  0001 C CNN
	1    4750 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3750 2600 3750
$Comp
L power:+5V #PWR?
U 1 1 61517064
P 2800 5650
F 0 "#PWR?" H 2800 5500 50  0001 C CNN
F 1 "+5V" H 2815 5823 50  0000 C CNN
F 2 "" H 2800 5650 50  0001 C CNN
F 3 "" H 2800 5650 50  0001 C CNN
	1    2800 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6151706A
P 2650 5650
F 0 "#PWR?" H 2650 5400 50  0001 C CNN
F 1 "GND" H 2655 5477 50  0000 C CNN
F 2 "" H 2650 5650 50  0001 C CNN
F 3 "" H 2650 5650 50  0001 C CNN
	1    2650 5650
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B4B-XH-A_LF__SN_ J?
U 1 1 61517079
P 2500 5350
F 0 "J?" V 2275 5358 50  0000 C CNN
F 1 "B4B-XH-A_LF__SN_" V 2366 5358 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.5mm_Drill1.1mm" H 2700 5550 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2700 5650 60  0001 L CNN
F 4 "455-2249-ND" H 2700 5750 60  0001 L CNN "Digi-Key_PN"
F 5 "B4B-XH-A(LF)(SN)" H 2700 5850 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2700 5950 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2700 6050 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 2700 6150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B4B-XH-A(LF)(SN)/455-2249-ND/1651047" H 2700 6250 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.5MM" H 2700 6350 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 2700 6450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2700 6550 60  0001 L CNN "Status"
	1    2500 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 5650 2650 5650
$Comp
L Device:R_Small R?
U 1 1 61517080
P 4600 6650
F 0 "R?" V 4404 6650 50  0000 C CNN
F 1 "R_Small" V 4495 6650 50  0000 C CNN
F 2 "" H 4600 6650 50  0001 C CNN
F 3 "~" H 4600 6650 50  0001 C CNN
	1    4600 6650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61517086
P 4000 5750
F 0 "D?" V 3947 5830 50  0000 L CNN
F 1 "LED" V 4038 5830 50  0000 L CNN
F 2 "" H 4000 5750 50  0001 C CNN
F 3 "~" H 4000 5750 50  0001 C CNN
	1    4000 5750
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6151708C
P 4200 6650
F 0 "D?" H 4193 6395 50  0000 C CNN
F 1 "LED" H 4193 6486 50  0000 C CNN
F 2 "" H 4200 6650 50  0001 C CNN
F 3 "~" H 4200 6650 50  0001 C CNN
	1    4200 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 5550 2800 5650
Wire Wire Line
	2600 5550 2800 5550
$Comp
L Switch:SW_Push SW?
U 1 1 61517094
P 3650 6450
F 0 "SW?" H 3650 6735 50  0000 C CNN
F 1 "SW_Push" H 3650 6644 50  0000 C CNN
F 2 "" H 3650 6650 50  0001 C CNN
F 3 "~" H 3650 6650 50  0001 C CNN
	1    3650 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 6151709A
P 3650 6000
F 0 "SW?" H 3650 6285 50  0000 C CNN
F 1 "SW_Push" H 3650 6194 50  0000 C CNN
F 2 "" H 3650 6200 50  0001 C CNN
F 3 "~" H 3650 6200 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5550 3000 5550
Wire Wire Line
	3000 5550 3000 6000
Wire Wire Line
	3000 6000 3450 6000
Connection ~ 2800 5550
Wire Wire Line
	3850 6000 4000 6000
$Comp
L power:GND #PWR?
U 1 1 615170A5
P 4400 6000
F 0 "#PWR?" H 4400 5750 50  0001 C CNN
F 1 "GND" V 4405 5872 50  0000 R CNN
F 2 "" H 4400 6000 50  0001 C CNN
F 3 "" H 4400 6000 50  0001 C CNN
	1    4400 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615170AB
P 3750 5450
F 0 "R?" V 3946 5450 50  0000 C CNN
F 1 "R_Small" V 3855 5450 50  0000 C CNN
F 2 "" H 3750 5450 50  0001 C CNN
F 3 "~" H 3750 5450 50  0001 C CNN
	1    3750 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 5450 4000 5450
Wire Wire Line
	4000 5450 4000 5600
Wire Wire Line
	3650 5450 2600 5450
Wire Wire Line
	4000 5900 4000 6000
Wire Wire Line
	4000 6000 4100 6000
Connection ~ 4000 6000
Wire Wire Line
	4300 6000 4400 6000
Wire Wire Line
	3000 6000 3000 6450
Wire Wire Line
	3000 6450 3450 6450
Connection ~ 3000 6000
$Comp
L Device:R_Small R?
U 1 1 615170BB
P 4200 6000
F 0 "R?" V 4004 6000 50  0000 C CNN
F 1 "R_Small" V 4095 6000 50  0000 C CNN
F 2 "" H 4200 6000 50  0001 C CNN
F 3 "~" H 4200 6000 50  0001 C CNN
	1    4200 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 615170C1
P 4200 6450
F 0 "R?" V 4004 6450 50  0000 C CNN
F 1 "R_Small" V 4095 6450 50  0000 C CNN
F 2 "" H 4200 6450 50  0001 C CNN
F 3 "~" H 4200 6450 50  0001 C CNN
	1    4200 6450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 615170C7
P 4400 6450
F 0 "#PWR?" H 4400 6200 50  0001 C CNN
F 1 "GND" V 4405 6322 50  0000 R CNN
F 2 "" H 4400 6450 50  0001 C CNN
F 3 "" H 4400 6450 50  0001 C CNN
	1    4400 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 6450 4100 6450
Wire Wire Line
	4300 6450 4400 6450
Wire Wire Line
	3850 6450 3850 6650
Wire Wire Line
	3850 6650 4050 6650
Connection ~ 3850 6450
Wire Wire Line
	4350 6650 4500 6650
Wire Wire Line
	4700 6650 4750 6650
Wire Wire Line
	4750 6650 4750 5350
Wire Wire Line
	4750 5350 2600 5350
Wire Notes Line
	2000 1250 4150 1250
Wire Notes Line
	4150 1250 4150 3350
Wire Notes Line
	4150 3350 1950 3350
Wire Notes Line
	1950 3350 1950 1250
Wire Notes Line
	1950 3450 4950 3450
Wire Notes Line
	4950 3450 4950 6900
Wire Notes Line
	4950 6900 1950 6900
Wire Notes Line
	1950 6900 1950 3450
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B2B-XH-A_LF__SN_ J?
U 1 1 6152DF30
P 5900 1750
F 0 "J?" V 5675 1758 50  0000 C CNN
F 1 "B2B-XH-A_LF__SN_" V 5766 1758 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x2_P2.5mm_Drill1.1mm" H 6100 1950 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6100 2050 60  0001 L CNN
F 4 "455-2247-ND" H 6100 2150 60  0001 L CNN "Digi-Key_PN"
F 5 "B2B-XH-A(LF)(SN)" H 6100 2250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 6100 2350 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 6100 2450 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6100 2550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B2B-XH-A(LF)(SN)/455-2247-ND/1651045" H 6100 2650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 2POS 2.5MM" H 6100 2750 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 6100 2850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6100 2950 60  0001 L CNN "Status"
	1    5900 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61530B85
P 6650 1500
F 0 "R?" V 6846 1500 50  0000 C CNN
F 1 "R_Small" V 6755 1500 50  0000 C CNN
F 2 "" H 6650 1500 50  0001 C CNN
F 3 "~" H 6650 1500 50  0001 C CNN
	1    6650 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61530F3F
P 6300 1500
F 0 "D?" H 6293 1245 50  0000 C CNN
F 1 "LED" H 6293 1336 50  0000 C CNN
F 2 "" H 6300 1500 50  0001 C CNN
F 3 "~" H 6300 1500 50  0001 C CNN
	1    6300 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 615313C6
P 6300 2000
F 0 "D?" H 6293 1745 50  0000 C CNN
F 1 "LED" H 6293 1836 50  0000 C CNN
F 2 "" H 6300 2000 50  0001 C CNN
F 3 "~" H 6300 2000 50  0001 C CNN
	1    6300 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1500 6150 1500
Wire Wire Line
	6000 1850 6000 2000
Wire Wire Line
	6000 2000 6150 2000
Wire Wire Line
	6000 1750 6000 1500
Wire Wire Line
	6450 1500 6550 1500
Wire Wire Line
	6750 1500 6750 1850
Wire Wire Line
	6750 1850 6000 1850
Connection ~ 6000 1850
$Comp
L Device:R_Small R?
U 1 1 61558FFD
P 6650 2000
F 0 "R?" V 6846 2000 50  0000 C CNN
F 1 "R_Small" V 6755 2000 50  0000 C CNN
F 2 "" H 6650 2000 50  0001 C CNN
F 3 "~" H 6650 2000 50  0001 C CNN
	1    6650 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2000 6550 2000
Wire Wire Line
	6750 2000 6950 2000
Wire Wire Line
	6950 2000 6950 1750
Wire Wire Line
	6950 1750 6000 1750
Connection ~ 6000 1750
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B2B-XH-A_LF__SN_ J?
U 1 1 615632F6
P 6450 2700
F 0 "J?" V 6225 2708 50  0000 C CNN
F 1 "B2B-XH-A_LF__SN_" V 6316 2708 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x2_P2.5mm_Drill1.1mm" H 6650 2900 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6650 3000 60  0001 L CNN
F 4 "455-2247-ND" H 6650 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "B2B-XH-A(LF)(SN)" H 6650 3200 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 6650 3300 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 6650 3400 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6650 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B2B-XH-A(LF)(SN)/455-2247-ND/1651045" H 6650 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 2POS 2.5MM" H 6650 3700 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 6650 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6650 3900 60  0001 L CNN "Status"
	1    6450 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2800 7100 2850
Wire Wire Line
	6550 2800 7100 2800
Wire Wire Line
	6550 2700 6850 2700
$Comp
L dk_Signal-Relays-Up-to-2-Amps:G5V-1-DC12 RLY?
U 1 1 61561E20
P 7400 3050
F 0 "RLY?" V 6935 3050 50  0000 C CNN
F 1 "G5V-1-DC12" V 7026 3050 50  0000 C CNN
F 2 "digikey-footprints:Relay_THT_G5V-1" H 7600 3250 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 7600 3350 60  0001 L CNN
F 4 "Z774-ND" H 7600 3450 60  0001 L CNN "Digi-Key_PN"
F 5 "G5V-1-DC12" H 7600 3550 60  0001 L CNN "MPN"
F 6 "Relays" H 7600 3650 60  0001 L CNN "Category"
F 7 "Signal Relays, Up to 2 Amps" H 7600 3750 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 7600 3850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5V-1-DC12/Z774-ND/87833" H 7600 3950 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 1A 12VDC" H 7600 4050 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 7600 4150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7600 4250 60  0001 L CNN "Status"
	1    7400 3050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 6156BBFE
P 7000 2550
F 0 "D?" H 7000 2333 50  0000 C CNN
F 1 "D_Zener" H 7000 2424 50  0000 C CNN
F 2 "" H 7000 2550 50  0001 C CNN
F 3 "~" H 7000 2550 50  0001 C CNN
	1    7000 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 2550 6850 2700
Wire Wire Line
	7150 2550 7300 2550
Wire Wire Line
	7600 2550 7700 2550
Wire Wire Line
	7700 2550 7700 2850
$Comp
L Diode:1N4005 D?
U 1 1 61573C37
P 7450 2550
F 0 "D?" H 7450 2767 50  0000 C CNN
F 1 "1N4005" H 7450 2676 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7450 2375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7450 2550 50  0001 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B4B-XH-A_LF__SN_ J?
U 1 1 61575549
P 5700 4050
F 0 "J?" V 5475 4058 50  0000 C CNN
F 1 "B4B-XH-A_LF__SN_" V 5566 4058 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.5mm_Drill1.1mm" H 5900 4250 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 5900 4350 60  0001 L CNN
F 4 "455-2249-ND" H 5900 4450 60  0001 L CNN "Digi-Key_PN"
F 5 "B4B-XH-A(LF)(SN)" H 5900 4550 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 5900 4650 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 5900 4750 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 5900 4850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B4B-XH-A(LF)(SN)/455-2249-ND/1651047" H 5900 4950 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.5MM" H 5900 5050 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 5900 5150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5900 5250 60  0001 L CNN "Status"
	1    5700 4050
	0    1    1    0   
$EndComp
$Comp
L dk_Temperature-Sensors-Analog-and-Digital-Output:DS18S20_ U?
U 1 1 615772B6
P 6850 4150
F 0 "U?" H 6978 4203 60  0000 L CNN
F 1 "DS18S20_" H 6978 4097 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 7050 4350 60  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS18S20.pdf" H 7050 4450 60  0001 L CNN
F 4 "DS18S20+-ND" H 7050 4550 60  0001 L CNN "Digi-Key_PN"
F 5 "DS18S20+" H 7050 4650 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 7050 4750 60  0001 L CNN "Category"
F 7 "Temperature Sensors - Analog and Digital Output" H 7050 4850 60  0001 L CNN "Family"
F 8 "https://datasheets.maximintegrated.com/en/ds/DS18S20.pdf" H 7050 4950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/maxim-integrated/DS18S20-/DS18S20--ND/1017697" H 7050 5050 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR DIGITAL -55C-125C TO92-3" H 7050 5150 60  0001 L CNN "Description"
F 11 "Maxim Integrated" H 7050 5250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7050 5350 60  0001 L CNN "Status"
	1    6850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4350 5800 4350
$Comp
L power:GND #PWR?
U 1 1 61579B8A
P 5950 4350
F 0 "#PWR?" H 5950 4100 50  0001 C CNN
F 1 "GND" H 5955 4177 50  0000 C CNN
F 2 "" H 5950 4350 50  0001 C CNN
F 3 "" H 5950 4350 50  0001 C CNN
	1    5950 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6157D11C
P 6100 4350
F 0 "#PWR?" H 6100 4200 50  0001 C CNN
F 1 "+5V" H 6115 4523 50  0000 C CNN
F 2 "" H 6100 4350 50  0001 C CNN
F 3 "" H 6100 4350 50  0001 C CNN
	1    6100 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 4350 6100 4250
Wire Wire Line
	6100 4250 5800 4250
$Comp
L Device:R_Small R?
U 1 1 61588F06
P 6300 4250
F 0 "R?" V 6496 4250 50  0000 C CNN
F 1 "R_Small" V 6405 4250 50  0000 C CNN
F 2 "" H 6300 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 4250 6200 4250
Connection ~ 6100 4250
Wire Wire Line
	5800 4150 6400 4150
Wire Wire Line
	6400 4150 6400 4250
Wire Wire Line
	6400 4150 6550 4150
Connection ~ 6400 4150
$Comp
L power:+5V #PWR?
U 1 1 61596477
P 6850 3800
F 0 "#PWR?" H 6850 3650 50  0001 C CNN
F 1 "+5V" V 6865 3928 50  0000 L CNN
F 2 "" H 6850 3800 50  0001 C CNN
F 3 "" H 6850 3800 50  0001 C CNN
	1    6850 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6159972B
P 6850 4550
F 0 "#PWR?" H 6850 4300 50  0001 C CNN
F 1 "GND" H 6855 4377 50  0000 C CNN
F 2 "" H 6850 4550 50  0001 C CNN
F 3 "" H 6850 4550 50  0001 C CNN
	1    6850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4450 6850 4550
Wire Wire Line
	6850 3800 6850 3850
Wire Wire Line
	4100 3850 4100 4400
Connection ~ 4100 4400
Wire Wire Line
	3500 4400 3550 4400
Wire Wire Line
	2600 3850 3850 3850
Wire Wire Line
	3750 4400 3850 4400
Wire Wire Line
	3850 4300 3850 4400
Connection ~ 3850 4400
Wire Wire Line
	3850 4400 4100 4400
Wire Wire Line
	3850 4000 3850 3850
Connection ~ 3850 3850
Wire Wire Line
	3850 3850 4100 3850
Wire Wire Line
	3000 4850 3100 4850
Wire Wire Line
	3550 4850 3500 4850
Wire Wire Line
	3750 4850 3800 4850
Wire Wire Line
	4750 3750 4750 4150
$Comp
L Device:R_Small R?
U 1 1 614BB4B1
P 4750 4350
F 0 "R?" V 4554 4350 50  0000 C CNN
F 1 "R_Small" V 4645 4350 50  0000 C CNN
F 2 "" H 4750 4350 50  0001 C CNN
F 3 "~" H 4750 4350 50  0001 C CNN
	1    4750 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 4450 4750 4800
Wire Wire Line
	4600 4150 4750 4150
Connection ~ 4750 4150
Wire Wire Line
	4750 4150 4750 4250
Wire Wire Line
	4100 4850 4600 4850
Wire Wire Line
	4600 4150 4600 4850
Wire Notes Line
	5500 1100 7100 1100
Wire Notes Line
	7100 1100 7100 2200
Wire Notes Line
	7100 2200 5500 2200
Wire Notes Line
	5500 2200 5500 1100
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B4B-XH-A_LF__SN_ J?
U 1 1 6164C117
P 6050 5750
F 0 "J?" V 5825 5758 50  0000 C CNN
F 1 "B4B-XH-A_LF__SN_" V 5916 5758 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.5mm_Drill1.1mm" H 6250 5950 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6250 6050 60  0001 L CNN
F 4 "455-2249-ND" H 6250 6150 60  0001 L CNN "Digi-Key_PN"
F 5 "B4B-XH-A(LF)(SN)" H 6250 6250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 6250 6350 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 6250 6450 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6250 6550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B4B-XH-A(LF)(SN)/455-2249-ND/1651047" H 6250 6650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.5MM" H 6250 6750 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 6250 6850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6250 6950 60  0001 L CNN "Status"
	1    6050 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6164C11F
P 6400 5850
F 0 "R?" V 6204 5850 50  0000 C CNN
F 1 "R_Small" V 6295 5850 50  0000 C CNN
F 2 "" H 6400 5850 50  0001 C CNN
F 3 "~" H 6400 5850 50  0001 C CNN
	1    6400 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6164C125
P 6400 5550
F 0 "R?" V 6204 5550 50  0000 C CNN
F 1 "R_Small" V 6295 5550 50  0000 C CNN
F 2 "" H 6400 5550 50  0001 C CNN
F 3 "~" H 6400 5550 50  0001 C CNN
	1    6400 5550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6164C12B
P 6800 5850
F 0 "D?" H 6793 5595 50  0000 C CNN
F 1 "LED" H 6793 5686 50  0000 C CNN
F 2 "" H 6800 5850 50  0001 C CNN
F 3 "~" H 6800 5850 50  0001 C CNN
	1    6800 5850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 6164C131
P 6800 5550
F 0 "D?" H 6793 5295 50  0000 C CNN
F 1 "LED" H 6793 5386 50  0000 C CNN
F 2 "" H 6800 5550 50  0001 C CNN
F 3 "~" H 6800 5550 50  0001 C CNN
	1    6800 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 5750 6150 5550
Wire Wire Line
	6150 5550 6300 5550
Wire Wire Line
	6500 5550 6650 5550
Wire Wire Line
	6150 5850 6300 5850
Wire Wire Line
	6500 5850 6650 5850
$Comp
L power:GND #PWR?
U 1 1 6164C13C
P 7200 5700
F 0 "#PWR?" H 7200 5450 50  0001 C CNN
F 1 "GND" V 7205 5572 50  0000 R CNN
F 2 "" H 7200 5700 50  0001 C CNN
F 3 "" H 7200 5700 50  0001 C CNN
	1    7200 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 5550 7200 5550
Wire Wire Line
	7200 5550 7200 5700
Wire Wire Line
	6950 5850 7200 5850
Wire Wire Line
	7200 5850 7200 5700
Connection ~ 7200 5700
$Comp
L Device:R_Small R?
U 1 1 61668427
P 6400 5950
F 0 "R?" V 6204 5950 50  0000 C CNN
F 1 "R_Small" V 6295 5950 50  0000 C CNN
F 2 "" H 6400 5950 50  0001 C CNN
F 3 "~" H 6400 5950 50  0001 C CNN
	1    6400 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 616689D9
P 6400 6100
F 0 "R?" V 6204 6100 50  0000 C CNN
F 1 "R_Small" V 6295 6100 50  0000 C CNN
F 2 "" H 6400 6100 50  0001 C CNN
F 3 "~" H 6400 6100 50  0001 C CNN
	1    6400 6100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61668C6A
P 6800 6000
F 0 "D?" H 6793 5745 50  0000 C CNN
F 1 "LED" H 6793 5836 50  0000 C CNN
F 2 "" H 6800 6000 50  0001 C CNN
F 3 "~" H 6800 6000 50  0001 C CNN
	1    6800 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 6166925E
P 6800 6150
F 0 "D?" H 6793 5895 50  0000 C CNN
F 1 "LED" H 6793 5986 50  0000 C CNN
F 2 "" H 6800 6150 50  0001 C CNN
F 3 "~" H 6800 6150 50  0001 C CNN
	1    6800 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 5950 6300 5950
Wire Wire Line
	6150 6050 6150 6100
Wire Wire Line
	6150 6100 6300 6100
Wire Wire Line
	6500 5950 6650 5950
Wire Wire Line
	6650 5950 6650 6000
Wire Wire Line
	6500 6100 6650 6100
Wire Wire Line
	6650 6100 6650 6150
Wire Wire Line
	6950 6000 7200 6000
Wire Wire Line
	7200 6000 7200 5850
Connection ~ 7200 5850
Wire Wire Line
	6950 6150 7200 6150
Wire Wire Line
	7200 6150 7200 6000
Connection ~ 7200 6000
Wire Notes Line
	5550 5250 7550 5250
Wire Notes Line
	7550 5250 7550 6350
Wire Notes Line
	7550 6350 5550 6350
Wire Notes Line
	5550 6350 5550 5250
$EndSCHEMATC
