EESchema Schematic File Version 4
LIBS:LORA_Relay_AC-cache
EELAYER 29 0
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
L Relay:FINDER-32.21-x000 K1
U 1 1 5C59BA0E
P 7675 2350
F 0 "K1" H 8105 2396 50  0000 L CNN
F 1 "relay1" H 8105 2305 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8945 2320 50  0001 C CNN
F 3 "https://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 7675 2350 50  0001 C CNN
	1    7675 2350
	1    0    0    -1  
$EndComp
$Comp
L Relay:FINDER-32.21-x000 K2
U 1 1 5C59BB5E
P 9700 2325
F 0 "K2" H 10130 2371 50  0000 L CNN
F 1 "relay2" H 10130 2280 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 10970 2295 50  0001 C CNN
F 3 "https://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 9700 2325 50  0001 C CNN
	1    9700 2325
	1    0    0    -1  
$EndComp
$Comp
L MainWorking:ArduinoNano U3
U 1 1 5C59BD65
P 4150 2550
F 0 "U3" H 4175 3747 60  0000 C CNN
F 1 "ArduinoNano" H 4175 3641 60  0000 C CNN
F 2 "MainWorking:ArduinoNano" H 4150 2550 60  0001 C CNN
F 3 "" H 4150 2550 60  0001 C CNN
	1    4150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5C59BE0A
P 7025 2350
F 0 "D3" V 6979 2429 50  0000 L CNN
F 1 "4001" V 7125 2375 50  0000 L CNN
F 2 "Diodes_THT:D_A-405_P7.62mm_Horizontal" H 7025 2350 50  0001 C CNN
F 3 "~" H 7025 2350 50  0001 C CNN
	1    7025 2350
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5C59BED5
P 9075 2350
F 0 "D4" V 9029 2429 50  0000 L CNN
F 1 "4001" V 9175 2375 50  0000 L CNN
F 2 "Diodes_THT:D_A-405_P7.62mm_Horizontal" H 9075 2350 50  0001 C CNN
F 3 "~" H 9075 2350 50  0001 C CNN
	1    9075 2350
	0    1    1    0   
$EndComp
$Comp
L MainWorking:HLK-PM01 U1
U 1 1 5C59C178
P 2100 5425
F 0 "U1" H 2125 5540 50  0000 C CNN
F 1 "HLK-PM01" H 2125 5449 50  0000 C CNN
F 2 "MainWorking:HLK-PM01" H 2100 5425 50  0001 C CNN
F 3 "" H 2100 5425 50  0001 C CNN
	1    2100 5425
	1    0    0    1   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5C59C4FE
P 9900 2775
F 0 "F2" H 9960 2821 50  0000 L CNN
F 1 "Fuse" H 9960 2730 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:BladeFuse-Mini" V 9830 2775 50  0001 C CNN
F 3 "~" H 9900 2775 50  0001 C CNN
	1    9900 2775
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5C59C60A
P 7875 2800
F 0 "F1" H 7935 2846 50  0000 L CNN
F 1 "Fuse" H 7935 2755 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:BladeFuse-Mini" V 7805 2800 50  0001 C CNN
F 3 "~" H 7875 2800 50  0001 C CNN
	1    7875 2800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 5C59CA1C
P 9400 2925
F 0 "Q3" H 9200 3000 50  0000 L CNN
F 1 "MMBT3904" H 9075 3100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9600 2850 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9400 2925 50  0001 L CNN
	1    9400 2925
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 5C59CABC
P 7375 2950
F 0 "Q2" H 7175 3025 50  0000 L CNN
F 1 "MMBT3904" H 7050 3125 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7575 2875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7375 2950 50  0001 L CNN
	1    7375 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5C59CE05
P 10275 4825
F 0 "J3" V 10325 4975 50  0000 C CNN
F 1 "IPX" V 10250 4975 50  0000 C CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 10275 4825 50  0001 C CNN
F 3 " ~" H 10275 4825 50  0001 C CNN
	1    10275 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5C59CEF1
P 9000 2925
F 0 "R15" V 8793 2925 50  0000 C CNN
F 1 "100" V 8884 2925 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8930 2925 50  0001 C CNN
F 3 "~" H 9000 2925 50  0001 C CNN
	1    9000 2925
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C59CF64
P 6950 2950
F 0 "R4" V 6743 2950 50  0000 C CNN
F 1 "100" V 6834 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6880 2950 50  0001 C CNN
F 3 "~" H 6950 2950 50  0001 C CNN
	1    6950 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5C59E9CA
P 1025 5075
F 0 "J1" H 945 4750 50  0000 C CNN
F 1 "ACin" H 945 4841 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-3pol" H 1025 5075 50  0001 C CNN
F 3 "~" H 1025 5075 50  0001 C CNN
	1    1025 5075
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5C59F17E
P 2100 6000
F 0 "U2" H 2100 6242 50  0000 C CNN
F 1 "AMS1117-3.3" H 2100 6151 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2100 6200 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2200 5750 50  0001 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5275 1250 5175
Wire Wire Line
	1250 5175 1225 5175
Wire Wire Line
	1225 5075 1425 5075
Wire Wire Line
	1550 5075 1550 5225
Wire Wire Line
	1550 5225 1650 5225
$Comp
L power:Earth #PWR0101
U 1 1 5C5CC42F
P 1250 5275
F 0 "#PWR0101" H 1250 5025 50  0001 C CNN
F 1 "Earth" H 1250 5125 50  0001 C CNN
F 2 "" H 1250 5275 50  0001 C CNN
F 3 "~" H 1250 5275 50  0001 C CNN
	1    1250 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 4975 1625 4975
$Comp
L power:GNDD #PWR0102
U 1 1 5C5CC549
P 2875 5225
F 0 "#PWR0102" H 2875 4975 50  0001 C CNN
F 1 "GNDD" H 2879 5070 50  0000 C CNN
F 2 "" H 2875 5225 50  0001 C CNN
F 3 "" H 2875 5225 50  0001 C CNN
	1    2875 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 4975 2600 4975
$Comp
L power:+5V #PWR0103
U 1 1 5C5CC669
P 3400 4750
F 0 "#PWR0103" H 3400 4600 50  0001 C CNN
F 1 "+5V" H 3415 4923 50  0000 C CNN
F 2 "" H 3400 4750 50  0001 C CNN
F 3 "" H 3400 4750 50  0001 C CNN
	1    3400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VAC #PWR0104
U 1 1 5C5CB3BA
P 1625 4750
F 0 "#PWR0104" H 1625 4650 50  0001 C CNN
F 1 "VAC" H 1625 5025 50  0000 C CNN
F 2 "" H 1625 4750 50  0001 C CNN
F 3 "" H 1625 4750 50  0001 C CNN
	1    1625 4750
	1    0    0    -1  
$EndComp
$Comp
L power:NEUT #PWR0105
U 1 1 5C5CB5FA
P 1425 4875
F 0 "#PWR0105" H 1425 4725 50  0001 C CNN
F 1 "NEUT" H 1442 5048 50  0000 C CNN
F 2 "" H 1425 4875 50  0001 C CNN
F 3 "" H 1425 4875 50  0001 C CNN
	1    1425 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 4750 1625 4975
Connection ~ 1625 4975
Wire Wire Line
	1625 4975 1650 4975
Wire Wire Line
	1425 4875 1425 5075
Connection ~ 1425 5075
Wire Wire Line
	1425 5075 1550 5075
$Comp
L power:VAC #PWR0106
U 1 1 5C5CB7DE
P 7650 3175
F 0 "#PWR0106" H 7650 3075 50  0001 C CNN
F 1 "VAC" H 7650 3450 50  0000 C CNN
F 2 "" H 7650 3175 50  0001 C CNN
F 3 "" H 7650 3175 50  0001 C CNN
	1    7650 3175
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0107
U 1 1 5C5CBA84
P 9500 3350
F 0 "#PWR0107" H 9500 3100 50  0001 C CNN
F 1 "Earth" H 9500 3200 50  0001 C CNN
F 2 "" H 9500 3350 50  0001 C CNN
F 3 "~" H 9500 3350 50  0001 C CNN
	1    9500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0108
U 1 1 5C5CBABA
P 7475 3400
F 0 "#PWR0108" H 7475 3150 50  0001 C CNN
F 1 "Earth" H 7475 3250 50  0001 C CNN
F 2 "" H 7475 3400 50  0001 C CNN
F 3 "~" H 7475 3400 50  0001 C CNN
	1    7475 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 2650 7475 2700
Wire Wire Line
	7025 2500 7025 2700
Wire Wire Line
	7025 2700 7475 2700
Connection ~ 7475 2700
Wire Wire Line
	7475 2700 7475 2750
Wire Wire Line
	7025 2200 7025 2050
Wire Wire Line
	7025 2050 7475 2050
Wire Wire Line
	9500 2725 9500 2675
Wire Wire Line
	9075 2500 9075 2675
Wire Wire Line
	9075 2675 9500 2675
Connection ~ 9500 2675
Wire Wire Line
	9500 2675 9500 2625
Wire Wire Line
	9075 2025 9500 2025
Wire Wire Line
	9075 2025 9075 2200
Wire Wire Line
	7825 1850 7775 1850
Wire Wire Line
	7775 1850 7775 2050
Wire Wire Line
	7975 2050 7975 1850
Wire Wire Line
	7975 1850 7925 1850
Wire Wire Line
	9850 1850 9800 1850
Wire Wire Line
	9800 1850 9800 2025
Wire Wire Line
	9950 1850 10000 1850
Wire Wire Line
	10000 1850 10000 2025
$Comp
L power:VAC #PWR0109
U 1 1 5C5CD2A1
P 9700 3100
F 0 "#PWR0109" H 9700 3000 50  0001 C CNN
F 1 "VAC" H 9700 3375 50  0000 C CNN
F 2 "" H 9700 3100 50  0001 C CNN
F 3 "" H 9700 3100 50  0001 C CNN
	1    9700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3100 9900 3100
Wire Wire Line
	9900 3100 9900 2925
Wire Wire Line
	7650 3175 7875 3175
Wire Wire Line
	7875 3175 7875 2950
$Comp
L power:NEUT #PWR0110
U 1 1 5C5CDDD2
P 8125 2100
F 0 "#PWR0110" H 8125 1950 50  0001 C CNN
F 1 "NEUT" H 8142 2273 50  0000 C CNN
F 2 "" H 8125 2100 50  0001 C CNN
F 3 "" H 8125 2100 50  0001 C CNN
	1    8125 2100
	1    0    0    -1  
$EndComp
$Comp
L power:NEUT #PWR0111
U 1 1 5C5CE2B4
P 10150 2100
F 0 "#PWR0111" H 10150 1950 50  0001 C CNN
F 1 "NEUT" H 10167 2273 50  0000 C CNN
F 2 "" H 10150 2100 50  0001 C CNN
F 3 "" H 10150 2100 50  0001 C CNN
	1    10150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0112
U 1 1 5C5CF0F2
P 10275 5025
F 0 "#PWR0112" H 10275 4775 50  0001 C CNN
F 1 "GNDD" H 10279 4870 50  0000 C CNN
F 2 "" H 10275 5025 50  0001 C CNN
F 3 "" H 10275 5025 50  0001 C CNN
	1    10275 5025
	1    0    0    -1  
$EndComp
Text GLabel 8250 6300 0    50   Input ~ 0
miso
Text GLabel 8075 5725 0    50   Input ~ 0
mosi
Text Label 7475 5025 2    50   ~ 0
lora_cs
Text Label 7925 4650 2    50   ~ 0
lora_rst
Wire Wire Line
	9150 6025 9150 5925
$Comp
L Device:C_Small C1
U 1 1 5C5D11D9
P 1700 6150
F 0 "C1" H 1500 6225 50  0000 L CNN
F 1 "1uf" H 1475 6125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1700 6150 50  0001 C CNN
F 3 "~" H 1700 6150 50  0001 C CNN
	1    1700 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C5D12C3
P 2550 6125
F 0 "C2" H 2642 6171 50  0000 L CNN
F 1 "22uf" H 2642 6080 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2550 6125 50  0001 C CNN
F 3 "~" H 2550 6125 50  0001 C CNN
	1    2550 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6025 2550 6000
Wire Wire Line
	2550 6000 2400 6000
Wire Wire Line
	1800 6000 1700 6000
Wire Wire Line
	1700 6000 1700 6050
$Comp
L power:+5V #PWR0113
U 1 1 5C5D2385
P 1575 5900
F 0 "#PWR0113" H 1575 5750 50  0001 C CNN
F 1 "+5V" H 1590 6073 50  0000 C CNN
F 2 "" H 1575 5900 50  0001 C CNN
F 3 "" H 1575 5900 50  0001 C CNN
	1    1575 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 5900 1575 6000
Wire Wire Line
	1575 6000 1700 6000
Connection ~ 1700 6000
Wire Wire Line
	2100 6425 2100 6300
Wire Wire Line
	2100 6300 2550 6300
Wire Wire Line
	2550 6300 2550 6225
Connection ~ 2100 6300
Wire Wire Line
	2100 6300 1700 6300
Wire Wire Line
	1700 6300 1700 6250
$Comp
L power:+3.3V #PWR0115
U 1 1 5C5D5047
P 2700 5950
F 0 "#PWR0115" H 2700 5800 50  0001 C CNN
F 1 "+3.3V" H 2715 6123 50  0000 C CNN
F 2 "" H 2700 5950 50  0001 C CNN
F 3 "" H 2700 5950 50  0001 C CNN
	1    2700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5950 2700 6000
Wire Wire Line
	2700 6000 2550 6000
Connection ~ 2550 6000
$Comp
L power:+3.3V #PWR0116
U 1 1 5C5D5DDF
P 9100 4050
F 0 "#PWR0116" H 9100 3900 50  0001 C CNN
F 1 "+3.3V" H 9115 4223 50  0000 C CNN
F 2 "" H 9100 4050 50  0001 C CNN
F 3 "" H 9100 4050 50  0001 C CNN
	1    9100 4050
	1    0    0    -1  
$EndComp
NoConn ~ 9850 5475
NoConn ~ 9850 5375
NoConn ~ 9850 5275
NoConn ~ 9850 5175
NoConn ~ 9850 5075
Wire Wire Line
	9150 2925 9200 2925
Wire Wire Line
	7100 2950 7150 2950
Text Label 8850 2925 2    50   ~ 0
relay2
Text Label 6800 2950 2    50   ~ 0
relay1
$Comp
L Device:R_Small R9
U 1 1 5C5EE674
P 8025 4650
F 0 "R9" V 7950 4650 50  0000 C CNN
F 1 "1k" V 8025 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8025 4650 50  0001 C CNN
F 3 "~" H 8025 4650 50  0001 C CNN
	1    8025 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5C5EE6DD
P 8025 4775
F 0 "R10" V 8125 4775 50  0000 C CNN
F 1 "2k" V 8025 4775 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8025 4775 50  0001 C CNN
F 3 "~" H 8025 4775 50  0001 C CNN
	1    8025 4775
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0119
U 1 1 5C5F246E
P 7800 4800
F 0 "#PWR0119" H 7800 4550 50  0001 C CNN
F 1 "GNDD" H 7804 4645 50  0000 C CNN
F 2 "" H 7800 4800 50  0001 C CNN
F 3 "" H 7800 4800 50  0001 C CNN
	1    7800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4800 7800 4775
Wire Wire Line
	7800 4775 7925 4775
Wire Wire Line
	8125 4650 8125 4725
Wire Wire Line
	8650 4925 8225 4925
Wire Wire Line
	8225 4925 8225 4725
Wire Wire Line
	8225 4725 8125 4725
Connection ~ 8125 4725
Wire Wire Line
	8125 4725 8125 4775
$Comp
L Device:R_Small R7
U 1 1 5C5FB8FD
P 7575 5025
F 0 "R7" V 7500 5025 50  0000 C CNN
F 1 "1k" V 7575 5025 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 7575 5025 50  0001 C CNN
F 3 "~" H 7575 5025 50  0001 C CNN
	1    7575 5025
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5C5FB903
P 7575 5150
F 0 "R8" V 7675 5150 50  0000 C CNN
F 1 "2k" V 7575 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 7575 5150 50  0001 C CNN
F 3 "~" H 7575 5150 50  0001 C CNN
	1    7575 5150
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0120
U 1 1 5C5FB909
P 7350 5175
F 0 "#PWR0120" H 7350 4925 50  0001 C CNN
F 1 "GNDD" H 7354 5020 50  0000 C CNN
F 2 "" H 7350 5175 50  0001 C CNN
F 3 "" H 7350 5175 50  0001 C CNN
	1    7350 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5175 7350 5150
Wire Wire Line
	7350 5150 7475 5150
Wire Wire Line
	7675 5025 7675 5100
Connection ~ 7675 5100
Wire Wire Line
	7675 5100 7675 5150
Wire Wire Line
	8650 5100 8650 5075
Wire Wire Line
	7675 5100 8650 5100
$Comp
L Device:R_Small R13
U 1 1 5C60039B
P 8225 5725
F 0 "R13" V 8150 5725 50  0000 C CNN
F 1 "1k" V 8225 5725 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8225 5725 50  0001 C CNN
F 3 "~" H 8225 5725 50  0001 C CNN
	1    8225 5725
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5C6003A1
P 8225 5850
F 0 "R14" V 8325 5850 50  0000 C CNN
F 1 "2k" V 8225 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8225 5850 50  0001 C CNN
F 3 "~" H 8225 5850 50  0001 C CNN
	1    8225 5850
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0121
U 1 1 5C6003A7
P 8000 5875
F 0 "#PWR0121" H 8000 5625 50  0001 C CNN
F 1 "GNDD" H 8004 5720 50  0000 C CNN
F 2 "" H 8000 5875 50  0001 C CNN
F 3 "" H 8000 5875 50  0001 C CNN
	1    8000 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5875 8000 5850
Wire Wire Line
	8000 5850 8125 5850
Wire Wire Line
	8325 5725 8325 5775
Wire Wire Line
	8325 5775 8550 5775
Connection ~ 8325 5775
Wire Wire Line
	8325 5775 8325 5850
Wire Wire Line
	8075 5725 8125 5725
Wire Wire Line
	8650 5525 8650 6025
Wire Wire Line
	8650 6025 8250 6025
Text GLabel 8050 5250 0    50   Input ~ 0
sck
$Comp
L Device:R_Small R11
U 1 1 5C62D0E2
P 8200 5250
F 0 "R11" V 8125 5250 50  0000 C CNN
F 1 "1k" V 8200 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8200 5250 50  0001 C CNN
F 3 "~" H 8200 5250 50  0001 C CNN
	1    8200 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5C62D0E8
P 8200 5375
F 0 "R12" V 8300 5375 50  0000 C CNN
F 1 "2k" V 8200 5375 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8200 5375 50  0001 C CNN
F 3 "~" H 8200 5375 50  0001 C CNN
	1    8200 5375
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0122
U 1 1 5C62D0EE
P 7975 5400
F 0 "#PWR0122" H 7975 5150 50  0001 C CNN
F 1 "GNDD" H 7979 5245 50  0000 C CNN
F 2 "" H 7975 5400 50  0001 C CNN
F 3 "" H 7975 5400 50  0001 C CNN
	1    7975 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 5400 7975 5375
Wire Wire Line
	7975 5375 8100 5375
Wire Wire Line
	8050 5250 8100 5250
Wire Wire Line
	8550 5775 8550 5375
Wire Wire Line
	8550 5375 8650 5375
Wire Wire Line
	8300 5250 8300 5300
Wire Wire Line
	8650 5225 8400 5225
Wire Wire Line
	8400 5225 8400 5300
Wire Wire Line
	8400 5300 8300 5300
Connection ~ 8300 5300
Wire Wire Line
	8300 5300 8300 5375
Wire Wire Line
	2600 5225 2875 5225
$Comp
L power:+5V #PWR0123
U 1 1 5C64F66C
P 4830 1700
F 0 "#PWR0123" H 4830 1550 50  0001 C CNN
F 1 "+5V" H 4845 1873 50  0000 C CNN
F 2 "" H 4830 1700 50  0001 C CNN
F 3 "" H 4830 1700 50  0001 C CNN
	1    4830 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1900 4830 1900
Wire Wire Line
	4830 1900 4830 1700
$Comp
L power:GNDD #PWR0124
U 1 1 5C6525F5
P 3350 1900
F 0 "#PWR0124" H 3350 1650 50  0001 C CNN
F 1 "GNDD" H 3354 1745 50  0000 C CNN
F 2 "" H 3350 1900 50  0001 C CNN
F 3 "" H 3350 1900 50  0001 C CNN
	1    3350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1900 3800 1900
$Comp
L Device:LED D1
U 1 1 5C6556F4
P 3075 2325
F 0 "D1" H 3200 2375 50  0000 C CNN
F 1 "LED" H 3075 2225 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3075 2325 50  0001 C CNN
F 3 "~" H 3075 2325 50  0001 C CNN
	1    3075 2325
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5C6557C2
P 3075 2175
F 0 "D2" H 3200 2225 50  0000 C CNN
F 1 "LED" H 3075 2275 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3075 2175 50  0001 C CNN
F 3 "~" H 3075 2175 50  0001 C CNN
	1    3075 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C655868
P 2700 2175
F 0 "R1" V 2600 2175 50  0000 C CNN
F 1 "3k3" V 2700 2175 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 2175 50  0001 C CNN
F 3 "~" H 2700 2175 50  0001 C CNN
	1    2700 2175
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C65597B
P 2700 2325
F 0 "R2" V 2825 2325 50  0000 C CNN
F 1 "3k3" V 2700 2325 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 2325 50  0001 C CNN
F 3 "~" H 2700 2325 50  0001 C CNN
	1    2700 2325
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5C655D7E
P 3000 4950
F 0 "C3" H 3115 4996 50  0000 L CNN
F 1 ".1uf" H 3050 4875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3038 4800 50  0001 C CNN
F 3 "~" H 3000 4950 50  0001 C CNN
	1    3000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 4975 2875 4800
Wire Wire Line
	2875 4800 3000 4800
Wire Wire Line
	3400 4750 3400 4800
Connection ~ 3000 4800
$Comp
L Switch:SW_Push SW1
U 1 1 5C664029
P 2875 2800
F 0 "SW1" H 2775 2900 50  0000 C CNN
F 1 "SW_Push" H 2875 2750 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2875 3000 50  0001 C CNN
F 3 "" H 2875 3000 50  0001 C CNN
	1    2875 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C66472A
P 7150 3125
F 0 "R5" V 6943 3125 50  0000 C CNN
F 1 "10k" V 7034 3125 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 3125 50  0001 C CNN
F 3 "~" H 7150 3125 50  0001 C CNN
	1    7150 3125
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5C6647D6
P 9200 3100
F 0 "R16" V 8993 3100 50  0000 C CNN
F 1 "10k" V 9084 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9130 3100 50  0001 C CNN
F 3 "~" H 9200 3100 50  0001 C CNN
	1    9200 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 2950 9200 2925
Connection ~ 9200 2925
Wire Wire Line
	9200 3250 9500 3250
Wire Wire Line
	9500 3250 9500 3300
Wire Wire Line
	9500 3125 9500 3250
Connection ~ 9500 3250
Wire Wire Line
	7150 2975 7150 2950
Connection ~ 7150 2950
Wire Wire Line
	7150 2950 7175 2950
Wire Wire Line
	7150 3300 7150 3275
Wire Wire Line
	7150 3300 7475 3300
Wire Wire Line
	7475 3150 7475 3300
Wire Wire Line
	7475 3400 7475 3300
Connection ~ 7475 3300
$Comp
L power:GNDD #PWR0128
U 1 1 5C683661
P 9150 6025
F 0 "#PWR0128" H 9150 5775 50  0001 C CNN
F 1 "GNDD" H 9154 5870 50  0000 C CNN
F 2 "" H 9150 6025 50  0001 C CNN
F 3 "" H 9150 6025 50  0001 C CNN
	1    9150 6025
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0114
U 1 1 5C685E15
P 2100 6425
F 0 "#PWR0114" H 2100 6175 50  0001 C CNN
F 1 "GNDD" H 2104 6270 50  0000 C CNN
F 2 "" H 2100 6425 50  0001 C CNN
F 3 "" H 2100 6425 50  0001 C CNN
	1    2100 6425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 5C686562
P 7475 1875
F 0 "#PWR0129" H 7475 1725 50  0001 C CNN
F 1 "+5V" H 7490 2048 50  0000 C CNN
F 2 "" H 7475 1875 50  0001 C CNN
F 3 "" H 7475 1875 50  0001 C CNN
	1    7475 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 1875 7475 2050
Connection ~ 7475 2050
$Comp
L power:+5V #PWR0130
U 1 1 5C68A6FB
P 9500 1900
F 0 "#PWR0130" H 9500 1750 50  0001 C CNN
F 1 "+5V" H 9515 2073 50  0000 C CNN
F 2 "" H 9500 1900 50  0001 C CNN
F 3 "" H 9500 1900 50  0001 C CNN
	1    9500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1900 9500 2025
Connection ~ 9500 2025
Wire Wire Line
	8250 6025 8250 6300
Wire Wire Line
	3225 2175 3525 2175
Wire Wire Line
	3525 2175 3525 2000
Wire Wire Line
	3525 2000 3800 2000
Wire Wire Line
	3225 2325 3625 2325
Wire Wire Line
	3625 2325 3625 2100
Wire Wire Line
	3625 2100 3800 2100
Wire Wire Line
	2850 2175 2925 2175
Wire Wire Line
	2925 2325 2850 2325
$Comp
L power:GNDD #PWR0131
U 1 1 5C6BB69C
P 2475 2425
F 0 "#PWR0131" H 2475 2175 50  0001 C CNN
F 1 "GNDD" H 2479 2270 50  0000 C CNN
F 2 "" H 2475 2425 50  0001 C CNN
F 3 "" H 2475 2425 50  0001 C CNN
	1    2475 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 2425 2475 2325
Wire Wire Line
	2475 2325 2550 2325
Wire Wire Line
	2475 2325 2475 2175
Wire Wire Line
	2475 2175 2550 2175
Connection ~ 2475 2325
Wire Wire Line
	3800 2200 3650 2200
$Comp
L power:GNDD #PWR0132
U 1 1 5C6D0CFC
P 2600 3175
F 0 "#PWR0132" H 2600 2925 50  0001 C CNN
F 1 "GNDD" H 2604 3020 50  0000 C CNN
F 2 "" H 2600 3175 50  0001 C CNN
F 3 "" H 2600 3175 50  0001 C CNN
	1    2600 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2300 3675 2300
Wire Wire Line
	2600 2800 2675 2800
Wire Wire Line
	3650 2200 3650 2525
Wire Wire Line
	3650 2525 3075 2525
Wire Wire Line
	3075 2525 3075 2800
Wire Wire Line
	3800 2400 3700 2400
Wire Wire Line
	3700 2400 3700 3425
Wire Wire Line
	3700 3425 3550 3425
Wire Wire Line
	3550 3525 3725 3525
Wire Wire Line
	3725 3525 3725 2500
Wire Wire Line
	3725 2500 3800 2500
Wire Wire Line
	3750 2600 3750 3625
Wire Wire Line
	3750 3625 3550 3625
Wire Wire Line
	3750 2600 3800 2600
NoConn ~ 3800 1800
NoConn ~ 4550 1800
$Comp
L power:GNDD #PWR0134
U 1 1 5C7CA9C7
P 4725 1700
F 0 "#PWR0134" H 4725 1450 50  0001 C CNN
F 1 "GNDD" H 4729 1545 50  0000 C CNN
F 2 "" H 4725 1700 50  0001 C CNN
F 3 "" H 4725 1700 50  0001 C CNN
	1    4725 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 1700 4550 1700
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5C5F32BA
P 7925 1650
F 0 "J2" V 7925 1900 50  0000 R CNN
F 1 "relay1" V 8025 1825 50  0000 R CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-4pol" H 7925 1650 50  0001 C CNN
F 3 "~" H 7925 1650 50  0001 C CNN
	1    7925 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5C5F3471
P 9950 1650
F 0 "J5" V 9925 1900 50  0000 R CNN
F 1 "relay2" V 10050 1825 50  0000 R CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-4pol" H 9950 1650 50  0001 C CNN
F 3 "~" H 9950 1650 50  0001 C CNN
	1    9950 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 2100 10050 2100
Wire Wire Line
	10050 2100 10050 1850
Wire Wire Line
	8125 2100 8025 2100
Wire Wire Line
	8025 2100 8025 1850
Wire Wire Line
	8125 1850 8350 1850
$Comp
L power:Earth #PWR0135
U 1 1 5C64990E
P 8350 1900
F 0 "#PWR0135" H 8350 1650 50  0001 C CNN
F 1 "Earth" H 8350 1750 50  0001 C CNN
F 2 "" H 8350 1900 50  0001 C CNN
F 3 "~" H 8350 1900 50  0001 C CNN
	1    8350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1900 8350 1850
Wire Wire Line
	10150 1850 10325 1850
$Comp
L power:Earth #PWR0136
U 1 1 5C65A01A
P 10325 1925
F 0 "#PWR0136" H 10325 1675 50  0001 C CNN
F 1 "Earth" H 10325 1775 50  0001 C CNN
F 2 "" H 10325 1925 50  0001 C CNN
F 3 "~" H 10325 1925 50  0001 C CNN
	1    10325 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	10325 1925 10325 1850
NoConn ~ 4550 1600
NoConn ~ 4550 2900
Text Label 9850 4975 0    50   ~ 0
irq
Text Label 3550 2700 2    50   ~ 0
irq
Wire Wire Line
	3550 2700 3800 2700
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5C615138
P 5700 2325
F 0 "J7" H 5779 2367 50  0000 L CNN
F 1 "tmp36" H 5779 2276 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5700 2325 50  0001 C CNN
F 3 "~" H 5700 2325 50  0001 C CNN
	1    5700 2325
	1    0    0    -1  
$EndComp
Text GLabel 4550 3000 2    50   Input ~ 0
sck
Text Label 4550 2700 0    50   ~ 0
lora_rst
Text Label 3650 2800 2    50   ~ 0
lora_cs
Text GLabel 3600 2900 0    50   Input ~ 0
mosi
Text GLabel 3600 3000 0    50   Input ~ 0
miso
$Comp
L power:+5V #PWR0137
U 1 1 5C615FDB
P 5250 2225
F 0 "#PWR0137" H 5250 2075 50  0001 C CNN
F 1 "+5V" H 5265 2398 50  0000 C CNN
F 2 "" H 5250 2225 50  0001 C CNN
F 3 "" H 5250 2225 50  0001 C CNN
	1    5250 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0138
U 1 1 5C616044
P 5450 2450
F 0 "#PWR0138" H 5450 2200 50  0001 C CNN
F 1 "GNDD" H 5454 2295 50  0000 C CNN
F 2 "" H 5450 2450 50  0001 C CNN
F 3 "" H 5450 2450 50  0001 C CNN
	1    5450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2425 5450 2425
Wire Wire Line
	5450 2425 5450 2450
Wire Wire Line
	4550 2600 4850 2600
Wire Wire Line
	4850 2600 4850 2325
NoConn ~ 4550 2800
Wire Wire Line
	3650 2800 3800 2800
Wire Wire Line
	3600 2900 3800 2900
Wire Wire Line
	3800 3000 3600 3000
Text Label 4550 2400 0    50   ~ 0
relay1
Text Label 4550 2500 0    50   ~ 0
relay2
$Comp
L power:GNDD #PWR0133
U 1 1 5C62AF37
P 2525 3700
F 0 "#PWR0133" H 2525 3450 50  0001 C CNN
F 1 "GNDD" H 2529 3545 50  0000 C CNN
F 2 "" H 2525 3700 50  0001 C CNN
F 3 "" H 2525 3700 50  0001 C CNN
	1    2525 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10075 4825 9850 4825
Wire Wire Line
	2875 5225 3000 5225
Wire Wire Line
	3000 5225 3000 5100
Connection ~ 2875 5225
Wire Wire Line
	3000 5100 3300 5100
Connection ~ 3000 5100
$Comp
L Device:CP C4
U 1 1 5C62E1D0
P 3300 4950
F 0 "C4" H 3418 4996 50  0000 L CNN
F 1 "100uf" H 3418 4905 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 3338 4800 50  0001 C CNN
F 3 "~" H 3300 4950 50  0001 C CNN
	1    3300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4800 3300 4800
Connection ~ 3300 4800
Wire Wire Line
	3300 4800 3400 4800
Wire Wire Line
	2525 3700 2525 3625
$Comp
L Mechanical:MountingHole H1
U 1 1 5C83C8D0
P 775 825
F 0 "H1" H 875 871 50  0000 L CNN
F 1 "MountingHole" H 875 780 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.5mm" H 775 825 50  0001 C CNN
F 3 "~" H 775 825 50  0001 C CNN
	1    775  825 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C83CB80
P 775 1025
F 0 "H2" H 875 1071 50  0000 L CNN
F 1 "MountingHole" H 875 980 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.5mm" H 775 1025 50  0001 C CNN
F 3 "~" H 775 1025 50  0001 C CNN
	1    775  1025
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C83CBFE
P 775 1225
F 0 "H3" H 875 1271 50  0000 L CNN
F 1 "MountingHole" H 875 1180 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.5mm" H 775 1225 50  0001 C CNN
F 3 "~" H 775 1225 50  0001 C CNN
	1    775  1225
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C83CC7E
P 775 1425
F 0 "H4" H 875 1471 50  0000 L CNN
F 1 "MountingHole" H 875 1380 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.5mm" H 775 1425 50  0001 C CNN
F 3 "~" H 775 1425 50  0001 C CNN
	1    775  1425
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 5C83E1CE
P 5675 1825
F 0 "J8" H 5754 1867 50  0000 L CNN
F 1 "external_Sw" H 5754 1776 50  0000 L CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-3pol" H 5675 1825 50  0001 C CNN
F 3 "~" H 5675 1825 50  0001 C CNN
	1    5675 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2325 5500 2325
Wire Wire Line
	5250 2225 5500 2225
$Comp
L power:GNDD #PWR0117
U 1 1 5C8586CB
P 5475 1975
F 0 "#PWR0117" H 5475 1725 50  0001 C CNN
F 1 "GNDD" H 5479 1820 50  0000 C CNN
F 2 "" H 5475 1975 50  0001 C CNN
F 3 "" H 5475 1975 50  0001 C CNN
	1    5475 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 1975 5475 1925
Wire Wire Line
	4550 2300 5100 2300
Wire Wire Line
	5100 2300 5100 1975
Wire Wire Line
	5100 1975 5400 1975
Wire Wire Line
	5400 1975 5400 1825
Wire Wire Line
	5400 1825 5475 1825
Wire Wire Line
	5475 1725 5050 1725
Wire Wire Line
	5050 1725 5050 2200
Wire Wire Line
	5050 2200 4550 2200
Wire Wire Line
	2525 3625 2950 3625
Wire Wire Line
	9250 5925 9350 5925
Wire Wire Line
	9150 5925 9250 5925
Connection ~ 9250 5925
Connection ~ 9150 5925
$Comp
L LORA_Relay_AC-rescue:Sx1278_LORA_Module-MainWorking U4
U 1 1 5C5CC128
P 9250 4275
F 0 "U4" H 9300 3725 50  0000 C CNN
F 1 "Sx1278_LORA_Module" H 9525 3925 50  0000 C CNN
F 2 "MainWorking:LORA_SX1278_Module" H 9250 4275 50  0001 C CNN
F 3 "" H 9250 4275 50  0001 C CNN
	1    9250 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4050 9100 4525
Wire Wire Line
	2600 2800 2600 3175
$Comp
L Switch:SW_DIP_x04 SW2
U 1 1 5C862A80
P 3250 3525
F 0 "SW2" H 3250 3992 50  0000 C CNN
F 1 "SW_DIP_x04" H 3250 3901 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_DIP_x4_W7.62mm_Slide" H 3250 3525 50  0001 C CNN
F 3 "" H 3250 3525 50  0001 C CNN
	1    3250 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3525 2950 3625
Connection ~ 2950 3625
Wire Wire Line
	2950 3525 2950 3425
Connection ~ 2950 3525
Connection ~ 2950 3425
Wire Wire Line
	2950 3425 2950 3325
Wire Wire Line
	3675 3325 3550 3325
Wire Wire Line
	3675 2300 3675 3325
Text Notes 3000 6150 0    50   ~ 0
tie gndd and earth-gnd together near AC gnd port
$Comp
L power:GNDD #PWR0118
U 1 1 5C9A5687
P 7650 3300
F 0 "#PWR0118" H 7650 3050 50  0001 C CNN
F 1 "GNDD" H 7654 3145 50  0000 C CNN
F 2 "" H 7650 3300 50  0001 C CNN
F 3 "" H 7650 3300 50  0001 C CNN
	1    7650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3300 7475 3300
$Comp
L power:GNDD #PWR0125
U 1 1 5C9ADCCD
P 9675 3300
F 0 "#PWR0125" H 9675 3050 50  0001 C CNN
F 1 "GNDD" H 9679 3145 50  0000 C CNN
F 2 "" H 9675 3300 50  0001 C CNN
F 3 "" H 9675 3300 50  0001 C CNN
	1    9675 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9675 3300 9500 3300
Connection ~ 9500 3300
Wire Wire Line
	9500 3300 9500 3350
$Comp
L power:+5V #PWR0126
U 1 1 5D14F2AC
P 5440 1080
F 0 "#PWR0126" H 5440 930 50  0001 C CNN
F 1 "+5V" H 5455 1253 50  0000 C CNN
F 2 "" H 5440 1080 50  0001 C CNN
F 3 "" H 5440 1080 50  0001 C CNN
	1    5440 1080
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0127
U 1 1 5D14F624
P 5340 1530
F 0 "#PWR0127" H 5340 1280 50  0001 C CNN
F 1 "GNDD" H 5344 1375 50  0000 C CNN
F 2 "" H 5340 1530 50  0001 C CNN
F 3 "" H 5340 1530 50  0001 C CNN
	1    5340 1530
	1    0    0    -1  
$EndComp
Wire Wire Line
	5340 1530 5340 1470
Wire Wire Line
	5440 1080 5440 1170
Text Notes 6520 3700 0    50   ~ 0
double check GNDD and Earth-GND ties at relays!!!\n
Wire Wire Line
	5340 1470 5450 1470
Wire Wire Line
	5440 1170 5450 1170
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5D14DB6D
P 5650 1270
F 0 "J4" H 5730 1262 50  0000 L CNN
F 1 "gpio" H 5730 1171 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5650 1270 50  0001 C CNN
F 3 "~" H 5650 1270 50  0001 C CNN
	1    5650 1270
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1370 4980 1370
Wire Wire Line
	4980 1370 4980 2100
Wire Wire Line
	4550 2100 4980 2100
Wire Wire Line
	4940 2000 4940 1270
Wire Wire Line
	4940 1270 5450 1270
Wire Wire Line
	4550 2000 4940 2000
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5D1CB5E8
P 3480 1700
F 0 "J6" H 3398 1375 50  0000 C CNN
F 1 "Serial" H 3398 1466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3480 1700 50  0001 C CNN
F 3 "~" H 3480 1700 50  0001 C CNN
	1    3480 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3680 1600 3800 1600
Wire Wire Line
	3680 1700 3800 1700
$EndSCHEMATC
