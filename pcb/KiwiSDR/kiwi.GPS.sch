EESchema Schematic File Version 2  date Sunday, February 21, 2016 12:56:59 PM
LIBS:kiwi
LIBS:kiwi-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 7
Title "KiwiSDR Prototype, March 2016"
Date "20 feb 2016"
Rev "0.5"
Comp "John Seamons, ZL/KF6VO"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SE4150L U101
U 1 1 52B4CA12
P 7400 3850
F 0 "U101" H 7400 3750 50  0000 C CNN
F 1 "SE4150L" H 7400 3950 50  0000 C CNN
F 2 "kiwi-QFN24" H 7400 3850 50  0001 C CNN
F 3 "~" H 7400 3850 50  0001 C CNN
	1    7400 3850
	1    0    0    -1  
$EndComp
Text Label 5850 3800 2    60   ~ 0
GPS2
Text Label 4250 3900 0    60   ~ 0
GPS
$Comp
L GND #PWR046
U 1 1 52B64B99
P 4000 4300
F 0 "#PWR046" H 4000 4300 30  0001 C CNN
F 1 "GND" H 4000 4230 30  0001 C CNN
F 2 "" H 4000 4300 60  0000 C CNN
F 3 "" H 4000 4300 60  0000 C CNN
	1    4000 4300
	1    0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 52B6718C
P 5000 3900
F 0 "C101" H 5000 4000 40  0000 L CNN
F 1 "22p" H 5006 3815 40  0000 L CNN
F 2 "kiwi-SM0402" H 5038 3750 30  0001 C CNN
F 3 "~" H 5000 3900 60  0000 C CNN
	1    5000 3900
	0    -1   -1   0   
$EndComp
$Comp
L C C106
U 1 1 52B68985
P 6250 3300
F 0 "C106" H 6250 3400 40  0000 L CNN
F 1 "10n" H 6256 3215 40  0000 L CNN
F 2 "kiwi-SM0402" H 6288 3150 30  0001 C CNN
F 3 "~" H 6250 3300 60  0000 C CNN
	1    6250 3300
	1    0    0    -1  
$EndComp
$Comp
L C C194
U 1 1 52B6898B
P 5950 3300
F 0 "C194" H 5950 3400 40  0000 L CNN
F 1 "100p" H 5956 3215 40  0000 L CNN
F 2 "kiwi-SM0402" H 5988 3150 30  0001 C CNN
F 3 "~" H 5950 3300 60  0000 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
$Comp
L COIL L101
U 1 1 52B6711C
P 5000 3600
F 0 "L101" H 5000 3700 50  0000 C CNN
F 1 "39nH" H 5000 3550 50  0000 C CNN
F 2 "kiwi-SM0402" V 5150 3700 50  0001 C CNN
F 3 "~" V 5300 3700 60  0001 C CNN
	1    5000 3600
	1    0    0    -1  
$EndComp
Text Label 5850 3700 2    60   ~ 0
GBIAS
$Comp
L GND #PWR047
U 1 1 52B683AC
P 6100 4550
F 0 "#PWR047" H 6100 4550 30  0001 C CNN
F 1 "GND" H 6100 4480 30  0001 C CNN
F 2 "" H 6100 4550 60  0000 C CNN
F 3 "" H 6100 4550 60  0000 C CNN
	1    6100 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 52B6876D
P 6100 3050
F 0 "#PWR048" H 6100 3050 30  0001 C CNN
F 1 "GND" H 6100 2980 30  0001 C CNN
F 2 "" H 6100 3050 60  0000 C CNN
F 3 "" H 6100 3050 60  0000 C CNN
	1    6100 3050
	1    0    0    -1  
$EndComp
$Comp
L C C104
U 1 1 52B68AD6
P 5950 4200
F 0 "C104" H 5950 4300 40  0000 L CNN
F 1 "22p" H 5956 4115 40  0000 L CNN
F 2 "kiwi-SM0402" H 5988 4050 30  0001 C CNN
F 3 "~" H 5950 4200 60  0000 C CNN
	1    5950 4200
	1    0    0    -1  
$EndComp
NoConn ~ 7250 4600
NoConn ~ 8450 4100
NoConn ~ 7650 4600
$Comp
L GND #PWR049
U 1 1 52B6966E
P 8600 3750
F 0 "#PWR049" H 8600 3750 30  0001 C CNN
F 1 "GND" H 8600 3680 30  0001 C CNN
F 2 "" H 8600 3750 60  0000 C CNN
F 3 "" H 8600 3750 60  0000 C CNN
	1    8600 3750
	0    -1   -1   0   
$EndComp
$Comp
L C C105
U 1 1 52B699D7
P 9350 3900
F 0 "C105" H 9350 4000 40  0000 L CNN
F 1 "10n" H 9356 3815 40  0000 L CNN
F 2 "kiwi-SM0402" H 9388 3750 30  0001 C CNN
F 3 "~" H 9350 3900 60  0000 C CNN
	1    9350 3900
	0    -1   -1   0   
$EndComp
$Comp
L C C191
U 1 1 52B6A12B
P 8650 4300
F 0 "C191" H 8650 4400 40  0000 L CNN
F 1 "100n" H 8656 4215 40  0000 L CNN
F 2 "kiwi-SM0402" H 8688 4150 30  0001 C CNN
F 3 "~" H 8650 4300 60  0000 C CNN
	1    8650 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 52B6A1B9
P 8650 4550
F 0 "#PWR050" H 8650 4550 30  0001 C CNN
F 1 "GND" H 8650 4480 30  0001 C CNN
F 2 "" H 8650 4550 60  0000 C CNN
F 3 "" H 8650 4550 60  0000 C CNN
	1    8650 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 52B6B004
P 7250 3050
F 0 "#PWR051" H 7250 3050 30  0001 C CNN
F 1 "GND" H 7250 2980 30  0001 C CNN
F 2 "" H 7250 3050 60  0000 C CNN
F 3 "" H 7250 3050 60  0000 C CNN
	1    7250 3050
	-1   0    0    1   
$EndComp
$Comp
L C C193
U 1 1 52B6B04D
P 7150 2400
F 0 "C193" H 7150 2500 40  0000 L CNN
F 1 "10n" H 7156 2315 40  0000 L CNN
F 2 "kiwi-SM0402" H 7188 2250 30  0001 C CNN
F 3 "~" H 7150 2400 60  0000 C CNN
	1    7150 2400
	1    0    0    -1  
$EndComp
$Comp
L C C192
U 1 1 52B6B0AF
P 7350 2400
F 0 "C192" H 7350 2500 40  0000 L CNN
F 1 "100n" H 7356 2315 40  0000 L CNN
F 2 "kiwi-SM0402" H 7388 2250 30  0001 C CNN
F 3 "~" H 7350 2400 60  0000 C CNN
	1    7350 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 52B6B5A2
P 7150 2150
F 0 "#PWR052" H 7150 2150 30  0001 C CNN
F 1 "GND" H 7150 2080 30  0001 C CNN
F 2 "" H 7150 2150 60  0000 C CNN
F 3 "" H 7150 2150 60  0000 C CNN
	1    7150 2150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR053
U 1 1 52B6B5A8
P 7350 2150
F 0 "#PWR053" H 7350 2150 30  0001 C CNN
F 1 "GND" H 7350 2080 30  0001 C CNN
F 2 "" H 7350 2150 60  0000 C CNN
F 3 "" H 7350 2150 60  0000 C CNN
	1    7350 2150
	-1   0    0    1   
$EndComp
$Comp
L C C190
U 1 1 52B6BD7E
P 7650 5050
F 0 "C190" H 7650 5150 40  0000 L CNN
F 1 "100n" H 7656 4965 40  0000 L CNN
F 2 "kiwi-SM0402" H 7688 4900 30  0001 C CNN
F 3 "~" H 7650 5050 60  0000 C CNN
	1    7650 5050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR054
U 1 1 52B6BD84
P 7900 5050
F 0 "#PWR054" H 7900 5050 30  0001 C CNN
F 1 "GND" H 7900 4980 30  0001 C CNN
F 2 "" H 7900 5050 60  0000 C CNN
F 3 "" H 7900 5050 60  0000 C CNN
	1    7900 5050
	0    -1   -1   0   
$EndComp
Text Label 6650 5750 2    60   ~ 0
SAW1
Text Label 8150 5750 0    60   ~ 0
SAW2
$Comp
L SAW FL101
U 1 1 52B6850A
P 7400 5650
F 0 "FL101" H 7400 5850 50  0000 C CNN
F 1 "SAW L1" H 7400 5250 50  0000 C CNN
F 2 "kiwi-SAW" H 7400 5650 50  0001 C CNN
F 3 "~" H 7400 5650 50  0001 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L TCXO X101
U 1 1 52B789F8
P 10750 4050
F 0 "X101" H 10750 4350 70  0000 C CNN
F 1 "16.368 MHz" H 10750 4050 70  0000 C CNN
F 2 "kiwi-TCXO" H 10750 4050 60  0001 C CNN
F 3 "" H 10750 4050 60  0000 C CNN
	1    10750 4050
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 52B78A95
P 10050 4250
F 0 "#PWR055" H 10050 4250 30  0001 C CNN
F 1 "GND" H 10050 4180 30  0001 C CNN
F 2 "" H 10050 4250 60  0000 C CNN
F 3 "" H 10050 4250 60  0000 C CNN
	1    10050 4250
	1    0    0    -1  
$EndComp
Text Label 9700 3900 0    60   ~ 0
TCXO2
Text Label 6250 3900 2    60   ~ 0
LNA
Text Label 8700 3900 0    60   ~ 0
TCXO1
Text Label 6250 3600 2    60   ~ 0
VAGC
$Comp
L C C195
U 1 1 52BB894B
P 12000 3900
F 0 "C195" H 12000 4000 40  0000 L CNN
F 1 "100n" H 12006 3815 40  0000 L CNN
F 2 "kiwi-SM0402" H 12038 3750 30  0001 C CNN
F 3 "~" H 12000 3900 60  0000 C CNN
	1    12000 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR056
U 1 1 52BB8951
P 12200 3900
F 0 "#PWR056" H 12200 3900 30  0001 C CNN
F 1 "GND" H 12200 3830 30  0001 C CNN
F 2 "" H 12200 3900 60  0000 C CNN
F 3 "" H 12200 3900 60  0000 C CNN
	1    12200 3900
	0    -1   -1   0   
$EndComp
Text Notes 4750 3300 0    60   ~ 0
self-resonance\nabove L1
$Comp
L COAX_CONN_3P J3
U 1 1 52C0A14E
P 4000 3900
F 0 "J3" H 4010 4020 60  0000 C CNN
F 1 "SMA" V 4110 3840 40  0000 C CNN
F 2 "kiwi-SMA_OPL_EM" H 4000 3900 60  0001 C CNN
F 3 "~" H 4000 3900 60  0000 C CNN
	1    4000 3900
	-1   0    0    -1  
$EndComp
$Comp
L 3.3G #PWR057
U 1 1 52C1027C
P 10500 7100
F 0 "#PWR057" H 10500 7060 30  0001 C CNN
F 1 "3.3G" H 10500 7210 30  0000 C CNN
F 2 "~" H 10500 7100 60  0000 C CNN
F 3 "~" H 10500 7100 60  0000 C CNN
	1    10500 7100
	1    0    0    -1  
$EndComp
$Comp
L C C196
U 1 1 52C1043B
P 7900 7500
F 0 "C196" H 7900 7600 40  0000 L CNN
F 1 "1u" H 7906 7415 40  0000 L CNN
F 2 "kiwi-SM0402" H 7938 7350 30  0001 C CNN
F 3 "~" H 7900 7500 60  0000 C CNN
	1    7900 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 52C104C8
P 7900 7750
F 0 "#PWR058" H 7900 7750 30  0001 C CNN
F 1 "GND" H 7900 7680 30  0001 C CNN
F 2 "" H 7900 7750 60  0000 C CNN
F 3 "" H 7900 7750 60  0000 C CNN
	1    7900 7750
	1    0    0    -1  
$EndComp
$Comp
L C C197
U 1 1 52C104DA
P 10500 7500
F 0 "C197" H 10500 7600 40  0000 L CNN
F 1 "1u" H 10506 7415 40  0000 L CNN
F 2 "kiwi-SM0402" H 10538 7350 30  0001 C CNN
F 3 "~" H 10500 7500 60  0000 C CNN
	1    10500 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 52C104E1
P 10500 7750
F 0 "#PWR059" H 10500 7750 30  0001 C CNN
F 1 "GND" H 10500 7680 30  0001 C CNN
F 2 "" H 10500 7750 60  0000 C CNN
F 3 "" H 10500 7750 60  0000 C CNN
	1    10500 7750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 52C10A70
P 9100 7950
F 0 "#PWR060" H 9100 7950 30  0001 C CNN
F 1 "GND" H 9100 7880 30  0001 C CNN
F 2 "" H 9100 7950 60  0000 C CNN
F 3 "" H 9100 7950 60  0000 C CNN
	1    9100 7950
	1    0    0    -1  
$EndComp
$Comp
L 3.3G #PWR061
U 1 1 52C11581
P 11450 3100
F 0 "#PWR061" H 11450 3060 30  0001 C CNN
F 1 "3.3G" H 11450 3210 30  0000 C CNN
F 2 "~" H 11450 3100 60  0000 C CNN
F 3 "~" H 11450 3100 60  0000 C CNN
	1    11450 3100
	1    0    0    -1  
$EndComp
$Comp
L 3.3G #PWR062
U 1 1 52C11591
P 9050 4050
F 0 "#PWR062" H 9050 4010 30  0001 C CNN
F 1 "3.3G" H 9050 4160 30  0000 C CNN
F 2 "~" H 9050 4050 60  0000 C CNN
F 3 "~" H 9050 4050 60  0000 C CNN
	1    9050 4050
	-1   0    0    1   
$EndComp
$Comp
L 3.3G #PWR063
U 1 1 52C11A97
P 8550 3550
F 0 "#PWR063" H 8550 3510 30  0001 C CNN
F 1 "3.3G" H 8550 3660 30  0000 C CNN
F 2 "~" H 8550 3550 60  0000 C CNN
F 3 "~" H 8550 3550 60  0000 C CNN
	1    8550 3550
	1    0    0    -1  
$EndComp
$Comp
L 3.3G #PWR064
U 1 1 52C11AA7
P 7100 2700
F 0 "#PWR064" H 7100 2660 30  0001 C CNN
F 1 "3.3G" H 7100 2810 30  0000 C CNN
F 2 "~" H 7100 2700 60  0000 C CNN
F 3 "~" H 7100 2700 60  0000 C CNN
	1    7100 2700
	0    -1   -1   0   
$EndComp
$Comp
L 3.3G #PWR065
U 1 1 52C11AB7
P 6300 4000
F 0 "#PWR065" H 6300 3960 30  0001 C CNN
F 1 "3.3G" H 6300 4110 30  0000 C CNN
F 2 "~" H 6300 4000 60  0000 C CNN
F 3 "~" H 6300 4000 60  0000 C CNN
	1    6300 4000
	0    -1   -1   0   
$EndComp
$Comp
L 3.3G #PWR066
U 1 1 52C11FBD
P 7300 5050
F 0 "#PWR066" H 7300 5010 30  0001 C CNN
F 1 "3.3G" H 7300 5160 30  0000 C CNN
F 2 "~" H 7300 5050 60  0000 C CNN
F 3 "~" H 7300 5050 60  0000 C CNN
	1    7300 5050
	0    -1   -1   0   
$EndComp
$Comp
L 5V #PWR067
U 1 1 52C36C1D
P 7900 6550
F 0 "#PWR067" H 7900 6640 20  0001 C CNN
F 1 "5V" H 7900 6640 30  0000 C CNN
F 2 "~" H 7900 6550 60  0000 C CNN
F 3 "~" H 7900 6550 60  0000 C CNN
	1    7900 6550
	1    0    0    -1  
$EndComp
$Comp
L 5V #PWR068
U 1 1 52C43799
P 9500 7950
F 0 "#PWR068" H 9500 8040 20  0001 C CNN
F 1 "5V" H 9500 8040 30  0000 C CNN
F 2 "~" H 9500 7950 60  0000 C CNN
F 3 "~" H 9500 7950 60  0000 C CNN
	1    9500 7950
	-1   0    0    1   
$EndComp
$Comp
L C C107
U 1 1 52C393BC
P 9350 3300
F 0 "C107" H 9350 3400 40  0000 L CNN
F 1 "DNL 10n" H 9356 3215 40  0000 L CNN
F 2 "kiwi-SM0402" H 9388 3150 30  0001 C CNN
F 3 "~" H 9350 3300 60  0000 C CNN
	1    9350 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR069
U 1 1 52C39BFE
P 10100 3600
F 0 "#PWR069" H 10100 3600 30  0001 C CNN
F 1 "GND" H 10100 3530 30  0001 C CNN
F 2 "" H 10100 3600 60  0000 C CNN
F 3 "" H 10100 3600 60  0000 C CNN
	1    10100 3600
	1    0    0    -1  
$EndComp
$Comp
L COAX_CONN_3P J4
U 1 1 52C3A6E5
P 10100 3300
F 0 "J4" H 10110 3420 60  0000 C CNN
F 1 "DNL U.FL" V 10210 3240 40  0000 C CNN
F 2 "kiwi-U.FL" H 10100 3300 60  0001 C CNN
F 3 "~" H 10100 3300 60  0000 C CNN
	1    10100 3300
	1    0    0    -1  
$EndComp
Text Notes 10350 4450 0    60   ~ 0
TXC 7Q-BG series\ntempco 0.5 ppm\n-130 dBc/Hz @ 1KHz
Text Label 9650 3300 0    60   ~ 0
EOSC
Text Label 11550 3900 0    60   ~ 0
TXOP
$Comp
L GND #PWR070
U 1 1 52DB78C7
P 7950 4650
F 0 "#PWR070" H 7950 4650 30  0001 C CNN
F 1 "GND" H 7950 4580 30  0001 C CNN
F 2 "" H 7950 4650 60  0000 C CNN
F 3 "" H 7950 4650 60  0000 C CNN
	1    7950 4650
	1    0    0    -1  
$EndComp
Text GLabel 8750 2700 2    60   Input ~ 0
GCLK
Text GLabel 9350 2850 2    60   Input ~ 0
GSGN
Text GLabel 9950 3000 2    60   Input ~ 0
GMAG
$Comp
L FERRITE_CHIP L102
U 1 1 54E99009
P 11450 3300
F 0 "L102" H 11450 3400 30  0000 C CNN
F 1 "FB 600Z" H 11450 3200 30  0000 C CNN
F 2 "kiwi-SM0402" H 11450 3300 60  0001 C CNN
F 3 "~" H 11450 3300 60  0000 C CNN
	1    11450 3300
	0    -1   -1   0   
$EndComp
$Comp
L PWR_DRV #PWR071
U 1 1 54E99018
P 11450 3750
F 0 "#PWR071" H 11400 3850 40  0001 C CNN
F 1 "PWR_DRV" H 11400 3650 40  0001 C CNN
F 2 "~" H 11450 3750 60  0000 C CNN
F 3 "~" H 11450 3750 60  0000 C CNN
	1    11450 3750
	0    1    1    0   
$EndComp
$Comp
L R R103
U 1 1 55152680
P 8300 3000
F 0 "R103" V 8380 3000 40  0000 C CNN
F 1 "100R" V 8307 3001 40  0000 C CNN
F 2 "kiwi-SM0402" V 8230 3000 30  0001 C CNN
F 3 "~" H 8300 3000 30  0000 C CNN
	1    8300 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R102
U 1 1 551526BE
P 8300 2850
F 0 "R102" V 8380 2850 40  0000 C CNN
F 1 "100R" V 8307 2851 40  0000 C CNN
F 2 "kiwi-SM0402" V 8230 2850 30  0001 C CNN
F 3 "~" H 8300 2850 30  0000 C CNN
	1    8300 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R101
U 1 1 551526C4
P 8300 2700
F 0 "R101" V 8380 2700 40  0000 C CNN
F 1 "100R" V 8307 2701 40  0000 C CNN
F 2 "kiwi-SM0402" V 8230 2700 30  0001 C CNN
F 3 "~" H 8300 2700 30  0000 C CNN
	1    8300 2700
	0    -1   -1   0   
$EndComp
Text Label 7800 3000 0    60   ~ 0
LMAG
Text Label 7800 2850 0    60   ~ 0
LSGN
Text Label 7800 2700 0    60   ~ 0
LCLK
$Comp
L RF_SHIELD_COVER ZR102
U 1 1 551BB4C7
P 3950 6800
F 0 "ZR102" H 3950 6950 60  0000 C CNN
F 1 "RF_SHIELD_COVER 29x19" H 3950 6650 60  0000 C CNN
F 2 "kiwi-RF_SHIELD_COVER" H 4000 6800 60  0001 C CNN
F 3 "~" H 4000 6800 60  0000 C CNN
	1    3950 6800
	1    0    0    -1  
$EndComp
$Comp
L FERRITE_CHIP L103
U 1 1 551BC541
P 3400 9250
F 0 "L103" H 3400 9350 30  0000 C CNN
F 1 "FB 600Z" H 3400 9150 30  0000 C CNN
F 2 "kiwi-SM0402" H 3400 9250 60  0001 C CNN
F 3 "~" H 3400 9250 60  0000 C CNN
	1    3400 9250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR072
U 1 1 551BC5E2
P 3400 9450
F 0 "#PWR072" H 3400 9450 30  0001 C CNN
F 1 "GND" H 3400 9380 30  0001 C CNN
F 2 "" H 3400 9450 60  0000 C CNN
F 3 "" H 3400 9450 60  0000 C CNN
	1    3400 9450
	1    0    0    -1  
$EndComp
Text Label 3400 9100 2    60   ~ 0
RING
Wire Wire Line
	6350 3800 5400 3800
Wire Wire Line
	7450 2700 7450 3100
Wire Wire Line
	7550 2850 7550 3100
Wire Wire Line
	7650 3100 7650 3000
Wire Wire Line
	4150 3900 4800 3900
Wire Wire Line
	4000 4100 4000 4300
Wire Wire Line
	4600 3600 4600 3900
Connection ~ 4600 3900
Wire Wire Line
	5400 3700 6350 3700
Wire Wire Line
	5950 3500 5950 3700
Connection ~ 5950 3700
Wire Wire Line
	6250 3500 6250 3600
Wire Wire Line
	6250 3600 6350 3600
Wire Wire Line
	6350 4100 6250 4100
Wire Wire Line
	6350 4000 6300 4000
Wire Wire Line
	5950 3100 5950 3000
Wire Wire Line
	5950 3000 6250 3000
Wire Wire Line
	6250 3000 6250 3100
Wire Wire Line
	6100 3000 6100 3050
Connection ~ 6100 3000
Wire Wire Line
	6350 3900 5950 3900
Wire Wire Line
	5950 3900 5950 4000
Wire Wire Line
	6250 4100 6250 4500
Wire Wire Line
	6250 4500 5950 4500
Wire Wire Line
	5950 4500 5950 4400
Wire Wire Line
	6100 4500 6100 4550
Connection ~ 6100 4500
Wire Wire Line
	8450 3600 8550 3600
Wire Wire Line
	8450 3700 8550 3700
Wire Wire Line
	8550 3700 8550 3800
Wire Wire Line
	8550 3800 8450 3800
Wire Wire Line
	8550 3750 8600 3750
Connection ~ 8550 3750
Wire Wire Line
	8450 3900 9150 3900
Wire Wire Line
	8450 4000 9050 4000
Wire Wire Line
	8650 4000 8650 4100
Connection ~ 8650 4000
Wire Wire Line
	8650 4500 8650 4550
Wire Wire Line
	9550 3900 10050 3900
Wire Wire Line
	7250 3100 7250 3050
Wire Wire Line
	7150 2600 7150 3100
Wire Wire Line
	7350 2600 7350 3100
Wire Wire Line
	7100 2700 7350 2700
Connection ~ 7350 2700
Connection ~ 7150 2700
Wire Wire Line
	7150 2200 7150 2150
Wire Wire Line
	7350 2200 7350 2150
Wire Wire Line
	7350 4600 7350 5050
Wire Wire Line
	7300 5050 7450 5050
Connection ~ 7350 5050
Wire Wire Line
	7850 5050 7900 5050
Wire Wire Line
	7450 4700 7450 4600
Wire Wire Line
	7450 4700 7350 4700
Connection ~ 7350 4700
Wire Wire Line
	7150 4800 6650 4800
Wire Wire Line
	6650 4800 6650 5750
Wire Wire Line
	7550 4600 7550 4800
Wire Wire Line
	8150 4800 8150 5750
Wire Wire Line
	6650 5750 6700 5750
Wire Wire Line
	8150 5750 8100 5750
Connection ~ 4000 4200
Wire Wire Line
	4100 4100 4100 4200
Wire Wire Line
	10050 4200 10050 4250
Wire Wire Line
	11450 3900 11450 3750
Wire Wire Line
	12150 3900 12200 3900
Wire Wire Line
	11450 3900 11800 3900
Connection ~ 11450 3900
Wire Wire Line
	4100 4200 4000 4200
Wire Wire Line
	7900 7100 7900 7300
Wire Wire Line
	7900 7200 8000 7200
Wire Wire Line
	10400 7200 10600 7200
Wire Wire Line
	10500 7100 10500 7300
Connection ~ 10500 7200
Wire Wire Line
	7900 7700 7900 7750
Wire Wire Line
	10500 7700 10500 7750
Connection ~ 7900 7200
Wire Wire Line
	9100 7900 9100 7950
Wire Wire Line
	9500 7900 9500 7950
Wire Wire Line
	9050 4000 9050 4050
Wire Wire Line
	9150 3300 9050 3300
Wire Wire Line
	9050 3300 9050 3900
Connection ~ 9050 3900
Wire Wire Line
	9550 3300 9950 3300
Wire Wire Line
	10100 3500 10100 3600
Wire Wire Line
	10000 3500 10000 3550
Wire Wire Line
	10000 3550 10100 3550
Connection ~ 10100 3550
Wire Wire Line
	11450 3150 11450 3100
Wire Wire Line
	8550 3600 8550 3550
Wire Wire Line
	4700 3600 4600 3600
Wire Wire Line
	5300 3600 5400 3600
Wire Wire Line
	5400 3600 5400 3700
Wire Wire Line
	5200 3900 5400 3900
Wire Wire Line
	5400 3900 5400 3800
Wire Wire Line
	7150 4600 7150 4800
Wire Wire Line
	7550 4800 8150 4800
Wire Wire Line
	7950 4600 7950 4650
Wire Wire Line
	11450 3450 11450 3700
Wire Wire Line
	7450 2700 8050 2700
Wire Wire Line
	7550 2850 8050 2850
Wire Wire Line
	7650 3000 8050 3000
Wire Wire Line
	8550 2700 8750 2700
Wire Wire Line
	8550 2850 9350 2850
Wire Wire Line
	8550 3000 9950 3000
Wire Wire Line
	3400 9400 3400 9450
Wire Wire Line
	3400 8900 3400 9100
Text Label 11450 3600 0    60   ~ 0
TXOP
NoConn ~ 3500 8900
NoConn ~ 3600 8900
NoConn ~ 3700 8900
NoConn ~ 3800 8900
NoConn ~ 3900 8900
NoConn ~ 4000 8900
NoConn ~ 4100 8900
NoConn ~ 4200 8900
NoConn ~ 4300 8900
NoConn ~ 4400 8900
NoConn ~ 4500 8900
Wire Wire Line
	7050 6150 7050 6200
Wire Wire Line
	7750 6150 7750 6200
$Comp
L GND #PWR073
U 1 1 552AFDF0
P 7050 6200
F 0 "#PWR073" H 7050 6200 30  0001 C CNN
F 1 "GND" H 7050 6130 30  0001 C CNN
F 2 "" H 7050 6200 60  0000 C CNN
F 3 "" H 7050 6200 60  0000 C CNN
	1    7050 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 552AFDF6
P 7750 6200
F 0 "#PWR074" H 7750 6200 30  0001 C CNN
F 1 "GND" H 7750 6130 30  0001 C CNN
F 2 "" H 7750 6200 60  0000 C CNN
F 3 "" H 7750 6200 60  0000 C CNN
	1    7750 6200
	1    0    0    -1  
$EndComp
$Comp
L RF_SHIELD_12P ZR101
U 1 1 552DC79C
P 3950 7850
F 0 "ZR101" H 3950 7900 60  0000 C CNN
F 1 "RF_SHIELD 29x19" H 3950 7800 60  0000 C CNN
F 2 "kiwi-RF_SHIELD_29x19_16P" H 4000 7850 60  0001 C CNN
F 3 "~" H 4000 7850 60  0000 C CNN
	1    3950 7850
	1    0    0    -1  
$EndComp
$Comp
L VREG_5PIN_4 U104
U 1 1 552EC3E7
P 9200 7200
F 0 "U104" H 9200 7700 60  0000 C CNN
F 1 "LP5907 3.3V 250mA" H 9200 7200 60  0000 C CNN
F 2 "kiwi-SOT23_5" H 9150 6850 60  0001 C CNN
F 3 "~" H 9150 6850 60  0000 C CNN
	1    9200 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR075
U 1 1 5546A7A2
P 8700 7950
F 0 "#PWR075" H 8700 7950 30  0001 C CNN
F 1 "GND" H 8700 7880 30  0001 C CNN
F 2 "" H 8700 7950 60  0000 C CNN
F 3 "" H 8700 7950 60  0000 C CNN
	1    8700 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 7900 8700 7950
$Comp
L FERRITE_CHIP L104
U 1 1 5546F958
P 7900 6750
F 0 "L104" H 7900 6850 30  0000 C CNN
F 1 "FB 600Z" H 7900 6650 30  0000 C CNN
F 2 "kiwi-SM0402" H 7900 6750 60  0001 C CNN
F 3 "~" H 7900 6750 60  0000 C CNN
	1    7900 6750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 6600 7900 6550
$Comp
L PWR_DRV #PWR076
U 1 1 55470B9A
P 7900 7100
F 0 "#PWR076" H 7850 7200 40  0001 C CNN
F 1 "PWR_DRV" H 7850 7000 40  0001 C CNN
F 2 "~" H 7900 7100 60  0000 C CNN
F 3 "~" H 7900 7100 60  0000 C CNN
	1    7900 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 6900 7900 7050
Text Label 7900 6950 2    60   ~ 0
VIN
Text Label 7900 7200 2    60   ~ 0
VIN
$Comp
L TEST_POINT TP102
U 1 1 556BFC61
P 8650 2500
F 0 "TP102" H 8650 2650 60  0000 C CNN
F 1 "TEST_POINT" H 8650 2300 60  0001 C CNN
F 2 "kiwi-TP_VIA_1250" H 8650 2500 60  0001 C CNN
F 3 "~" H 8650 2500 60  0000 C CNN
	1    8650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2600 8650 2700
Connection ~ 8650 2700
$Comp
L TEST_POINT TP103
U 1 1 556BFCE0
P 9250 2650
F 0 "TP103" H 9250 2800 60  0000 C CNN
F 1 "TEST_POINT" H 9250 2450 60  0001 C CNN
F 2 "kiwi-TP_VIA_1250" H 9250 2650 60  0001 C CNN
F 3 "~" H 9250 2650 60  0000 C CNN
	1    9250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2750 9250 2850
Connection ~ 9250 2850
$Comp
L TEST_POINT TP104
U 1 1 556BFD7E
P 9850 2800
F 0 "TP104" H 9850 2950 60  0000 C CNN
F 1 "TEST_POINT" H 9850 2600 60  0001 C CNN
F 2 "kiwi-TP_VIA_1250" H 9850 2800 60  0001 C CNN
F 3 "~" H 9850 2800 60  0000 C CNN
	1    9850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2900 9850 3000
Connection ~ 9850 3000
$Comp
L TEST_POINT TP101
U 1 1 556BFE21
P 9650 4100
F 0 "TP101" H 9650 4250 60  0000 C CNN
F 1 "TEST_POINT" H 9650 3900 60  0001 C CNN
F 2 "kiwi-TP_600" H 9650 4100 60  0001 C CNN
F 3 "~" H 9650 4100 60  0000 C CNN
	1    9650 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 4000 9650 3900
Connection ~ 9650 3900
$Comp
L TEST_POINT TP105
U 1 1 556C104D
P 10700 7200
F 0 "TP105" H 10700 7350 60  0000 C CNN
F 1 "TEST_POINT" H 10700 7000 60  0001 C CNN
F 2 "kiwi-TP_600" H 10700 7200 60  0001 C CNN
F 3 "~" H 10700 7200 60  0000 C CNN
	1    10700 7200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR077
U 1 1 556CF05C
P 11450 4250
F 0 "#PWR077" H 11450 4250 30  0001 C CNN
F 1 "GND" H 11450 4180 30  0001 C CNN
F 2 "" H 11450 4250 60  0000 C CNN
F 3 "" H 11450 4250 60  0000 C CNN
	1    11450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 4200 11450 4250
$EndSCHEMATC
