//Deviec:FT60E21X
//-----------------------Variable---------------------------------
		_PA3		EQU		05H
		_PA4		EQU		05H
		_PA5		EQU		05H
		_PAIF		EQU		0BH
		_PAIE		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_T0ON		EQU		1FH
		_TRISA2		EQU		85H
		_TRISA5		EQU		85H
		_IOCA2		EQU		96H
		_IOCA5		EQU		96H
		_g_state		EQU		7BH
		_g_timer_5s		EQU		49H
		_g_timer_2s		EQU		47H
//		main@i		EQU		46H
//		coding_1527@j		EQU		40H
//		coding_1527@i		EQU		45H
//		coding_1527@k		EQU		44H
//		coding_1527@Addr_1527		EQU		73H
//		coding_1527@Data		EQU		77H
//		delay_124us@i		EQU		72H
//		delay_12us@i		EQU		72H
//		LED_Flickering3@i		EQU		79H
//		LED_Flickering1@i		EQU		79H
//		DelayMs@Time		EQU		75H
//		DelayMs@b		EQU		78H
//		DelayMs@a		EQU		76H
//		DelayMs@Time		EQU		75H
//		DelayMs@Time		EQU		75H
//		Delay10Us@i		EQU		72H
//-----------------------Variable END---------------------------------

		LJUMP 	0AH 			//0000 	380A
		LJUMP 	82H 			//0001 	3882
		LJUMP 	65H 			//0002 	3865
		LJUMP 	75H 			//0003 	3875
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	70H 			//0006 	01F0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	71H 			//0008 	01F1
		LJUMP 	98H 			//0009 	3898
		LJUMP 	0BH 			//000A 	380B
		CLRR 	7BH 			//000B 	017B
		BCR 	STATUS,5 		//000C 	1283
		CLRR 	47H 			//000D 	0147
		CLRR 	48H 			//000E 	0148
		CLRR 	49H 			//000F 	0149
		CLRR 	4AH 			//0010 	014A
		CLRR 	STATUS 			//0011 	0103
		LJUMP 	60H 			//0012 	3860

		//;test_ft60e21x_PA_INT.C: 230: uint8_t i,k;
		//;test_ft60e21x_PA_INT.C: 231: uint32_t j;
		//;test_ft60e21x_PA_INT.C: 232: if((Addr_1527 > 0xfffff) || Data >15)
		LDR 	76H,0 			//0013 	0876
		BTSS 	STATUS,2 		//0014 	1D03
		RET		 					//0015 	0004
		LDWI 	10H 			//0016 	2A10
		SUBWR 	75H,0 			//0017 	0C75
		BTSS 	STATUS,2 		//0018 	1D03
		LJUMP 	20H 			//0019 	3820
		LDWI 	0H 			//001A 	2A00
		SUBWR 	74H,0 			//001B 	0C74
		BTSS 	STATUS,2 		//001C 	1D03
		LJUMP 	20H 			//001D 	3820
		LDWI 	0H 			//001E 	2A00
		SUBWR 	73H,0 			//001F 	0C73
		BTSC 	STATUS,0 		//0020 	1403
		RET		 					//0021 	0004
		LDWI 	10H 			//0022 	2A10
		SUBWR 	77H,0 			//0023 	0C77
		BTSC 	STATUS,0 		//0024 	1403
		RET		 					//0025 	0004

		//;test_ft60e21x_PA_INT.C: 235: GIE = 0;
		BCR 	INTCON,7 		//0026 	138B

		//;test_ft60e21x_PA_INT.C: 237: coding_syn_1527();
		LCALL 	157H 			//0027 	3157

		//;test_ft60e21x_PA_INT.C: 239: for(i=0;i<20;i++)
		CLRR 	45H 			//0028 	0145

		//;test_ft60e21x_PA_INT.C: 240: {
		//;test_ft60e21x_PA_INT.C: 241: j = (0x80000 & Addr_1527);
		LDR 	76H,0 			//0029 	0876
		STR 	43H 			//002A 	01C3
		LDR 	75H,0 			//002B 	0875
		STR 	42H 			//002C 	01C2
		LDR 	74H,0 			//002D 	0874
		STR 	41H 			//002E 	01C1
		LDR 	73H,0 			//002F 	0873
		STR 	40H 			//0030 	01C0
		LDWI 	8H 			//0031 	2A08
		CLRR 	40H 			//0032 	0140
		CLRR 	41H 			//0033 	0141
		ANDWR 	42H,1 			//0034 	02C2
		LDWI 	0H 			//0035 	2A00
		CLRR 	43H 			//0036 	0143

		//;test_ft60e21x_PA_INT.C: 242: Addr_1527 = (Addr_1527 << 1);
		BCR 	STATUS,0 		//0037 	1003
		RLR 	73H,1 			//0038 	05F3
		RLR 	74H,1 			//0039 	05F4
		RLR 	75H,1 			//003A 	05F5
		RLR 	76H,1 			//003B 	05F6

		//;test_ft60e21x_PA_INT.C: 243: if(j != 0)
		LDR 	43H,0 			//003C 	0843
		IORWR 	42H,0 			//003D 	0342
		IORWR 	41H,0 			//003E 	0341
		IORWR 	40H,0 			//003F 	0340
		BTSC 	STATUS,2 		//0040 	1503
		LJUMP 	44H 			//0041 	3844

		//;test_ft60e21x_PA_INT.C: 244: coding_H_1527();
		LCALL 	162H 			//0042 	3162
		LJUMP 	45H 			//0043 	3845

		//;test_ft60e21x_PA_INT.C: 245: else
		//;test_ft60e21x_PA_INT.C: 246: coding_L_1527();
		LCALL 	15DH 			//0044 	315D
		LDWI 	14H 			//0045 	2A14
		BCR 	STATUS,5 		//0046 	1283
		INCR	45H,1 			//0047 	09C5
		SUBWR 	45H,0 			//0048 	0C45
		BTSS 	STATUS,0 		//0049 	1C03
		LJUMP 	29H 			//004A 	3829

		//;test_ft60e21x_PA_INT.C: 247: }
		//;test_ft60e21x_PA_INT.C: 249: for(i=0;i<4;i++)
		CLRR 	45H 			//004B 	0145

		//;test_ft60e21x_PA_INT.C: 250: {
		//;test_ft60e21x_PA_INT.C: 251: k = (0x08 & Data);
		LDR 	77H,0 			//004C 	0877
		STR 	44H 			//004D 	01C4
		LDWI 	8H 			//004E 	2A08
		ANDWR 	44H,1 			//004F 	02C4

		//;test_ft60e21x_PA_INT.C: 252: Data = (Data << 1);
		BCR 	STATUS,0 		//0050 	1003
		RLR 	77H,1 			//0051 	05F7

		//;test_ft60e21x_PA_INT.C: 253: if(k != 0)
		LDR 	44H,0 			//0052 	0844
		BTSC 	STATUS,2 		//0053 	1503
		LJUMP 	57H 			//0054 	3857

		//;test_ft60e21x_PA_INT.C: 254: coding_H_1527();
		LCALL 	162H 			//0055 	3162
		LJUMP 	58H 			//0056 	3858

		//;test_ft60e21x_PA_INT.C: 255: else
		//;test_ft60e21x_PA_INT.C: 256: coding_L_1527();
		LCALL 	15DH 			//0057 	315D
		LDWI 	4H 			//0058 	2A04
		BCR 	STATUS,5 		//0059 	1283
		INCR	45H,1 			//005A 	09C5
		SUBWR 	45H,0 			//005B 	0C45
		BTSS 	STATUS,0 		//005C 	1C03
		LJUMP 	4CH 			//005D 	384C

		//;test_ft60e21x_PA_INT.C: 257: }
		//;test_ft60e21x_PA_INT.C: 258: GIE = 1;
		BSR 	INTCON,7 		//005E 	1B8B
		RET		 					//005F 	0004

		//;test_ft60e21x_PA_INT.C: 304: POWER_INITIAL();
		LCALL 	10EH 			//0060 	310E

		//;test_ft60e21x_PA_INT.C: 305: TIMER0_INITIAL();
		LCALL 	126H 			//0061 	3126

		//;test_ft60e21x_PA_INT.C: 306: GIE = 1;
		BSR 	INTCON,7 		//0062 	1B8B

		//;test_ft60e21x_PA_INT.C: 307: T0IE = 1;
		BSR 	INTCON,5 		//0063 	1A8B
		LJUMP 	84H 			//0064 	3884

		//;test_ft60e21x_PA_INT.C: 319: for(uint8_t i=0; i<3; i++)
		BCR 	STATUS,5 		//0065 	1283
		CLRR 	46H 			//0066 	0146

		//;test_ft60e21x_PA_INT.C: 320: {
		//;test_ft60e21x_PA_INT.C: 322: coding_1527(0x12345, 0x01);
		LCALL 	90H 			//0067 	3090
		CLRR 	77H 			//0068 	0177
		INCR	77H,1 			//0069 	09F7
		LCALL 	13H 			//006A 	3013

		//;test_ft60e21x_PA_INT.C: 325: LED_Flickering1();
		LCALL 	F8H 			//006B 	30F8
		LDWI 	3H 			//006C 	2A03
		BCR 	STATUS,5 		//006D 	1283
		INCR	46H,1 			//006E 	09C6
		SUBWR 	46H,0 			//006F 	0C46
		BTSS 	STATUS,0 		//0070 	1C03
		LJUMP 	67H 			//0071 	3867

		//;test_ft60e21x_PA_INT.C: 326: }
		//;test_ft60e21x_PA_INT.C: 327: LED_Flickering3();
		LCALL 	E2H 			//0072 	30E2

		//;test_ft60e21x_PA_INT.C: 328: g_state = STATE_WAKEUP;
		CLRR 	7BH 			//0073 	017B

		//;test_ft60e21x_PA_INT.C: 329: break;
		LJUMP 	84H 			//0074 	3884

		//;test_ft60e21x_PA_INT.C: 332: coding_1527(0x12345, 0x02);
		LCALL 	90H 			//0075 	3090
		LDWI 	2H 			//0076 	2A02
		STR 	77H 			//0077 	01F7
		LCALL 	13H 			//0078 	3013

		//;test_ft60e21x_PA_INT.C: 333: PA3=0;
		BCR 	STATUS,5 		//0079 	1283
		BCR 	5H,3 			//007A 	1185

		//;test_ft60e21x_PA_INT.C: 335: Enter_Deep_Sleep();
		LCALL 	141H 			//007B 	3141

		//;test_ft60e21x_PA_INT.C: 338: System_Reinit();
		LCALL 	150H 			//007C 	3150

		//;test_ft60e21x_PA_INT.C: 339: g_state = STATE_WAKEUP;
		CLRR 	7BH 			//007D 	017B

		//;test_ft60e21x_PA_INT.C: 340: g_timer_5s = 0;
		BCR 	STATUS,5 		//007E 	1283
		CLRR 	49H 			//007F 	0149
		CLRR 	4AH 			//0080 	014A

		//;test_ft60e21x_PA_INT.C: 341: break;
		LJUMP 	84H 			//0081 	3884

		//;test_ft60e21x_PA_INT.C: 342: case STATE_WAKEUP:
		//;test_ft60e21x_PA_INT.C: 344: PA3=1;
		BCR 	STATUS,5 		//0082 	1283
		BSR 	5H,3 			//0083 	1985

		//;test_ft60e21x_PA_INT.C: 345: break;
		LDR 	7BH,0 			//0084 	087B
		STR 	FSR 			//0085 	0184
		LDWI 	3H 			//0086 	2A03
		SUBWR 	FSR,0 			//0087 	0C04
		BTSC 	STATUS,0 		//0088 	1403
		LJUMP 	84H 			//0089 	3884
		LDWI 	0H 			//008A 	2A00
		STR 	PCLATH 			//008B 	018A
		LDWI 	1H 			//008C 	2A01
		ADDWR 	FSR,0 			//008D 	0B04
		STR 	PCL 			//008E 	0182
		LJUMP 	0AH 			//008F 	380A
		LDWI 	1H 			//0090 	2A01
		CLRR 	76H 			//0091 	0176
		STR 	75H 			//0092 	01F5
		LDWI 	23H 			//0093 	2A23
		STR 	74H 			//0094 	01F4
		LDWI 	45H 			//0095 	2A45
		STR 	73H 			//0096 	01F3
		RET		 					//0097 	0004

		//;test_ft60e21x_PA_INT.C: 48: if(INTCON & 0x04)
		BTSS 	INTCON,2 		//0098 	1D0B
		LJUMP 	C2H 			//0099 	38C2

		//;test_ft60e21x_PA_INT.C: 49: {
		//;test_ft60e21x_PA_INT.C: 50: if (g_state == STATE_WAKEUP) {
		LDR 	7BH,0 			//009A 	087B
		BTSS 	STATUS,2 		//009B 	1D03
		LJUMP 	BEH 			//009C 	38BE

		//;test_ft60e21x_PA_INT.C: 52: g_timer_5s++;
		BCR 	STATUS,5 		//009D 	1283
		INCR	49H,1 			//009E 	09C9
		BTSC 	STATUS,2 		//009F 	1503
		INCR	4AH,1 			//00A0 	09CA

		//;test_ft60e21x_PA_INT.C: 53: if (g_timer_5s >= 500) {
		LDWI 	1H 			//00A1 	2A01
		SUBWR 	4AH,0 			//00A2 	0C4A
		LDWI 	F4H 			//00A3 	2AF4
		BTSC 	STATUS,2 		//00A4 	1503
		SUBWR 	49H,0 			//00A5 	0C49
		BTSS 	STATUS,0 		//00A6 	1C03
		LJUMP 	ACH 			//00A7 	38AC

		//;test_ft60e21x_PA_INT.C: 54: g_state = STATE_SLEEP;
		LDWI 	2H 			//00A8 	2A02
		STR 	7BH 			//00A9 	01FB

		//;test_ft60e21x_PA_INT.C: 55: g_timer_5s = 0;
		CLRR 	49H 			//00AA 	0149
		CLRR 	4AH 			//00AB 	014A

		//;test_ft60e21x_PA_INT.C: 56: }
		//;test_ft60e21x_PA_INT.C: 59: if (PA5 == 0) {
		BTSC 	5H,5 			//00AC 	1685
		LJUMP 	BCH 			//00AD 	38BC

		//;test_ft60e21x_PA_INT.C: 60: g_timer_2s++;
		INCR	47H,1 			//00AE 	09C7
		BTSC 	STATUS,2 		//00AF 	1503
		INCR	48H,1 			//00B0 	09C8

		//;test_ft60e21x_PA_INT.C: 61: if (g_timer_2s >= 200) {
		LDWI 	0H 			//00B1 	2A00
		SUBWR 	48H,0 			//00B2 	0C48
		LDWI 	C8H 			//00B3 	2AC8
		BTSC 	STATUS,2 		//00B4 	1503
		SUBWR 	47H,0 			//00B5 	0C47
		BTSS 	STATUS,0 		//00B6 	1C03
		LJUMP 	BEH 			//00B7 	38BE

		//;test_ft60e21x_PA_INT.C: 62: g_state = STATE_PAIRING;
		LDWI 	1H 			//00B8 	2A01
		STR 	7BH 			//00B9 	01FB

		//;test_ft60e21x_PA_INT.C: 63: g_timer_5s = 0;
		CLRR 	49H 			//00BA 	0149
		CLRR 	4AH 			//00BB 	014A

		//;test_ft60e21x_PA_INT.C: 64: g_timer_2s = 0;
		CLRR 	47H 			//00BC 	0147
		CLRR 	48H 			//00BD 	0148

		//;test_ft60e21x_PA_INT.C: 68: }
		//;test_ft60e21x_PA_INT.C: 69: }
		//;test_ft60e21x_PA_INT.C: 70: INTCON &= ~(1<<2);
		BCR 	INTCON,2 		//00BE 	110B

		//;test_ft60e21x_PA_INT.C: 71: TMR0 =100;
		LDWI 	64H 			//00BF 	2A64
		BCR 	STATUS,5 		//00C0 	1283
		STR 	1H 			//00C1 	0181
		LDR 	71H,0 			//00C2 	0871
		STR 	PCLATH 			//00C3 	018A
		SWAPR 	70H,0 			//00C4 	0770
		STR 	STATUS 			//00C5 	0183
		SWAPR 	7EH,1 			//00C6 	07FE
		SWAPR 	7EH,0 			//00C7 	077E
		RETI		 			//00C8 	0009
		STR 	75H 			//00C9 	01F5

		//;test_ft60e21x_PA_INT.C: 153: for(unsigned int a=0;a<Time;a++)
		CLRR 	76H 			//00CA 	0176
		CLRR 	77H 			//00CB 	0177
		LDR 	75H,0 			//00CC 	0875
		STR 	73H 			//00CD 	01F3
		CLRR 	74H 			//00CE 	0174
		LDR 	74H,0 			//00CF 	0874
		SUBWR 	77H,0 			//00D0 	0C77
		BTSS 	STATUS,2 		//00D1 	1D03
		LJUMP 	D5H 			//00D2 	38D5
		LDR 	73H,0 			//00D3 	0873
		SUBWR 	76H,0 			//00D4 	0C76
		BTSC 	STATUS,0 		//00D5 	1403
		RET		 					//00D6 	0004

		//;test_ft60e21x_PA_INT.C: 154: {
		//;test_ft60e21x_PA_INT.C: 155: for(unsigned char b=0;b<83;b++)
		CLRR 	78H 			//00D7 	0178

		//;test_ft60e21x_PA_INT.C: 156: {
		//;test_ft60e21x_PA_INT.C: 157: Delay10Us();
		LCALL 	139H 			//00D8 	3139
		LDWI 	53H 			//00D9 	2A53
		INCR	78H,1 			//00DA 	09F8
		SUBWR 	78H,0 			//00DB 	0C78
		BTSS 	STATUS,0 		//00DC 	1C03
		LJUMP 	D8H 			//00DD 	38D8
		INCR	76H,1 			//00DE 	09F6
		BTSC 	STATUS,2 		//00DF 	1503
		INCR	77H,1 			//00E0 	09F7
		LJUMP 	CCH 			//00E1 	38CC

		//;test_ft60e21x_PA_INT.C: 282: for(int i=0;i<6;i++)
		CLRR 	79H 			//00E2 	0179
		CLRR 	7AH 			//00E3 	017A

		//;test_ft60e21x_PA_INT.C: 283: {
		//;test_ft60e21x_PA_INT.C: 284: PA3 = (PA3 == 1 ? 0 : 1);
		LDWI 	8H 			//00E4 	2A08
		BCR 	STATUS,5 		//00E5 	1283
		XORWR 	5H,1 			//00E6 	0485

		//;test_ft60e21x_PA_INT.C: 285: DelayMs(50);
		LDWI 	32H 			//00E7 	2A32
		LCALL 	C9H 			//00E8 	30C9
		INCR	79H,1 			//00E9 	09F9
		BTSC 	STATUS,2 		//00EA 	1503
		INCR	7AH,1 			//00EB 	09FA
		LDR 	7AH,0 			//00EC 	087A
		XORWI 	80H 			//00ED 	2680
		STR 	7FH 			//00EE 	01FF
		LDWI 	80H 			//00EF 	2A80
		SUBWR 	7FH,0 			//00F0 	0C7F
		BTSS 	STATUS,2 		//00F1 	1D03
		LJUMP 	F5H 			//00F2 	38F5
		LDWI 	6H 			//00F3 	2A06
		SUBWR 	79H,0 			//00F4 	0C79
		BTSC 	STATUS,0 		//00F5 	1403
		RET		 					//00F6 	0004
		LJUMP 	E4H 			//00F7 	38E4

		//;test_ft60e21x_PA_INT.C: 290: for(int i=0;i<3;i++)
		CLRR 	79H 			//00F8 	0179
		CLRR 	7AH 			//00F9 	017A

		//;test_ft60e21x_PA_INT.C: 291: {
		//;test_ft60e21x_PA_INT.C: 292: PA3 = (PA3 == 1 ? 0 : 1);
		LDWI 	8H 			//00FA 	2A08
		BCR 	STATUS,5 		//00FB 	1283
		XORWR 	5H,1 			//00FC 	0485

		//;test_ft60e21x_PA_INT.C: 293: DelayMs(10);
		LDWI 	AH 			//00FD 	2A0A
		LCALL 	C9H 			//00FE 	30C9
		INCR	79H,1 			//00FF 	09F9
		BTSC 	STATUS,2 		//0100 	1503
		INCR	7AH,1 			//0101 	09FA
		LDR 	7AH,0 			//0102 	087A
		XORWI 	80H 			//0103 	2680
		STR 	7FH 			//0104 	01FF
		LDWI 	80H 			//0105 	2A80
		SUBWR 	7FH,0 			//0106 	0C7F
		BTSS 	STATUS,2 		//0107 	1D03
		LJUMP 	10BH 			//0108 	390B
		LDWI 	3H 			//0109 	2A03
		SUBWR 	79H,0 			//010A 	0C79
		BTSC 	STATUS,0 		//010B 	1403
		RET		 					//010C 	0004
		LJUMP 	FAH 			//010D 	38FA

		//;test_ft60e21x_PA_INT.C: 82: OSCCON = 0B01100000;
		LDWI 	60H 			//010E 	2A60
		BSR 	STATUS,5 		//010F 	1A83
		STR 	FH 			//0110 	018F

		//;test_ft60e21x_PA_INT.C: 83: INTCON = 0;
		CLRR 	INTCON 			//0111 	010B

		//;test_ft60e21x_PA_INT.C: 85: PORTA = 0B00000000;
		BCR 	STATUS,5 		//0112 	1283
		CLRR 	5H 			//0113 	0105

		//;test_ft60e21x_PA_INT.C: 86: TRISA = 0B00100100;
		LDWI 	24H 			//0114 	2A24
		BSR 	STATUS,5 		//0115 	1A83
		STR 	5H 			//0116 	0185

		//;test_ft60e21x_PA_INT.C: 87: WPUA = 0B00100100;
		STR 	15H 			//0117 	0195

		//;test_ft60e21x_PA_INT.C: 89: MSCON = 0B00000000;
		BCR 	STATUS,5 		//0118 	1283
		CLRR 	1BH 			//0119 	011B
		RET		 					//011A 	0004

		//;test_ft60e21x_PA_INT.C: 186: TRISA2 = 1;
		BSR 	STATUS,5 		//011B 	1A83
		BSR 	5H,2 			//011C 	1905

		//;test_ft60e21x_PA_INT.C: 187: TRISA5 = 1;
		BSR 	5H,5 			//011D 	1A85

		//;test_ft60e21x_PA_INT.C: 192: ReadAPin = PORTA;
		BCR 	STATUS,5 		//011E 	1283
		LDR 	5H,0 			//011F 	0805

		//;test_ft60e21x_PA_INT.C: 194: PAIF = 0;
		BCR 	INTCON,0 		//0120 	100B

		//;test_ft60e21x_PA_INT.C: 196: IOCA2 = 1;
		BSR 	STATUS,5 		//0121 	1A83
		BSR 	16H,2 			//0122 	1916

		//;test_ft60e21x_PA_INT.C: 197: IOCA5 = 1;
		BSR 	16H,5 			//0123 	1A96

		//;test_ft60e21x_PA_INT.C: 199: PAIE = 1;
		BSR 	INTCON,3 		//0124 	198B
		RET		 					//0125 	0004

		//;test_ft60e21x_PA_INT.C: 99: T0ON = 0;
		BCR 	1FH,3 			//0126 	119F

		//;test_ft60e21x_PA_INT.C: 100: TMR0 = 100;
		LDWI 	64H 			//0127 	2A64
		STR 	1H 			//0128 	0181

		//;test_ft60e21x_PA_INT.C: 101: T0CON0 = 0B00000000;
		CLRR 	1FH 			//0129 	011F

		//;test_ft60e21x_PA_INT.C: 102: OPTION = 0B00000110;
		LDWI 	6H 			//012A 	2A06
		BSR 	STATUS,5 		//012B 	1A83
		STR 	1H 			//012C 	0181

		//;test_ft60e21x_PA_INT.C: 109: T0ON = 1;
		BCR 	STATUS,5 		//012D 	1283
		BSR 	1FH,3 			//012E 	199F
		RET		 					//012F 	0004

		//;test_ft60e21x_PA_INT.C: 135: unsigned char i;
		//;test_ft60e21x_PA_INT.C: 136: for(i=0; i<3; i++);
		CLRR 	72H 			//0130 	0172
		LDWI 	3H 			//0131 	2A03
		INCR	72H,1 			//0132 	09F2
		SUBWR 	72H,0 			//0133 	0C72
		BTSS 	STATUS,0 		//0134 	1C03
		LJUMP 	131H 			//0135 	3931

		//;test_ft60e21x_PA_INT.C: 137: __nop(); __nop();
		NOP		 					//0136 	0000
		NOP		 					//0137 	0000
		RET		 					//0138 	0004

		//;test_ft60e21x_PA_INT.C: 119: for(unsigned char i=0;i<2;i++)
		CLRR 	72H 			//0139 	0172

		//;test_ft60e21x_PA_INT.C: 120: {
		//;test_ft60e21x_PA_INT.C: 121: __nop();
		NOP		 					//013A 	0000
		LDWI 	2H 			//013B 	2A02
		INCR	72H,1 			//013C 	09F2
		SUBWR 	72H,0 			//013D 	0C72
		BTSC 	STATUS,0 		//013E 	1403
		RET		 					//013F 	0004
		LJUMP 	13AH 			//0140 	393A

		//;test_ft60e21x_PA_INT.C: 264: Wakeup_INITIAL();
		LCALL 	11BH 			//0141 	311B

		//;test_ft60e21x_PA_INT.C: 265: GIE = 0;
		BCR 	INTCON,7 		//0142 	138B

		//;test_ft60e21x_PA_INT.C: 266: __nop();
		NOP		 					//0143 	0000

		//;test_ft60e21x_PA_INT.C: 267: __nop();
		NOP		 					//0144 	0000
		SLEEP	 			//0145 	0002

		//;test_ft60e21x_PA_INT.C: 269: __nop();
		NOP		 					//0146 	0000

		//;test_ft60e21x_PA_INT.C: 270: __nop();
		NOP		 					//0147 	0000
		RET		 					//0148 	0004

		//;test_ft60e21x_PA_INT.C: 142: unsigned char i;
		//;test_ft60e21x_PA_INT.C: 143: for(i=0; i<38; i++);
		CLRR 	72H 			//0149 	0172
		LDWI 	26H 			//014A 	2A26
		INCR	72H,1 			//014B 	09F2
		SUBWR 	72H,0 			//014C 	0C72
		BTSC 	STATUS,0 		//014D 	1403
		RET		 					//014E 	0004
		LJUMP 	14AH 			//014F 	394A

		//;test_ft60e21x_PA_INT.C: 274: PAIF = 0;
		BCR 	INTCON,0 		//0150 	100B

		//;test_ft60e21x_PA_INT.C: 275: PAIE = 0;
		BCR 	INTCON,3 		//0151 	118B

		//;test_ft60e21x_PA_INT.C: 276: IOCA2 =0;
		BSR 	STATUS,5 		//0152 	1A83
		BCR 	16H,2 			//0153 	1116

		//;test_ft60e21x_PA_INT.C: 277: T0IE = 1;
		BSR 	INTCON,5 		//0154 	1A8B

		//;test_ft60e21x_PA_INT.C: 278: GIE = 1;
		BSR 	INTCON,7 		//0155 	1B8B
		RET		 					//0156 	0004

		//;test_ft60e21x_PA_INT.C: 203: PA4=1;
		BCR 	STATUS,5 		//0157 	1283
		BSR 	5H,4 			//0158 	1A05

		//;test_ft60e21x_PA_INT.C: 204: delay_4us();
		LCALL 	167H 			//0159 	3167

		//;test_ft60e21x_PA_INT.C: 205: PA4=0;
		BCR 	STATUS,5 		//015A 	1283
		BCR 	5H,4 			//015B 	1205

		//;test_ft60e21x_PA_INT.C: 206: delay_124us();
		LJUMP 	149H 			//015C 	3949

		//;test_ft60e21x_PA_INT.C: 211: PA4=1;
		BSR 	5H,4 			//015D 	1A05

		//;test_ft60e21x_PA_INT.C: 212: delay_4us();
		LCALL 	167H 			//015E 	3167

		//;test_ft60e21x_PA_INT.C: 213: PA4=0;
		BCR 	STATUS,5 		//015F 	1283
		BCR 	5H,4 			//0160 	1205

		//;test_ft60e21x_PA_INT.C: 214: delay_12us();
		LJUMP 	130H 			//0161 	3930

		//;test_ft60e21x_PA_INT.C: 219: PA4=1;
		BSR 	5H,4 			//0162 	1A05

		//;test_ft60e21x_PA_INT.C: 220: delay_12us();
		LCALL 	130H 			//0163 	3130

		//;test_ft60e21x_PA_INT.C: 221: PA4=0;
		BCR 	STATUS,5 		//0164 	1283
		BCR 	5H,4 			//0165 	1205

		//;test_ft60e21x_PA_INT.C: 222: delay_4us();
		LJUMP 	167H 			//0166 	3967

		//;test_ft60e21x_PA_INT.C: 129: __nop(); __nop(); __nop(); __nop();
		NOP		 					//0167 	0000
		NOP		 					//0168 	0000
		NOP		 					//0169 	0000
		NOP		 					//016A 	0000
		RET		 					//016B 	0004
			END
