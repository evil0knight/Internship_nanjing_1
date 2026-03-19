//Deviec:FT61FC4X
//-----------------------Variable---------------------------------
		_g_current_state		EQU		B4H
		_g_system_evt		EQU		C5H
		_s_valve_open		EQU		C4H
		_g_timer_count		EQU		56H
		_key_press_cnt		EQU		54H
		_led_blink_cnt		EQU		52H
		_GIE		EQU		0BH
		_PORTAbits...RA0		EQU		0CH
		_PORTAbits...RA1		EQU		0CH
		_PORTAbits...RA2		EQU		0CH
		_PORTAbits...RA3		EQU		0CH
		_PORTAbits...RA4		EQU		0CH
		_PORTAbits...RA5		EQU		0CH
		_PORTAbits...RA6		EQU		0CH
		_PORTAbits...RA7		EQU		0CH
		_PORTAbits..		EQU		0CH
		_PORTAbits...PA0		EQU		0CH
		_PORTAbits...PA1		EQU		0CH
		_PORTAbits...PA2		EQU		0CH
		_PORTAbits...PA3		EQU		0CH
		_PORTAbits...PA4		EQU		0CH
		_PORTAbits...PA5		EQU		0CH
		_PORTAbits...PA6		EQU		0CH
		_PORTAbits...PA7		EQU		0CH
		_PORTAbits..		EQU		0CH
		_PORTAbits		EQU		0CH
		_PORTBbits...RB0		EQU		0DH
		_PORTBbits...RB1		EQU		0DH
		_PORTBbits...RB2		EQU		0DH
		_PORTBbits...RB3		EQU		0DH
		_PORTBbits...RB4		EQU		0DH
		_PORTBbits...RB5		EQU		0DH
		_PORTBbits...RB6		EQU		0DH
		_PORTBbits...RB7		EQU		0DH
		_PORTBbits..		EQU		0DH
		_PORTBbits...PB0		EQU		0DH
		_PORTBbits...PB1		EQU		0DH
		_PORTBbits...PB2		EQU		0DH
		_PORTBbits...PB3		EQU		0DH
		_PORTBbits...PB4		EQU		0DH
		_PORTBbits...PB5		EQU		0DH
		_PORTBbits...PB6		EQU		0DH
		_PORTBbits...PB7		EQU		0DH
		_PORTBbits..		EQU		0DH
		_PORTBbits		EQU		0DH
		_PC1		EQU		0EH
		_T4UIE		EQU		112H
		_T4UIF		EQU		113H
		_ODCON0		EQU		21FH
		_URRXNE		EQU		48EH
		_RXNEF		EQU		492H
		_TXEF		EQU		492H
		_TCF		EQU		49CH
//		main@temp_evt		EQU		C3H
//		UART_SendATCmd@j		EQU		BBH
//		UART_SendATCmd@cmd		EQU		B6H
//		FSM_Process@evt		EQU		C0H
//		FSM_Process@i		EQU		C1H
//		FSM_Process@evt		EQU		C0H
//		FSM_Process@evt		EQU		C0H
//		___wmul@product		EQU		B9H
//		___wmul@multiplier		EQU		B5H
//		___wmul@multiplicand		EQU		B7H
//		UART_SendConnect@data		EQU		BBH
//		UART_SendConnect@F2550		EQU		5BH
//		led_fast_flashing@i		EQU		BBH
//		UART_SendValveStatus@is_open		EQU		BBH
//		UART_SendValveStatus@data		EQU		BCH
//		UART_SendValveStatus@is_open		EQU		BBH
//		UART_SendValveStatus@is_open		EQU		BBH
//		UART_SendFrame@func		EQU		B9H
//		UART_SendFrame@i		EQU		BAH
//		UART_SendFrame@func		EQU		B9H
//		UART_SendFrame@data		EQU		B6H
//		UART_SendFrame@len		EQU		B7H
//		UART_SendFrame@func		EQU		B9H
//		UART_SendByte@data		EQU		B5H
//		UART_SendByte@data		EQU		B5H
//		UART_SendByte@data		EQU		B5H
//		FSM_SendEvent@evt		EQU		B5H
//		FSM_SendEvent@evt		EQU		B5H
//		FSM_SendEvent@evt		EQU		B5H
//		DelayMs@Time		EQU		B7H
//		DelayMs@b		EQU		B9H
//		DelayMs@a		EQU		B8H
//		DelayMs@Time		EQU		B7H
//		DelayMs@Time		EQU		B7H
//		DelayUs@Time		EQU		B5H
//		DelayUs@a		EQU		B6H
//		DelayUs@Time		EQU		B5H
//		DelayUs@Time		EQU		B5H
//		UART_ISR@addr		EQU		40H
//		UART_ISR@i		EQU		42H
//		UART_ISR@b		EQU		43H
//		UART_ISR@ps		EQU		5AH
//		UART_ISR@rx_buf		EQU		44H
//		UART_ISR@data_idx		EQU		59H
//		UART_ISR@data_len		EQU		58H
//		i1___wmul@product		EQU		74H
//		i1___wmul@multiplier		EQU		70H
//		i1___wmul@multiplicand		EQU		72H
//		func_data_len@func		EQU		70H
//		func_data_len@func		EQU		70H
//		func_data_len@func		EQU		70H
//		UART_SendATCmd_ADR@buf		EQU		28H
//		UART_SendATCmd_ADR@addr		EQU		7BH
//		UART_SendATCmd_ADR@F2542		EQU		A0H
//		i1UART_SendATCmd@j		EQU		76H
//		i1UART_SendATCmd@cmd		EQU		71H
//		i1UART_SendByte@data		EQU		70H
//		i1UART_SendByte@data		EQU		70H
//		i1UART_SendByte@data		EQU		70H
//		uint_to_str@tmp		EQU		20H
//		uint_to_str@i		EQU		27H
//		uint_to_str@j		EQU		26H
//		uint_to_str@val		EQU		77H
//		uint_to_str@buf		EQU		79H
//		uint_to_str@F2534		EQU		4CH
//		___lwmod@counter		EQU		74H
//		___lwmod@divisor		EQU		70H
//		___lwmod@dividend		EQU		72H
//		___lwdiv@quotient		EQU		74H
//		___lwdiv@counter		EQU		76H
//		___lwdiv@divisor		EQU		70H
//		___lwdiv@dividend		EQU		72H
//		i1FSM_SendEvent@evt		EQU		70H
//		i1FSM_SendEvent@evt		EQU		70H
//		i1FSM_SendEvent@evt		EQU		70H
//-----------------------Variable END---------------------------------

		MOVLP 	0H 			//0000 	0180
		LJUMP 	17H 			//0001 	3817
		ORG		0004H
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;main.c: 24: if (T4UIE && T4UIF) {
		MOVLB 	2H 			//0006 	1022
		BTSC 	12H, 0H 		//0007 	2812
		BTSS 	13H, 0H 		//0008 	2C13
		LJUMP 	EH 			//0009 	380E

		//;main.c: 25: T4UIF = 1;
		BSR 	13H, 0H 			//000A 	2413

		//;main.c: 26: Timer_ISR();
		MOVLP 	2H 			//000B 	0182
		LCALL 	2FEH 			//000C 	32FE
		MOVLP 	0H 			//000D 	0180

		//;main.c: 27: }
		//;main.c: 30: if(URRXNE && RXNEF) {
		MOVLB 	9H 			//000E 	1029
		BTSC 	EH, 0H 			//000F 	280E
		BTSS 	12H, 0H 		//0010 	2C12
		LJUMP 	15H 			//0011 	3815

		//;main.c: 31: UART_ISR();
		MOVLP 	2H 			//0012 	0182
		LCALL 	26EH 			//0013 	326E

		//;main.c: 32: __nop();
		NOP 					//0014 	1000
		BCR 	7EH, 0H 			//0015 	207E
		RETI 					//0016 	1009
		MOVLP 	0H 			//0017 	0180
		LJUMP 	4BH 			//0018 	384B
		LJUMP 	2BH 			//0019 	382B
		CLRF 	44H 			//001A 	11C4
		LCALL 	1EH 			//001B 	301E
		MOVLP 	0H 			//001C 	0180
		LJUMP 	233H 			//001D 	3A33

		//;motor.c: 39: s_motor_state = MOTOR_CLOSING;
		LCALL 	23EH 			//001E 	323E

		//;motor.c: 40: PORTBbits.PB1 = 0;
		BCR 	DH, 1H 			//001F 	208D

		//;motor.c: 41: PORTAbits.PA0 = 1;
		BSR 	CH, 0H 			//0020 	240C
		RET 					//0021 	1008
		CLRF 	44H 			//0022 	11C4
		INCR 	44H, 1H 		//0023 	1AC4
		LCALL 	27H 			//0024 	3027
		MOVLP 	0H 			//0025 	0180
		LJUMP 	233H 			//0026 	3A33

		//;motor.c: 27: s_motor_state = MOTOR_OPENING;
		LCALL 	23EH 			//0027 	323E

		//;motor.c: 28: PORTBbits.PB1 = 1;
		BSR 	DH, 1H 			//0028 	248D

		//;motor.c: 29: PORTAbits.PA0 = 0;
		BCR 	CH, 0H 			//0029 	200C
		RET 					//002A 	1008

		//;uart.c: 190: unsigned char data[1] = {0x01};
		MOVLB 	0H 			//002B 	1020
		LDR 	5BH, 0H 			//002C 	185B
		MOVLB 	1H 			//002D 	1021
		STR 	3BH 			//002E 	10BB

		//;uart.c: 191: UART_SendFrame(0x04u, data, 1);
		LDWI 	BBH 			//002F 	00BB
		STR 	36H 			//0030 	10B6
		LDWI 	4H 			//0031 	0004
		CLRF 	37H 			//0032 	11B7
		INCR 	37H, 1H 		//0033 	1AB7
		LJUMP 	147H 			//0034 	3947
		LCALL 	38H 			//0035 	3038
		MOVLP 	0H 			//0036 	0180
		LJUMP 	233H 			//0037 	3A33

		//;uart.c: 211: Radio_Wake();
		LCALL 	22CH 			//0038 	322C
		MOVLP 	0H 			//0039 	0180

		//;uart.c: 212: DelayMs(20);
		LDWI 	14H 			//003A 	0014
		LJUMP 	122H 			//003B 	3922
		LCALL 	23EH 			//003C 	323E
		MOVLP 	0H 			//003D 	0180
		MOVLB 	1H 			//003E 	1021
		LDR 	44H, 0H 			//003F 	1844
		LJUMP 	242H 			//0040 	3A42
		LCALL 	23EH 			//0041 	323E
		MOVLP 	0H 			//0042 	0180
		LCALL 	91H 			//0043 	3091
		MOVLP 	0H 			//0044 	0180
		LJUMP 	67H 			//0045 	3867
		LCALL 	22CH 			//0046 	322C
		MOVLP 	0H 			//0047 	0180
		LCALL 	233H 			//0048 	3233
		BSR 	CH, 1H 			//0049 	248C
		RET 					//004A 	1008
		LDWI 	1H 			//004B 	0001
		STR 	5BH 			//004C 	10DB
		LDWI 	A1H 			//004D 	00A1
		STR 	4H 			//004E 	1084
		LDWI 	84H 			//004F 	0084
		STR 	5H 			//0050 	1085
		LDWI 	A0H 			//0051 	00A0
		STR 	6H 			//0052 	1086
		LDWI 	0H 			//0053 	0000
		STR 	7H 			//0054 	1087
		LDWI 	15H 			//0055 	0015
		MOVLP 	5H 			//0056 	0185
		LCALL 	504H 			//0057 	3504
		MOVLP 	0H 			//0058 	0180
		LDWI 	44H 			//0059 	0044
		STR 	4H 			//005A 	1084
		LDWI 	0H 			//005B 	0000
		STR 	5H 			//005C 	1085
		LDWI 	17H 			//005D 	0017
		MOVLP 	5H 			//005E 	0185
		LCALL 	50AH 			//005F 	350A
		MOVLP 	0H 			//0060 	0180
		MOVLB 	1H 			//0061 	1021
		CLRF 	44H 			//0062 	11C4
		CLRF 	45H 			//0063 	11C5
		BCR 	7EH, 0H 			//0064 	207E
		MOVLB 	0H 			//0065 	1020
		LJUMP 	B5H 			//0066 	38B5

		//;sleep_wake.c: 21: PORTAbits.PA1 = 0;
		BCR 	CH, 1H 			//0067 	208C

		//;sleep_wake.c: 22: Radio_Sleep();
		LCALL 	91H 			//0068 	3091
		MOVLP 	0H 			//0069 	0180

		//;sleep_wake.c: 23: DelayMs(50);
		LDWI 	32H 			//006A 	0032
		LCALL 	122H 			//006B 	3122
		MOVLP 	0H 			//006C 	0180

		//;sleep_wake.c: 28: IO_INT_INITIAL();
		LCALL 	84H 			//006D 	3084
		MOVLP 	0H 			//006E 	0180

		//;sleep_wake.c: 29: EPIF0 = 0x90;
		LDWI 	90H 			//006F 	0090
		MOVLB 	0H 			//0070 	1020
		STR 	14H 			//0071 	1094

		//;sleep_wake.c: 31: GIE = 0;
		BCR 	BH, 7H 			//0072 	238B

		//;sleep_wake.c: 34: __nop(); __nop();__nop();__nop();
		NOP 					//0073 	1000
		NOP 					//0074 	1000
		NOP 					//0075 	1000
		NOP 					//0076 	1000
		SLEEP 					//0077 	1063

		//;sleep_wake.c: 36: __nop(); __nop();__nop();__nop();
		NOP 					//0078 	1000
		NOP 					//0079 	1000
		NOP 					//007A 	1000
		NOP 					//007B 	1000

		//;sleep_wake.c: 39: Radio_Wake();
		LCALL 	22CH 			//007C 	322C
		MOVLP 	0H 			//007D 	0180

		//;sleep_wake.c: 40: EPIF0 = 0x90;
		LDWI 	90H 			//007E 	0090
		STR 	14H 			//007F 	1094

		//;sleep_wake.c: 41: INTCON = 0B11000000;
		LDWI 	C0H 			//0080 	00C0
		STR 	BH 			//0081 	108B

		//;sleep_wake.c: 43: FSM_SendEvent(EV_WAKE);
		LDWI 	1H 			//0082 	0001
		LJUMP 	22FH 			//0083 	3A2F

		//;sleep_wake.c: 5: EPS0 = 0B00000000;
		MOVLB 	2H 			//0084 	1022
		CLRF 	18H 			//0085 	1198

		//;sleep_wake.c: 8: EPS1 = 0B01000000;
		LDWI 	40H 			//0086 	0040
		STR 	19H 			//0087 	1099

		//;sleep_wake.c: 10: ITYPE0 = 0B00000000;
		CLRF 	1EH 			//0088 	119E

		//;sleep_wake.c: 12: ITYPE1 = 0B10000000;
		LDWI 	80H 			//0089 	0080
		STR 	1FH 			//008A 	109F

		//;sleep_wake.c: 14: EPIE0 = 0B10010000;
		LDWI 	90H 			//008B 	0090
		MOVLB 	1H 			//008C 	1021
		STR 	14H 			//008D 	1094

		//;sleep_wake.c: 16: INTCON = 0B11000000;
		LDWI 	C0H 			//008E 	00C0
		STR 	BH 			//008F 	108B
		RET 					//0090 	1008

		//;radio.c: 57: do { PC1 = 1; } while(0);
		BSR 	EH, 1H 			//0091 	248E
		RET 					//0092 	1008

		//;led.c: 5: int i=0;
		MOVLB 	1H 			//0093 	1021
		CLRF 	3BH 			//0094 	11BB
		CLRF 	3CH 			//0095 	11BC

		//;led.c: 6: for(i=0;i<7;i++)
		CLRF 	3BH 			//0096 	11BB
		CLRF 	3CH 			//0097 	11BC

		//;led.c: 7: {
		//;led.c: 8: PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1);
		BCR 	3H, 0H 			//0098 	2003
		MOVLB 	0H 			//0099 	1020
		BTSS 	CH, 1H 			//009A 	2C8C
		BSR 	3H, 0H 			//009B 	2403
		BTSS 	3H, 0H 			//009C 	2C03
		LJUMP 	A1H 			//009D 	38A1
		MOVLB 	0H 			//009E 	1020
		BSR 	CH, 1H 			//009F 	248C
		LJUMP 	A3H 			//00A0 	38A3
		MOVLB 	0H 			//00A1 	1020
		BCR 	CH, 1H 			//00A2 	208C

		//;led.c: 9: DelayMs(50);
		LDWI 	32H 			//00A3 	0032
		LCALL 	122H 			//00A4 	3122
		MOVLP 	0H 			//00A5 	0180
		INCR 	3BH, 1H 		//00A6 	1ABB
		BTSC 	3H, 2H 			//00A7 	2903
		INCR 	3CH, 1H 		//00A8 	1ABC
		LDR 	3CH, 0H 			//00A9 	183C
		XORWI 	80H 			//00AA 	0A80
		STR 	3AH 			//00AB 	10BA
		LDWI 	80H 			//00AC 	0080
		SUBWR 	3AH, 0H 		//00AD 	123A
		BTSS 	3H, 2H 			//00AE 	2D03
		LJUMP 	B2H 			//00AF 	38B2
		LDWI 	7H 			//00B0 	0007
		SUBWR 	3BH, 0H 		//00B1 	123B
		BTSC 	3H, 0H 			//00B2 	2803
		RET 					//00B3 	1008
		LJUMP 	98H 			//00B4 	3898

		//;main.c: 83: POWER_INITIAL();
		LCALL 	1E5H 			//00B5 	31E5
		MOVLP 	0H 			//00B6 	0180

		//;main.c: 85: Timer_Init();
		LCALL 	20CH 			//00B7 	320C
		MOVLP 	0H 			//00B8 	0180

		//;main.c: 86: UART_Init();
		LCALL 	21BH 			//00B9 	321B
		MOVLP 	0H 			//00BA 	0180

		//;main.c: 87: Radio_Init();
		LCALL 	CCH 			//00BB 	30CC
		MOVLP 	0H 			//00BC 	0180

		//;main.c: 88: INTCON = 0B11000000;
		LDWI 	C0H 			//00BD 	00C0
		STR 	BH 			//00BE 	108B

		//;main.c: 89: PORTAbits.PA1 = 1;
		BSR 	CH, 1H 			//00BF 	248C

		//;main.c: 90: DelayMs(50);
		LDWI 	32H 			//00C0 	0032
		LCALL 	122H 			//00C1 	3122
		MOVLP 	0H 			//00C2 	0180

		//;main.c: 94: if(g_system_evt != EV_NONE) {
		LDR 	45H, 0H 			//00C3 	1845
		BTSC 	3H, 2H 			//00C4 	2903
		LJUMP 	C3H 			//00C5 	38C3

		//;main.c: 95: SystemEvent temp_evt = g_system_evt;
		LDR 	45H, 0H 			//00C6 	1845
		STR 	43H 			//00C7 	10C3

		//;main.c: 96: g_system_evt = EV_NONE;
		CLRF 	45H 			//00C8 	11C5

		//;main.c: 98: FSM_Process(temp_evt);
		LCALL 	17AH 			//00C9 	317A
		MOVLP 	0H 			//00CA 	0180
		LJUMP 	C3H 			//00CB 	38C3

		//;radio.c: 10: UART_SendATCmd("AT+PWR=20");
		LDWI 	CDH 			//00CC 	00CD
		MOVLB 	1H 			//00CD 	1021
		STR 	36H 			//00CE 	10B6
		LDWI 	84H 			//00CF 	0084
		STR 	37H 			//00D0 	10B7
		LCALL 	134H 			//00D1 	3134
		MOVLP 	0H 			//00D2 	0180

		//;radio.c: 11: DelayMs(50);
		LDWI 	32H 			//00D3 	0032
		LCALL 	122H 			//00D4 	3122
		MOVLP 	0H 			//00D5 	0180

		//;radio.c: 14: UART_SendATCmd("AT+UART=3,0");
		LDWI 	B6H 			//00D6 	00B6
		STR 	36H 			//00D7 	10B6
		LDWI 	84H 			//00D8 	0084
		STR 	37H 			//00D9 	10B7
		LCALL 	134H 			//00DA 	3134
		MOVLP 	0H 			//00DB 	0180

		//;radio.c: 15: DelayMs(50);
		LDWI 	32H 			//00DC 	0032
		LCALL 	122H 			//00DD 	3122
		MOVLP 	0H 			//00DE 	0180

		//;radio.c: 18: UART_SendATCmd("AT+FEQ=434000000");
		LDWI 	90H 			//00DF 	0090
		STR 	36H 			//00E0 	10B6
		LDWI 	84H 			//00E1 	0084
		STR 	37H 			//00E2 	10B7
		LCALL 	134H 			//00E3 	3134
		MOVLP 	0H 			//00E4 	0180

		//;radio.c: 19: DelayMs(50);
		LDWI 	32H 			//00E5 	0032
		LCALL 	122H 			//00E6 	3122
		MOVLP 	0H 			//00E7 	0180

		//;radio.c: 22: UART_SendATCmd("AT+SF=10");
		LDWI 	EBH 			//00E8 	00EB
		STR 	36H 			//00E9 	10B6
		LDWI 	84H 			//00EA 	0084
		STR 	37H 			//00EB 	10B7
		LCALL 	134H 			//00EC 	3134
		MOVLP 	0H 			//00ED 	0180

		//;radio.c: 23: DelayMs(50);
		LDWI 	32H 			//00EE 	0032
		LCALL 	122H 			//00EF 	3122
		MOVLP 	0H 			//00F0 	0180

		//;radio.c: 26: UART_SendATCmd("AT+BW=9");
		LDWI 	FCH 			//00F1 	00FC
		STR 	36H 			//00F2 	10B6
		LDWI 	84H 			//00F3 	0084
		STR 	37H 			//00F4 	10B7
		LCALL 	134H 			//00F5 	3134
		MOVLP 	0H 			//00F6 	0180

		//;radio.c: 27: DelayMs(50);
		LDWI 	32H 			//00F7 	0032
		LCALL 	122H 			//00F8 	3122
		MOVLP 	0H 			//00F9 	0180

		//;radio.c: 30: UART_SendATCmd("AT+PB=2000");
		LDWI 	C2H 			//00FA 	00C2
		STR 	36H 			//00FB 	10B6
		LDWI 	84H 			//00FC 	0084
		STR 	37H 			//00FD 	10B7
		LCALL 	134H 			//00FE 	3134
		MOVLP 	0H 			//00FF 	0180

		//;radio.c: 31: DelayMs(50);
		LDWI 	32H 			//0100 	0032
		LCALL 	122H 			//0101 	3122
		MOVLP 	0H 			//0102 	0180

		//;radio.c: 33: UART_SendATCmd("AT+MODE=1");
		LDWI 	D7H 			//0103 	00D7
		STR 	36H 			//0104 	10B6
		LDWI 	84H 			//0105 	0084
		STR 	37H 			//0106 	10B7
		LCALL 	134H 			//0107 	3134
		MOVLP 	0H 			//0108 	0180

		//;radio.c: 34: DelayMs(50);
		LDWI 	32H 			//0109 	0032
		LCALL 	122H 			//010A 	3122
		MOVLP 	0H 			//010B 	0180

		//;radio.c: 36: UART_SendATCmd("AT+WT=2");
		LDWI 	F4H 			//010C 	00F4
		STR 	36H 			//010D 	10B6
		LDWI 	84H 			//010E 	0084
		STR 	37H 			//010F 	10B7
		LCALL 	134H 			//0110 	3134
		MOVLP 	0H 			//0111 	0180

		//;radio.c: 37: DelayMs(50);
		LDWI 	32H 			//0112 	0032
		LCALL 	122H 			//0113 	3122
		MOVLP 	0H 			//0114 	0180

		//;radio.c: 40: DelayMs(50);
		LDWI 	32H 			//0115 	0032
		LCALL 	122H 			//0116 	3122
		MOVLP 	0H 			//0117 	0180

		//;radio.c: 43: UART_SendATCmd("ATW");
		LDWI 	10H 			//0118 	0010
		STR 	36H 			//0119 	10B6
		LDWI 	85H 			//011A 	0085
		STR 	37H 			//011B 	10B7
		LCALL 	134H 			//011C 	3134
		MOVLP 	0H 			//011D 	0180

		//;radio.c: 44: DelayMs(50);
		LDWI 	32H 			//011E 	0032
		LCALL 	122H 			//011F 	3122
		MOVLP 	0H 			//0120 	0180

		//;radio.c: 48: Radio_Wake();
		LJUMP 	22CH 			//0121 	3A2C
		MOVLB 	1H 			//0122 	1021
		STR 	37H 			//0123 	10B7

		//;timer.c: 32: unsigned char a,b;
		//;timer.c: 33: for(a=0;a<Time;a++)
		CLRF 	38H 			//0124 	11B8
		LDR 	37H, 0H 			//0125 	1837
		SUBWR 	38H, 0H 		//0126 	1238
		BTSC 	3H, 0H 			//0127 	2803
		RET 					//0128 	1008

		//;timer.c: 34: {
		//;timer.c: 35: for(b=0;b<5;b++)
		CLRF 	39H 			//0129 	11B9

		//;timer.c: 36: {
		//;timer.c: 37: DelayUs(197);
		LDWI 	C5H 			//012A 	00C5
		LCALL 	170H 			//012B 	3170
		MOVLP 	0H 			//012C 	0180
		LDWI 	5H 			//012D 	0005
		INCR 	39H, 1H 		//012E 	1AB9
		SUBWR 	39H, 0H 		//012F 	1239
		BTSS 	3H, 0H 			//0130 	2C03
		LJUMP 	12AH 			//0131 	392A
		INCR 	38H, 1H 		//0132 	1AB8
		LJUMP 	125H 			//0133 	3925

		//;uart.c: 147: unsigned char j = 0;
		CLRF 	3BH 			//0134 	11BB

		//;uart.c: 148: while(cmd[j] != '\0') {
		LCALL 	259H 			//0135 	3259
		MOVLP 	0H 			//0136 	0180
		MOVIW 	FSR0++ 		//0137 	1012
		BTSC 	3H, 2H 			//0138 	2903
		LJUMP 	142H 			//0139 	3942

		//;uart.c: 149: UART_SendByte(cmd[j]);
		LCALL 	259H 			//013A 	3259
		MOVLP 	0H 			//013B 	0180
		LDR 	0H, 0H 			//013C 	1800
		LCALL 	165H 			//013D 	3165
		MOVLP 	0H 			//013E 	0180

		//;uart.c: 150: j++;
		MOVLB 	1H 			//013F 	1021
		INCR 	3BH, 1H 		//0140 	1ABB
		LJUMP 	135H 			//0141 	3935

		//;uart.c: 151: }
		//;uart.c: 152: UART_SendByte(0x0D);
		LDWI 	DH 			//0142 	000D
		LCALL 	165H 			//0143 	3165
		MOVLP 	0H 			//0144 	0180

		//;uart.c: 153: UART_SendByte(0x0A);
		LDWI 	AH 			//0145 	000A
		LJUMP 	165H 			//0146 	3965
		STR 	39H 			//0147 	10B9

		//;uart.c: 174: unsigned char i;
		//;uart.c: 175: UART_SendByte(0xFF);
		LDWI 	FFH 			//0148 	00FF
		LCALL 	165H 			//0149 	3165
		MOVLP 	0H 			//014A 	0180

		//;uart.c: 176: UART_SendByte(0xACu);
		LDWI 	ACH 			//014B 	00AC
		LCALL 	165H 			//014C 	3165
		MOVLP 	0H 			//014D 	0180

		//;uart.c: 177: UART_SendByte(func);
		MOVLB 	1H 			//014E 	1021
		LDR 	39H, 0H 			//014F 	1839
		LCALL 	165H 			//0150 	3165
		MOVLP 	0H 			//0151 	0180

		//;uart.c: 178: for(i = 0; i < len; i++) {
		MOVLB 	1H 			//0152 	1021
		CLRF 	3AH 			//0153 	11BA
		LDR 	37H, 0H 			//0154 	1837
		SUBWR 	3AH, 0H 		//0155 	123A
		BTSC 	3H, 0H 			//0156 	2803
		LJUMP 	163H 			//0157 	3963

		//;uart.c: 179: UART_SendByte(data[i]);
		LDR 	3AH, 0H 			//0158 	183A
		ADDWR 	36H, 0H 		//0159 	1736
		STR 	38H 			//015A 	10B8
		STR 	6H 			//015B 	1086
		CLRF 	7H 			//015C 	1187
		LDR 	1H, 0H 			//015D 	1801
		LCALL 	165H 			//015E 	3165
		MOVLP 	0H 			//015F 	0180
		MOVLB 	1H 			//0160 	1021
		INCR 	3AH, 1H 		//0161 	1ABA
		LJUMP 	154H 			//0162 	3954

		//;uart.c: 180: }
		//;uart.c: 181: UART_SendByte(0xFE);
		LDWI 	FEH 			//0163 	00FE
		LJUMP 	165H 			//0164 	3965
		MOVLB 	1H 			//0165 	1021
		STR 	35H 			//0166 	10B5

		//;uart.c: 136: TXEF = 0;
		MOVLB 	9H 			//0167 	1029
		BCR 	12H, 5H 			//0168 	2292

		//;uart.c: 137: URDATAL = data;
		MOVLB 	1H 			//0169 	1021
		LDR 	35H, 0H 			//016A 	1835
		MOVLB 	9H 			//016B 	1029
		STR 	CH 			//016C 	108C

		//;uart.c: 138: while(!TCF) {}
		BTSC 	1CH, 0H 		//016D 	281C
		RET 					//016E 	1008
		LJUMP 	16DH 			//016F 	396D
		STR 	35H 			//0170 	10B5

		//;timer.c: 18: unsigned char a;
		//;timer.c: 19: for(a=0;a<Time;a++)
		CLRF 	36H 			//0171 	11B6
		LDR 	35H, 0H 			//0172 	1835
		SUBWR 	36H, 0H 		//0173 	1236
		BTSC 	3H, 0H 			//0174 	2803
		RET 					//0175 	1008

		//;timer.c: 20: {
		//;timer.c: 21: __nop();
		NOP 					//0176 	1000
		MOVLB 	1H 			//0177 	1021
		INCR 	36H, 1H 		//0178 	1AB6
		LJUMP 	172H 			//0179 	3972
		STR 	40H 			//017A 	10C0

		//;app_fsm.c: 44: if(evt == EV_NONE) return;
		LDR 	40H, 0H 			//017B 	1840
		BTSC 	3H, 2H 			//017C 	2903
		RET 					//017D 	1008

		//;app_fsm.c: 46: for(int i=0; i<(sizeof(sys_fsm)/sizeof(FSM_Table)); i++) {
		CLRF 	41H 			//017E 	11C1
		CLRF 	42H 			//017F 	11C2

		//;app_fsm.c: 47: if(sys_fsm[i].cur == g_current_state && sys_fsm[i].evt == evt) {
		LCALL 	251H 			//0180 	3251
		MOVLP 	0H 			//0181 	0180
		LCALL 	1D0H 			//0182 	31D0
		MOVLP 	0H 			//0183 	0180
		LDR 	36H, 0H 			//0184 	1836
		STR 	5H 			//0185 	1085
		LDR 	35H, 0H 			//0186 	1835
		STR 	4H 			//0187 	1084
		LDWI 	63H 			//0188 	0063
		ADDWR 	4H, 1H 		//0189 	1784
		LDWI 	84H 			//018A 	0084
		ADDWFC 	5H, 1H 		//018B 	0D85
		LDR 	0H, 0H 			//018C 	1800
		XORWR 	34H, 0H 		//018D 	1634
		BTSS 	3H, 2H 			//018E 	2D03
		LJUMP 	1C5H 			//018F 	39C5
		LCALL 	251H 			//0190 	3251
		MOVLP 	0H 			//0191 	0180
		LCALL 	1D0H 			//0192 	31D0
		MOVLP 	0H 			//0193 	0180
		LDR 	36H, 0H 			//0194 	1836
		STR 	5H 			//0195 	1085
		LDR 	35H, 0H 			//0196 	1835
		STR 	4H 			//0197 	1084
		LDWI 	64H 			//0198 	0064
		ADDWR 	4H, 1H 		//0199 	1784
		LDWI 	84H 			//019A 	0084
		ADDWFC 	5H, 1H 		//019B 	0D85
		LDR 	0H, 0H 			//019C 	1800
		XORWR 	40H, 0H 		//019D 	1640
		BTSS 	3H, 2H 			//019E 	2D03
		LJUMP 	1C5H 			//019F 	39C5

		//;app_fsm.c: 48: if(sys_fsm[i].action) sys_fsm[i].action();
		LCALL 	251H 			//01A0 	3251
		MOVLP 	0H 			//01A1 	0180
		LCALL 	1D0H 			//01A2 	31D0
		MOVLP 	0H 			//01A3 	0180
		LCALL 	265H 			//01A4 	3265
		MOVLP 	0H 			//01A5 	0180
		MOVIW 	FSR0++ 		//01A6 	1012
		STR 	3EH 			//01A7 	10BE
		MOVIW 	FSR0++ 		//01A8 	1012
		IORWR 	3EH, 1H 		//01A9 	14BE
		BTSC 	3H, 2H 			//01AA 	2903
		LJUMP 	1B6H 			//01AB 	39B6
		LCALL 	251H 			//01AC 	3251
		MOVLP 	0H 			//01AD 	0180
		LCALL 	1D0H 			//01AE 	31D0
		MOVLP 	0H 			//01AF 	0180
		LCALL 	265H 			//01B0 	3265
		MOVIW 	1H[0] 			//01B1 	0F01
		STR 	AH 			//01B2 	108A
		MOVIW 	0H[0] 			//01B3 	0F00
		CALLW 					//01B4 	100A
		MOVLP 	1H 			//01B5 	0181

		//;app_fsm.c: 49: g_current_state = sys_fsm[i].next;
		MOVLB 	1H 			//01B6 	1021
		LCALL 	251H 			//01B7 	3251
		MOVLP 	0H 			//01B8 	0180
		LCALL 	1D0H 			//01B9 	31D0
		LDR 	36H, 0H 			//01BA 	1836
		STR 	5H 			//01BB 	1085
		LDR 	35H, 0H 			//01BC 	1835
		STR 	4H 			//01BD 	1084
		LDWI 	65H 			//01BE 	0065
		ADDWR 	4H, 1H 		//01BF 	1784
		LDWI 	84H 			//01C0 	0084
		ADDWFC 	5H, 1H 		//01C1 	0D85
		LDR 	0H, 0H 			//01C2 	1800
		STR 	34H 			//01C3 	10B4

		//;app_fsm.c: 50: break;
		RET 					//01C4 	1008
		INCR 	41H, 1H 		//01C5 	1AC1
		BTSC 	3H, 2H 			//01C6 	2903
		INCR 	42H, 1H 		//01C7 	1AC2
		LDWI 	0H 			//01C8 	0000
		SUBWR 	42H, 0H 		//01C9 	1242
		LDWI 	9H 			//01CA 	0009
		BTSC 	3H, 2H 			//01CB 	2903
		SUBWR 	41H, 0H 		//01CC 	1241
		BTSC 	3H, 0H 			//01CD 	2803
		RET 					//01CE 	1008
		LJUMP 	180H 			//01CF 	3980
		CLRF 	39H 			//01D0 	11B9
		CLRF 	3AH 			//01D1 	11BA
		BTSS 	35H, 0H 		//01D2 	2C35
		LJUMP 	1D8H 			//01D3 	39D8
		LDR 	37H, 0H 			//01D4 	1837
		ADDWR 	39H, 1H 		//01D5 	17B9
		LDR 	38H, 0H 			//01D6 	1838
		ADDWFC 	3AH, 1H 		//01D7 	0DBA
		LSLF 	37H, 1H 		//01D8 	05B7
		RLR 	38H, 1H 			//01D9 	1DB8
		LSRF 	36H, 1H 		//01DA 	06B6
		RRR 	35H, 1H 			//01DB 	1CB5
		LDR 	35H, 0H 			//01DC 	1835
		IORWR 	36H, 0H 		//01DD 	1436
		BTSS 	3H, 2H 			//01DE 	2D03
		LJUMP 	1D2H 			//01DF 	39D2
		LDR 	3AH, 0H 			//01E0 	183A
		STR 	36H 			//01E1 	10B6
		LDR 	39H, 0H 			//01E2 	1839
		STR 	35H 			//01E3 	10B5
		RET 					//01E4 	1008

		//;main.c: 43: OSCCON = 0B01110001;
		LDWI 	71H 			//01E5 	0071
		MOVLB 	1H 			//01E6 	1021
		STR 	19H 			//01E7 	1099

		//;main.c: 44: INTCON = 0B00000000;
		CLRF 	BH 			//01E8 	118B

		//;main.c: 47: PORTA = 0B00000000;
		MOVLB 	0H 			//01E9 	1020
		CLRF 	CH 			//01EA 	118C

		//;main.c: 48: TRISA = 0B10010000;
		LDWI 	90H 			//01EB 	0090
		MOVLB 	1H 			//01EC 	1021
		STR 	CH 			//01ED 	108C

		//;main.c: 49: PORTB = 0B00000000;
		MOVLB 	0H 			//01EE 	1020
		CLRF 	DH 			//01EF 	118D

		//;main.c: 50: TRISB = 0B10000101;
		LDWI 	85H 			//01F0 	0085
		MOVLB 	1H 			//01F1 	1021
		STR 	DH 			//01F2 	108D

		//;main.c: 51: PORTC = 0B00000000;
		MOVLB 	0H 			//01F3 	1020
		CLRF 	EH 			//01F4 	118E

		//;main.c: 52: TRISC = 0B00000000;
		MOVLB 	1H 			//01F5 	1021
		CLRF 	EH 			//01F6 	118E

		//;main.c: 55: WPUA = 0B00010000;
		LDWI 	10H 			//01F7 	0010
		MOVLB 	3H 			//01F8 	1023
		STR 	CH 			//01F9 	108C

		//;main.c: 56: WPUB = 0B10000101;
		LDWI 	85H 			//01FA 	0085
		STR 	DH 			//01FB 	108D

		//;main.c: 57: WPUC = 0B00000000;
		CLRF 	EH 			//01FC 	118E

		//;main.c: 60: WPDA = 0B00000000;
		MOVLB 	4H 			//01FD 	1024
		CLRF 	CH 			//01FE 	118C

		//;main.c: 61: WPDB = 0B00000000;
		CLRF 	DH 			//01FF 	118D

		//;main.c: 62: WPDC = 0B00000000;
		CLRF 	EH 			//0200 	118E

		//;main.c: 65: PSRC0 = 0B11111111;
		LDWI 	FFH 			//0201 	00FF
		MOVLB 	2H 			//0202 	1022
		STR 	1AH 			//0203 	109A

		//;main.c: 66: PSRC1 = 0B11111111;
		STR 	1BH 			//0204 	109B

		//;main.c: 67: PSRC2 = 0B11111111;
		STR 	1CH 			//0205 	109C

		//;main.c: 70: PSINK0 = 0B11111111;
		MOVLB 	3H 			//0206 	1023
		STR 	1AH 			//0207 	109A

		//;main.c: 71: PSINK1 = 0B11111111;
		STR 	1BH 			//0208 	109B

		//;main.c: 72: PSINK2 = 0B11111111;
		STR 	1CH 			//0209 	109C

		//;main.c: 74: ANSELA = 0B00000000;
		CLRF 	17H 			//020A 	1197
		RET 					//020B 	1008

		//;timer.c: 49: PCKEN |= 0B00001000;
		MOVLB 	1H 			//020C 	1021
		BSR 	1AH, 3H 			//020D 	259A

		//;timer.c: 50: TIM4CR1 = 0B00000101;
		LDWI 	5H 			//020E 	0005
		MOVLB 	2H 			//020F 	1022
		STR 	11H 			//0210 	1091

		//;timer.c: 51: TIM4IER = 0B00000001;
		LDWI 	1H 			//0211 	0001
		STR 	12H 			//0212 	1092

		//;timer.c: 52: TIM4SR = 0;
		CLRF 	13H 			//0213 	1193

		//;timer.c: 53: TIM4EGR = 0;
		CLRF 	14H 			//0214 	1194

		//;timer.c: 54: TIM4CNTR = 0;
		CLRF 	15H 			//0215 	1195

		//;timer.c: 55: TIM4PSCR = 6;
		LDWI 	6H 			//0216 	0006
		STR 	16H 			//0217 	1096

		//;timer.c: 56: TIM4ARR = 249;
		LDWI 	F9H 			//0218 	00F9
		STR 	17H 			//0219 	1097
		RET 					//021A 	1008

		//;uart.c: 34: PCKEN |= 0B00100000;
		MOVLB 	1H 			//021B 	1021
		BSR 	1AH, 5H 			//021C 	269A

		//;uart.c: 35: URIER = 0B00000001;
		LDWI 	1H 			//021D 	0001
		MOVLB 	9H 			//021E 	1029
		STR 	EH 			//021F 	108E

		//;uart.c: 36: URLCR = 0B00000001;
		STR 	FH 			//0220 	108F

		//;uart.c: 37: URMCR = 0B00011000;
		LDWI 	18H 			//0221 	0018
		STR 	11H 			//0222 	1091

		//;uart.c: 38: URDLL = 104;
		LDWI 	68H 			//0223 	0068
		STR 	14H 			//0224 	1094

		//;uart.c: 39: URDLH = 0;
		CLRF 	15H 			//0225 	1195

		//;uart.c: 40: TCF = 1;
		BSR 	1CH, 0H 			//0226 	241C

		//;uart.c: 41: AFP1 = 0;
		MOVLB 	3H 			//0227 	1023
		CLRF 	1FH 			//0228 	119F

		//;uart.c: 42: ODCON0 = 0B00000000;
		MOVLB 	4H 			//0229 	1024
		CLRF 	1FH 			//022A 	119F
		RET 					//022B 	1008

		//;radio.c: 66: do { PC1 = 0; } while(0);
		MOVLB 	0H 			//022C 	1020
		BCR 	EH, 1H 			//022D 	208E
		RET 					//022E 	1008
		MOVLB 	1H 			//022F 	1021
		STR 	35H 			//0230 	10B5

		//;app_fsm.c: 40: g_system_evt = evt;
		STR 	45H 			//0231 	10C5
		RET 					//0232 	1008
		MOVLB 	0H 			//0233 	1020
		CLRF 	56H 			//0234 	11D6
		CLRF 	57H 			//0235 	11D7
		RET 					//0236 	1008
		LCALL 	23EH 			//0237 	323E
		MOVLP 	0H 			//0238 	0180
		MOVLB 	1H 			//0239 	1021
		LDR 	44H, 0H 			//023A 	1844
		LCALL 	242H 			//023B 	3242
		MOVLP 	0H 			//023C 	0180
		LJUMP 	93H 			//023D 	3893

		//;motor.c: 50: PORTBbits.PB1 = 0;
		MOVLB 	0H 			//023E 	1020
		BCR 	DH, 1H 			//023F 	208D

		//;motor.c: 52: s_motor_state = MOTOR_IDLE;
		BCR 	CH, 0H 			//0240 	200C
		RET 					//0241 	1008
		STR 	3BH 			//0242 	10BB

		//;uart.c: 200: unsigned char data[2];
		//;uart.c: 201: data[0] = 0x00;
		CLRF 	3CH 			//0243 	11BC

		//;uart.c: 202: data[1] = is_open ? 0x01 : 0x00;
		LDR 	3BH, 0H 			//0244 	183B
		BTSC 	3H, 2H 			//0245 	2903
		LJUMP 	249H 			//0246 	3A49
		LDWI 	1H 			//0247 	0001
		LJUMP 	24AH 			//0248 	3A4A
		LDWI 	0H 			//0249 	0000
		STR 	3DH 			//024A 	10BD

		//;uart.c: 203: UART_SendFrame(0x03u, data, 2);
		LDWI 	BCH 			//024B 	00BC
		STR 	36H 			//024C 	10B6
		LDWI 	2H 			//024D 	0002
		STR 	37H 			//024E 	10B7
		LDWI 	3H 			//024F 	0003
		LJUMP 	147H 			//0250 	3947
		LDR 	42H, 0H 			//0251 	1842
		STR 	36H 			//0252 	10B6
		LDR 	41H, 0H 			//0253 	1841
		STR 	35H 			//0254 	10B5
		LDWI 	5H 			//0255 	0005
		STR 	37H 			//0256 	10B7
		CLRF 	38H 			//0257 	11B8
		RET 					//0258 	1008
		LDR 	37H, 0H 			//0259 	1837
		STR 	39H 			//025A 	10B9
		LDR 	36H, 0H 			//025B 	1836
		STR 	38H 			//025C 	10B8
		LDR 	3BH, 0H 			//025D 	183B
		ADDWR 	38H, 0H 		//025E 	1738
		STR 	4H 			//025F 	1084
		LDR 	39H, 0H 			//0260 	1839
		BTSC 	3H, 0H 			//0261 	2803
		INCR 	39H, 0H 		//0262 	1A39
		STR 	5H 			//0263 	1085
		RET 					//0264 	1008
		LDR 	36H, 0H 			//0265 	1836
		STR 	5H 			//0266 	1085
		LDR 	35H, 0H 			//0267 	1835
		STR 	4H 			//0268 	1084
		LDWI 	66H 			//0269 	0066
		ADDWR 	4H, 1H 		//026A 	1784
		LDWI 	84H 			//026B 	0084
		ADDWFC 	5H, 1H 		//026C 	0D85
		RET 					//026D 	1008

		//;uart.c: 54: static ParserState ps = WAIT_HDR;
		//;uart.c: 55: static unsigned char rx_buf[8];
		//;uart.c: 56: static unsigned char data_idx = 0;
		//;uart.c: 57: static unsigned char data_len = 0;
		//;uart.c: 59: if(URRXNE && RXNEF) {
		BTSC 	EH, 0H 			//026E 	280E
		BTSS 	12H, 0H 		//026F 	2C12
		RET 					//0270 	1008

		//;uart.c: 60: unsigned char b = URDATAL;
		LDR 	CH, 0H 			//0271 	180C
		MOVLB 	0H 			//0272 	1020
		STR 	43H 			//0273 	10C3

		//;uart.c: 62: switch(ps) {
		LJUMP 	2F3H 			//0274 	3AF3

		//;uart.c: 64: if(b == 0xFF) { ps = RX_SRC; }
		INCRSZ 	43H, 0H 		//0275 	1F43
		RET 					//0276 	1008
		CLRF 	5AH 			//0277 	11DA
		INCR 	5AH, 1H 		//0278 	1ADA
		RET 					//0279 	1008

		//;uart.c: 68: if(b == 0xABu) { ps = WAIT_HDR; break; }
		LDWI 	ABH 			//027A 	00AB
		XORWR 	43H, 0H 		//027B 	1643
		BTSS 	3H, 2H 			//027C 	2D03
		LJUMP 	281H 			//027D 	3A81
		MOVLB 	0H 			//027E 	1020
		CLRF 	5AH 			//027F 	11DA
		RET 					//0280 	1008

		//;uart.c: 69: rx_buf[0] = b;
		LDR 	43H, 0H 			//0281 	1843
		STR 	44H 			//0282 	10C4

		//;uart.c: 70: ps = RX_FUNC;
		LDWI 	2H 			//0283 	0002
		STR 	5AH 			//0284 	10DA

		//;uart.c: 71: break;
		RET 					//0285 	1008

		//;uart.c: 74: data_len = func_data_len(b);
		LDR 	43H, 0H 			//0286 	1843
		LCALL 	40FH 			//0287 	340F
		MOVLP 	2H 			//0288 	0182
		STR 	58H 			//0289 	10D8

		//;uart.c: 75: if(data_len == 0xFF) { ps = WAIT_HDR; break; }
		INCRSZ 	58H, 0H 		//028A 	1F58
		LJUMP 	28DH 			//028B 	3A8D
		LJUMP 	27EH 			//028C 	3A7E

		//;uart.c: 76: rx_buf[1] = b;
		LDR 	43H, 0H 			//028D 	1843
		STR 	45H 			//028E 	10C5

		//;uart.c: 77: data_idx = 0;
		CLRF 	59H 			//028F 	11D9

		//;uart.c: 78: ps = (data_len > 0) ? RX_DATA : RX_TAIL;
		LDR 	58H, 0H 			//0290 	1858
		BTSS 	3H, 2H 			//0291 	2D03
		LJUMP 	295H 			//0292 	3A95
		LDWI 	4H 			//0293 	0004
		LJUMP 	296H 			//0294 	3A96
		LDWI 	3H 			//0295 	0003
		STR 	3EH 			//0296 	10BE
		CLRF 	3FH 			//0297 	11BF
		STR 	5AH 			//0298 	10DA

		//;uart.c: 79: break;
		RET 					//0299 	1008

		//;uart.c: 82: rx_buf[2 + data_idx] = b;
		LDR 	59H, 0H 			//029A 	1859
		ADDWI 	46H 			//029B 	0E46
		STR 	6H 			//029C 	1086
		CLRF 	7H 			//029D 	1187
		LDR 	43H, 0H 			//029E 	1843
		STR 	1H 			//029F 	1081

		//;uart.c: 83: if(++data_idx >= data_len) { ps = RX_TAIL; }
		LDR 	58H, 0H 			//02A0 	1858
		INCR 	59H, 1H 		//02A1 	1AD9
		SUBWR 	59H, 0H 		//02A2 	1259
		BTSS 	3H, 0H 			//02A3 	2C03
		RET 					//02A4 	1008
		LDWI 	4H 			//02A5 	0004
		STR 	5AH 			//02A6 	10DA
		RET 					//02A7 	1008

		//;uart.c: 87: if(b == 0xFE) {
		LDWI 	FEH 			//02A8 	00FE
		XORWR 	43H, 0H 		//02A9 	1643
		BTSS 	3H, 2H 			//02AA 	2D03
		LJUMP 	27EH 			//02AB 	3A7E

		//;uart.c: 89: if(rx_buf[1] == 0x03u) {
		LDWI 	3H 			//02AC 	0003
		XORWR 	45H, 0H 		//02AD 	1645
		BTSS 	3H, 2H 			//02AE 	2D03
		LJUMP 	2C3H 			//02AF 	3AC3

		//;uart.c: 91: if(rx_buf[2] == 0x00 && rx_buf[3] == 0x01)
		LDR 	46H, 0H 			//02B0 	1846
		BTSS 	3H, 2H 			//02B1 	2D03
		LJUMP 	2B9H 			//02B2 	3AB9
		DECRSZ 	47H, 0H 		//02B3 	1B47
		LJUMP 	2B9H 			//02B4 	3AB9

		//;uart.c: 92: FSM_SendEvent(EV_CMD_OPEN);
		LDWI 	6H 			//02B5 	0006
		LCALL 	35AH 			//02B6 	335A
		MOVLP 	2H 			//02B7 	0182
		LJUMP 	27EH 			//02B8 	3A7E

		//;uart.c: 93: else if(rx_buf[2] == 0x00 && rx_buf[3] == 0x00)
		LDR 	46H, 0H 			//02B9 	1846
		BTSS 	3H, 2H 			//02BA 	2D03
		LJUMP 	27EH 			//02BB 	3A7E
		LDR 	47H, 0H 			//02BC 	1847
		BTSS 	3H, 2H 			//02BD 	2D03
		LJUMP 	27EH 			//02BE 	3A7E

		//;uart.c: 94: FSM_SendEvent(EV_CMD_CLOSE);
		LDWI 	7H 			//02BF 	0007
		LCALL 	35AH 			//02C0 	335A
		MOVLP 	2H 			//02C1 	0182
		LJUMP 	27EH 			//02C2 	3A7E

		//;uart.c: 96: else if(rx_buf[1] == 0x01u && g_current_state == ST_PAIRING) {
		DECRSZ 	45H, 0H 		//02C3 	1B45
		LJUMP 	27EH 			//02C4 	3A7E
		LDWI 	2H 			//02C5 	0002
		MOVLB 	1H 			//02C6 	1021
		XORWR 	34H, 0H 		//02C7 	1634
		BTSS 	3H, 2H 			//02C8 	2D03
		LJUMP 	27EH 			//02C9 	3A7E

		//;uart.c: 98: unsigned int addr = 0;
		MOVLB 	0H 			//02CA 	1020
		CLRF 	40H 			//02CB 	11C0
		CLRF 	41H 			//02CC 	11C1

		//;uart.c: 99: unsigned char i;
		//;uart.c: 100: for(i = 0; i < 5; i++) {
		CLRF 	42H 			//02CD 	11C2

		//;uart.c: 101: addr = addr * 10 + rx_buf[2 + i];
		LDR 	42H, 0H 			//02CE 	1842
		ADDWI 	46H 			//02CF 	0E46
		STR 	6H 			//02D0 	1086
		CLRF 	7H 			//02D1 	1187
		LDR 	1H, 0H 			//02D2 	1801
		STR 	3CH 			//02D3 	10BC
		CLRF 	3DH 			//02D4 	11BD
		LDR 	41H, 0H 			//02D5 	1841
		STR 	71H 			//02D6 	10F1
		LDR 	40H, 0H 			//02D7 	1840
		STR 	70H 			//02D8 	10F0
		LDWI 	AH 			//02D9 	000A
		STR 	72H 			//02DA 	10F2
		CLRF 	73H 			//02DB 	11F3
		LCALL 	421H 			//02DC 	3421
		MOVLP 	2H 			//02DD 	0182
		LDR 	3CH, 0H 			//02DE 	183C
		ADDWR 	70H, 0H 		//02DF 	1770
		STR 	40H 			//02E0 	10C0
		LDR 	3DH, 0H 			//02E1 	183D
		ADDWFC 	71H, 0H 		//02E2 	0D71
		STR 	41H 			//02E3 	10C1
		LDWI 	5H 			//02E4 	0005
		INCR 	42H, 1H 		//02E5 	1AC2
		SUBWR 	42H, 0H 		//02E6 	1242
		BTSS 	3H, 0H 			//02E7 	2C03
		LJUMP 	2CEH 			//02E8 	3ACE

		//;uart.c: 102: }
		//;uart.c: 103: UART_SendATCmd_ADR(addr);
		LDR 	41H, 0H 			//02E9 	1841
		STR 	7CH 			//02EA 	10FC
		LDR 	40H, 0H 			//02EB 	1840
		STR 	7BH 			//02EC 	10FB
		LCALL 	35EH 			//02ED 	335E
		MOVLP 	2H 			//02EE 	0182

		//;uart.c: 104: FSM_SendEvent(EV_PAIR_SUCCESS);
		LDWI 	4H 			//02EF 	0004
		LCALL 	35AH 			//02F0 	335A
		MOVLP 	2H 			//02F1 	0182
		LJUMP 	27EH 			//02F2 	3A7E
		LDR 	5AH, 0H 			//02F3 	185A
		STR 	4H 			//02F4 	1084
		LDWI 	5H 			//02F5 	0005
		SUBWR 	4H, 0H 		//02F6 	1204
		BTSC 	3H, 0H 			//02F7 	2803
		LJUMP 	27EH 			//02F8 	3A7E
		MOVLP 	4H 			//02F9 	0184
		LSLF 	4H, 0H 			//02FA 	0504
		ADDWI 	E1H 			//02FB 	0EE1
		STR 	2H 			//02FC 	1082
		RET 					//02FD 	1008

		//;timer.c: 68: g_timer_count++;
		MOVLB 	0H 			//02FE 	1020
		INCR 	56H, 1H 		//02FF 	1AD6
		BTSC 	3H, 2H 			//0300 	2903
		INCR 	57H, 1H 		//0301 	1AD7

		//;timer.c: 71: if(g_timer_count >= 10000) {
		LDWI 	27H 			//0302 	0027
		SUBWR 	57H, 0H 		//0303 	1257
		LDWI 	10H 			//0304 	0010
		BTSC 	3H, 2H 			//0305 	2903
		SUBWR 	56H, 0H 		//0306 	1256
		BTSS 	3H, 0H 			//0307 	2C03
		LJUMP 	30FH 			//0308 	3B0F

		//;timer.c: 72: FSM_SendEvent(EV_TIMEOUT);
		LDWI 	2H 			//0309 	0002
		LCALL 	35AH 			//030A 	335A
		MOVLP 	2H 			//030B 	0182

		//;timer.c: 73: g_timer_count = 0;
		MOVLB 	0H 			//030C 	1020
		CLRF 	56H 			//030D 	11D6
		CLRF 	57H 			//030E 	11D7

		//;timer.c: 74: }
		//;timer.c: 77: if(PORTBbits.PB7 == 0) {
		BTSC 	DH, 7H 			//030F 	2B8D
		LJUMP 	31FH 			//0310 	3B1F

		//;timer.c: 78: key_press_cnt++;
		INCR 	54H, 1H 		//0311 	1AD4
		BTSC 	3H, 2H 			//0312 	2903
		INCR 	55H, 1H 		//0313 	1AD5

		//;timer.c: 79: if(key_press_cnt == 2000) {
		LDWI 	D0H 			//0314 	00D0
		XORWR 	54H, 0H 		//0315 	1654
		LDWI 	7H 			//0316 	0007
		BTSC 	3H, 2H 			//0317 	2903
		XORWR 	55H, 0H 		//0318 	1655

		//;timer.c: 80: FSM_SendEvent(EV_LONG_PRESS);
		LDWI 	3H 			//0319 	0003
		BTSS 	3H, 2H 			//031A 	2D03
		LJUMP 	322H 			//031B 	3B22
		LCALL 	35AH 			//031C 	335A
		MOVLP 	2H 			//031D 	0182
		LJUMP 	321H 			//031E 	3B21

		//;timer.c: 83: key_press_cnt = 0;
		CLRF 	54H 			//031F 	11D4
		CLRF 	55H 			//0320 	11D5

		//;timer.c: 84: }
		//;timer.c: 87: if(g_current_state == ST_MOTOR_RUNNING) {
		LDWI 	3H 			//0321 	0003
		MOVLB 	1H 			//0322 	1021
		XORWR 	34H, 0H 		//0323 	1634
		BTSS 	3H, 2H 			//0324 	2D03
		LJUMP 	33CH 			//0325 	3B3C

		//;timer.c: 88: if(PORTBbits.PB2 == 0 || PORTBbits.PB0 == 0) {
		MOVLB 	0H 			//0326 	1020
		BTSS 	DH, 2H 			//0327 	2D0D
		LJUMP 	32BH 			//0328 	3B2B
		BTSC 	DH, 0H 			//0329 	280D
		LJUMP 	32EH 			//032A 	3B2E

		//;timer.c: 89: FSM_SendEvent(EV_LIMIT_HIT);
		LDWI 	8H 			//032B 	0008
		LCALL 	35AH 			//032C 	335A
		MOVLP 	2H 			//032D 	0182

		//;timer.c: 90: }
		//;timer.c: 92: if(g_timer_count >= 5000) {
		LDWI 	13H 			//032E 	0013
		MOVLB 	0H 			//032F 	1020
		SUBWR 	57H, 0H 		//0330 	1257
		LDWI 	88H 			//0331 	0088
		BTSC 	3H, 2H 			//0332 	2903
		SUBWR 	56H, 0H 		//0333 	1256

		//;timer.c: 93: FSM_SendEvent(EV_TIMEOUT);
		LDWI 	2H 			//0334 	0002
		BTSS 	3H, 0H 			//0335 	2C03
		LJUMP 	33DH 			//0336 	3B3D
		LCALL 	35AH 			//0337 	335A
		MOVLP 	2H 			//0338 	0182

		//;timer.c: 94: g_timer_count = 0;
		MOVLB 	0H 			//0339 	1020
		CLRF 	56H 			//033A 	11D6
		CLRF 	57H 			//033B 	11D7

		//;timer.c: 95: }
		//;timer.c: 96: }
		//;timer.c: 99: if(g_current_state == ST_PAIRING) {
		LDWI 	2H 			//033C 	0002
		MOVLB 	1H 			//033D 	1021
		XORWR 	34H, 0H 		//033E 	1634
		BTSS 	3H, 2H 			//033F 	2D03
		LJUMP 	356H 			//0340 	3B56

		//;timer.c: 100: led_blink_cnt++;
		MOVLB 	0H 			//0341 	1020
		INCR 	52H, 1H 		//0342 	1AD2
		BTSC 	3H, 2H 			//0343 	2903
		INCR 	53H, 1H 		//0344 	1AD3

		//;timer.c: 101: if(led_blink_cnt >= 500) {
		LDWI 	1H 			//0345 	0001
		SUBWR 	53H, 0H 		//0346 	1253
		LDWI 	F4H 			//0347 	00F4
		BTSC 	3H, 2H 			//0348 	2903
		SUBWR 	52H, 0H 		//0349 	1252
		BTSS 	3H, 0H 			//034A 	2C03
		RET 					//034B 	1008

		//;timer.c: 102: PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1);
		BCR 	3H, 0H 			//034C 	2003
		BTSS 	CH, 1H 			//034D 	2C8C
		BSR 	3H, 0H 			//034E 	2403
		BTSS 	3H, 0H 			//034F 	2C03
		LJUMP 	354H 			//0350 	3B54
		MOVLB 	0H 			//0351 	1020
		BSR 	CH, 1H 			//0352 	248C
		LJUMP 	356H 			//0353 	3B56
		MOVLB 	0H 			//0354 	1020
		BCR 	CH, 1H 			//0355 	208C

		//;timer.c: 103: led_blink_cnt = 0;
		MOVLB 	0H 			//0356 	1020
		CLRF 	52H 			//0357 	11D2
		CLRF 	53H 			//0358 	11D3
		RET 					//0359 	1008
		STR 	70H 			//035A 	10F0

		//;app_fsm.c: 40: g_system_evt = evt;
		MOVLB 	1H 			//035B 	1021
		STR 	45H 			//035C 	10C5
		RET 					//035D 	1008

		//;uart.c: 162: char buf[20] = "AT+ADR=";
		LDWI 	A0H 			//035E 	00A0
		STR 	6H 			//035F 	1086
		LDWI 	0H 			//0360 	0000
		STR 	7H 			//0361 	1087
		LDWI 	28H 			//0362 	0028
		STR 	4H 			//0363 	1084
		LDWI 	0H 			//0364 	0000
		STR 	5H 			//0365 	1085
		LDWI 	14H 			//0366 	0014
		STR 	7DH 			//0367 	10FD
		MOVIW 	FSR1++ 		//0368 	1016
		MOVWI 	FSR0++ 		//0369 	101A
		DECRSZ 	7DH, 1H 		//036A 	1BFD
		LJUMP 	368H 			//036B 	3B68

		//;uart.c: 163: uint_to_str(addr, buf + 7);
		LDR 	7CH, 0H 			//036C 	187C
		STR 	78H 			//036D 	10F8
		LDR 	7BH, 0H 			//036E 	187B
		STR 	77H 			//036F 	10F7
		LDWI 	2FH 			//0370 	002F
		STR 	79H 			//0371 	10F9
		LCALL 	37AH 			//0372 	337A
		MOVLP 	2H 			//0373 	0182

		//;uart.c: 164: UART_SendATCmd(buf);
		LDWI 	28H 			//0374 	0028
		STR 	71H 			//0375 	10F1
		LDWI 	0H 			//0376 	0000
		STR 	72H 			//0377 	10F2
		LCALL 	436H 			//0378 	3436
		RET 					//0379 	1008

		//;uart.c: 122: char tmp[6] = {0};
		LDWI 	4CH 			//037A 	004C
		STR 	6H 			//037B 	1086
		LDWI 	0H 			//037C 	0000
		STR 	7H 			//037D 	1087
		LDWI 	20H 			//037E 	0020
		STR 	4H 			//037F 	1084
		LDWI 	0H 			//0380 	0000
		STR 	5H 			//0381 	1085
		LDWI 	6H 			//0382 	0006
		STR 	7AH 			//0383 	10FA
		MOVIW 	FSR1++ 		//0384 	1016
		MOVWI 	FSR0++ 		//0385 	101A
		DECRSZ 	7AH, 1H 		//0386 	1BFA
		LJUMP 	384H 			//0387 	3B84

		//;uart.c: 123: unsigned char i = 0, j = 0;
		CLRF 	27H 			//0388 	11A7
		CLRF 	26H 			//0389 	11A6

		//;uart.c: 124: if(val == 0) { buf[0] = '0'; buf[1] = '\0'; return 1; }
		LDR 	77H, 0H 			//038A 	1877
		IORWR 	78H, 0H 		//038B 	1478
		BTSS 	3H, 2H 			//038C 	2D03
		LJUMP 	3B5H 			//038D 	3BB5
		LDR 	79H, 0H 			//038E 	1879
		STR 	6H 			//038F 	1086
		LDWI 	30H 			//0390 	0030
		CLRF 	7H 			//0391 	1187
		STR 	1H 			//0392 	1081
		INCR 	79H, 0H 		//0393 	1A79
		STR 	6H 			//0394 	1086
		CLRF 	1H 			//0395 	1181
		RET 					//0396 	1008
		LDR 	27H, 0H 			//0397 	1827
		ADDWI 	20H 			//0398 	0E20
		STR 	6H 			//0399 	1086
		LDWI 	AH 			//039A 	000A
		CLRF 	7H 			//039B 	1187
		STR 	70H 			//039C 	10F0
		CLRF 	71H 			//039D 	11F1
		LDR 	78H, 0H 			//039E 	1878
		STR 	73H 			//039F 	10F3
		LDR 	77H, 0H 			//03A0 	1877
		STR 	72H 			//03A1 	10F2
		LCALL 	3EFH 			//03A2 	33EF
		MOVLP 	2H 			//03A3 	0182
		LDR 	70H, 0H 			//03A4 	1870
		ADDWI 	30H 			//03A5 	0E30
		STR 	1H 			//03A6 	1081
		LDWI 	AH 			//03A7 	000A
		INCR 	27H, 1H 		//03A8 	1AA7
		STR 	70H 			//03A9 	10F0
		CLRF 	71H 			//03AA 	11F1
		LDR 	78H, 0H 			//03AB 	1878
		STR 	73H 			//03AC 	10F3
		LDR 	77H, 0H 			//03AD 	1877
		STR 	72H 			//03AE 	10F2
		LCALL 	3CAH 			//03AF 	33CA
		MOVLP 	2H 			//03B0 	0182
		LDR 	71H, 0H 			//03B1 	1871
		STR 	78H 			//03B2 	10F8
		LDR 	70H, 0H 			//03B3 	1870
		STR 	77H 			//03B4 	10F7
		LDR 	77H, 0H 			//03B5 	1877
		IORWR 	78H, 0H 		//03B6 	1478
		BTSC 	3H, 2H 			//03B7 	2903
		LJUMP 	3C4H 			//03B8 	3BC4
		LJUMP 	397H 			//03B9 	3B97
		LCALL 	45DH 			//03BA 	345D
		MOVLP 	2H 			//03BB 	0182
		DECR 	27H, 1H 		//03BC 	13A7
		LDR 	27H, 0H 			//03BD 	1827
		ADDWI 	20H 			//03BE 	0E20
		STR 	4H 			//03BF 	1084
		CLRF 	5H 			//03C0 	1185
		LDR 	0H, 0H 			//03C1 	1800
		STR 	1H 			//03C2 	1081
		INCR 	26H, 1H 		//03C3 	1AA6
		LDR 	27H, 0H 			//03C4 	1827
		BTSS 	3H, 2H 			//03C5 	2D03
		LJUMP 	3BAH 			//03C6 	3BBA

		//;uart.c: 127: buf[j] = '\0';
		LCALL 	45DH 			//03C7 	345D
		CLRF 	1H 			//03C8 	1181
		RET 					//03C9 	1008
		CLRF 	74H 			//03CA 	11F4
		CLRF 	75H 			//03CB 	11F5
		LDR 	70H, 0H 			//03CC 	1870
		IORWR 	71H, 0H 		//03CD 	1471
		BTSC 	3H, 2H 			//03CE 	2903
		LJUMP 	3EAH 			//03CF 	3BEA
		CLRF 	76H 			//03D0 	11F6
		INCR 	76H, 1H 		//03D1 	1AF6
		BTSC 	71H, 7H 		//03D2 	2BF1
		LJUMP 	3D7H 			//03D3 	3BD7
		LSLF 	70H, 1H 		//03D4 	05F0
		RLR 	71H, 1H 			//03D5 	1DF1
		LJUMP 	3D1H 			//03D6 	3BD1
		LSLF 	74H, 1H 		//03D7 	05F4
		RLR 	75H, 1H 			//03D8 	1DF5
		LDR 	71H, 0H 			//03D9 	1871
		SUBWR 	73H, 0H 		//03DA 	1273
		BTSS 	3H, 2H 			//03DB 	2D03
		LJUMP 	3DFH 			//03DC 	3BDF
		LDR 	70H, 0H 			//03DD 	1870
		SUBWR 	72H, 0H 		//03DE 	1272
		BTSS 	3H, 0H 			//03DF 	2C03
		LJUMP 	3E6H 			//03E0 	3BE6
		LDR 	70H, 0H 			//03E1 	1870
		SUBWR 	72H, 1H 		//03E2 	12F2
		LDR 	71H, 0H 			//03E3 	1871
		SUBWFB 	73H, 1H 		//03E4 	0BF3
		BSR 	74H, 0H 			//03E5 	2474
		LSRF 	71H, 1H 		//03E6 	06F1
		RRR 	70H, 1H 			//03E7 	1CF0
		DECRSZ 	76H, 1H 		//03E8 	1BF6
		LJUMP 	3D7H 			//03E9 	3BD7
		LDR 	75H, 0H 			//03EA 	1875
		STR 	71H 			//03EB 	10F1
		LDR 	74H, 0H 			//03EC 	1874
		STR 	70H 			//03ED 	10F0
		RET 					//03EE 	1008
		LDR 	70H, 0H 			//03EF 	1870
		IORWR 	71H, 0H 		//03F0 	1471
		BTSC 	3H, 2H 			//03F1 	2903
		LJUMP 	40AH 			//03F2 	3C0A
		CLRF 	74H 			//03F3 	11F4
		INCR 	74H, 1H 		//03F4 	1AF4
		BTSC 	71H, 7H 		//03F5 	2BF1
		LJUMP 	3FAH 			//03F6 	3BFA
		LSLF 	70H, 1H 		//03F7 	05F0
		RLR 	71H, 1H 			//03F8 	1DF1
		LJUMP 	3F4H 			//03F9 	3BF4
		LDR 	71H, 0H 			//03FA 	1871
		SUBWR 	73H, 0H 		//03FB 	1273
		BTSS 	3H, 2H 			//03FC 	2D03
		LJUMP 	400H 			//03FD 	3C00
		LDR 	70H, 0H 			//03FE 	1870
		SUBWR 	72H, 0H 		//03FF 	1272
		BTSS 	3H, 0H 			//0400 	2C03
		LJUMP 	406H 			//0401 	3C06
		LDR 	70H, 0H 			//0402 	1870
		SUBWR 	72H, 1H 		//0403 	12F2
		LDR 	71H, 0H 			//0404 	1871
		SUBWFB 	73H, 1H 		//0405 	0BF3
		LSRF 	71H, 1H 		//0406 	06F1
		RRR 	70H, 1H 			//0407 	1CF0
		DECRSZ 	74H, 1H 		//0408 	1BF4
		LJUMP 	3FAH 			//0409 	3BFA
		LDR 	73H, 0H 			//040A 	1873
		STR 	71H 			//040B 	10F1
		LDR 	72H, 0H 			//040C 	1872
		STR 	70H 			//040D 	10F0
		RET 					//040E 	1008
		STR 	70H 			//040F 	10F0

		//;uart.c: 20: switch(func) {
		LJUMP 	415H 			//0410 	3C15
		RETW 	5H 			//0411 	0405
		RETW 	2H 			//0412 	0402
		RETW 	1H 			//0413 	0401
		RETW 	FFH 			//0414 	04FF
		LDR 	70H, 0H 			//0415 	1870
		XORWI 	1H 			//0416 	0A01
		BTSC 	3H, 2H 			//0417 	2903
		LJUMP 	411H 			//0418 	3C11
		XORWI 	2H 			//0419 	0A02
		BTSC 	3H, 2H 			//041A 	2903
		LJUMP 	412H 			//041B 	3C12
		XORWI 	7H 			//041C 	0A07
		BTSC 	3H, 2H 			//041D 	2903
		LJUMP 	413H 			//041E 	3C13
		LJUMP 	414H 			//041F 	3C14
		RET 					//0420 	1008
		CLRF 	74H 			//0421 	11F4
		CLRF 	75H 			//0422 	11F5
		BTSS 	70H, 0H 		//0423 	2C70
		LJUMP 	429H 			//0424 	3C29
		LDR 	72H, 0H 			//0425 	1872
		ADDWR 	74H, 1H 		//0426 	17F4
		LDR 	73H, 0H 			//0427 	1873
		ADDWFC 	75H, 1H 		//0428 	0DF5
		LSLF 	72H, 1H 		//0429 	05F2
		RLR 	73H, 1H 			//042A 	1DF3
		LSRF 	71H, 1H 		//042B 	06F1
		RRR 	70H, 1H 			//042C 	1CF0
		LDR 	70H, 0H 			//042D 	1870
		IORWR 	71H, 0H 		//042E 	1471
		BTSS 	3H, 2H 			//042F 	2D03
		LJUMP 	423H 			//0430 	3C23
		LDR 	75H, 0H 			//0431 	1875
		STR 	71H 			//0432 	10F1
		LDR 	74H, 0H 			//0433 	1874
		STR 	70H 			//0434 	10F0
		RET 					//0435 	1008

		//;uart.c: 147: unsigned char j = 0;
		CLRF 	76H 			//0436 	11F6

		//;uart.c: 148: while(cmd[j] != '\0') {
		LCALL 	451H 			//0437 	3451
		MOVLP 	2H 			//0438 	0182
		MOVIW 	FSR0++ 		//0439 	1012
		BTSC 	3H, 2H 			//043A 	2903
		LJUMP 	443H 			//043B 	3C43

		//;uart.c: 149: UART_SendByte(cmd[j]);
		LCALL 	451H 			//043C 	3451
		MOVLP 	2H 			//043D 	0182
		LDR 	0H, 0H 			//043E 	1800
		LCALL 	449H 			//043F 	3449
		MOVLP 	2H 			//0440 	0182

		//;uart.c: 150: j++;
		INCR 	76H, 1H 		//0441 	1AF6
		LJUMP 	437H 			//0442 	3C37

		//;uart.c: 151: }
		//;uart.c: 152: UART_SendByte(0x0D);
		LDWI 	DH 			//0443 	000D
		LCALL 	449H 			//0444 	3449
		MOVLP 	2H 			//0445 	0182

		//;uart.c: 153: UART_SendByte(0x0A);
		LDWI 	AH 			//0446 	000A
		LCALL 	449H 			//0447 	3449
		RET 					//0448 	1008
		STR 	70H 			//0449 	10F0

		//;uart.c: 136: TXEF = 0;
		MOVLB 	9H 			//044A 	1029
		BCR 	12H, 5H 			//044B 	2292

		//;uart.c: 137: URDATAL = data;
		LDR 	70H, 0H 			//044C 	1870
		STR 	CH 			//044D 	108C

		//;uart.c: 138: while(!TCF) {}
		BTSC 	1CH, 0H 		//044E 	281C
		RET 					//044F 	1008
		LJUMP 	44EH 			//0450 	3C4E
		LDR 	72H, 0H 			//0451 	1872
		STR 	74H 			//0452 	10F4
		LDR 	71H, 0H 			//0453 	1871
		STR 	73H 			//0454 	10F3
		LDR 	76H, 0H 			//0455 	1876
		ADDWR 	73H, 0H 		//0456 	1773
		STR 	4H 			//0457 	1084
		LDR 	74H, 0H 			//0458 	1874
		BTSC 	3H, 0H 			//0459 	2803
		INCR 	74H, 0H 		//045A 	1A74
		STR 	5H 			//045B 	1085
		RET 					//045C 	1008
		LDR 	26H, 0H 			//045D 	1826
		ADDWR 	79H, 0H 		//045E 	1779
		STR 	7AH 			//045F 	10FA
		STR 	6H 			//0460 	1086
		CLRF 	7H 			//0461 	1187
		RET 					//0462 	1008
		RETW 	0H 			//0463 	0400
		RETW 	1H 			//0464 	0401
		RETW 	1H 			//0465 	0401
		RETW 	46H 			//0466 	0446
		RETW 	0H 			//0467 	0400
		RETW 	1H 			//0468 	0401
		RETW 	2H 			//0469 	0402
		RETW 	0H 			//046A 	0400
		RETW 	41H 			//046B 	0441
		RETW 	0H 			//046C 	0400
		RETW 	1H 			//046D 	0401
		RETW 	3H 			//046E 	0403
		RETW 	2H 			//046F 	0402
		RETW 	35H 			//0470 	0435
		RETW 	0H 			//0471 	0400
		RETW 	1H 			//0472 	0401
		RETW 	6H 			//0473 	0406
		RETW 	3H 			//0474 	0403
		RETW 	22H 			//0475 	0422
		RETW 	0H 			//0476 	0400
		RETW 	1H 			//0477 	0401
		RETW 	7H 			//0478 	0407
		RETW 	3H 			//0479 	0403
		RETW 	1AH 			//047A 	041A
		RETW 	0H 			//047B 	0400
		RETW 	2H 			//047C 	0402
		RETW 	4H 			//047D 	0404
		RETW 	1H 			//047E 	0401
		RETW 	19H 			//047F 	0419
		RETW 	0H 			//0480 	0400
		RETW 	2H 			//0481 	0402
		RETW 	2H 			//0482 	0402
		RETW 	1H 			//0483 	0401
		RETW 	0H 			//0484 	0400
		RETW 	0H 			//0485 	0400
		RETW 	3H 			//0486 	0403
		RETW 	2H 			//0487 	0402
		RETW 	1H 			//0488 	0401
		RETW 	3CH 			//0489 	043C
		RETW 	0H 			//048A 	0400
		RETW 	3H 			//048B 	0403
		RETW 	8H 			//048C 	0408
		RETW 	1H 			//048D 	0401
		RETW 	37H 			//048E 	0437
		RETW 	2H 			//048F 	0402
		RETW 	41H 			//0490 	0441
		RETW 	54H 			//0491 	0454
		RETW 	2BH 			//0492 	042B
		RETW 	46H 			//0493 	0446
		RETW 	45H 			//0494 	0445
		RETW 	51H 			//0495 	0451
		RETW 	3DH 			//0496 	043D
		RETW 	34H 			//0497 	0434
		RETW 	33H 			//0498 	0433
		RETW 	34H 			//0499 	0434
		RETW 	30H 			//049A 	0430
		RETW 	30H 			//049B 	0430
		RETW 	30H 			//049C 	0430
		RETW 	30H 			//049D 	0430
		RETW 	30H 			//049E 	0430
		RETW 	30H 			//049F 	0430
		RETW 	0H 			//04A0 	0400
		RETW 	41H 			//04A1 	0441
		RETW 	54H 			//04A2 	0454
		RETW 	2BH 			//04A3 	042B
		RETW 	41H 			//04A4 	0441
		RETW 	44H 			//04A5 	0444
		RETW 	52H 			//04A6 	0452
		RETW 	3DH 			//04A7 	043D
		RETW 	0H 			//04A8 	0400
		RETW 	0H 			//04A9 	0400
		RETW 	0H 			//04AA 	0400
		RETW 	0H 			//04AB 	0400
		RETW 	0H 			//04AC 	0400
		RETW 	0H 			//04AD 	0400
		RETW 	0H 			//04AE 	0400
		RETW 	0H 			//04AF 	0400
		RETW 	0H 			//04B0 	0400
		RETW 	0H 			//04B1 	0400
		RETW 	0H 			//04B2 	0400
		RETW 	0H 			//04B3 	0400
		RETW 	0H 			//04B4 	0400
		RETW 	1H 			//04B5 	0401
		RETW 	41H 			//04B6 	0441
		RETW 	54H 			//04B7 	0454
		RETW 	2BH 			//04B8 	042B
		RETW 	55H 			//04B9 	0455
		RETW 	41H 			//04BA 	0441
		RETW 	52H 			//04BB 	0452
		RETW 	54H 			//04BC 	0454
		RETW 	3DH 			//04BD 	043D
		RETW 	33H 			//04BE 	0433
		RETW 	2CH 			//04BF 	042C
		RETW 	30H 			//04C0 	0430
		RETW 	0H 			//04C1 	0400
		RETW 	41H 			//04C2 	0441
		RETW 	54H 			//04C3 	0454
		RETW 	2BH 			//04C4 	042B
		RETW 	50H 			//04C5 	0450
		RETW 	42H 			//04C6 	0442
		RETW 	3DH 			//04C7 	043D
		RETW 	32H 			//04C8 	0432
		RETW 	30H 			//04C9 	0430
		RETW 	30H 			//04CA 	0430
		RETW 	30H 			//04CB 	0430
		RETW 	0H 			//04CC 	0400
		RETW 	41H 			//04CD 	0441
		RETW 	54H 			//04CE 	0454
		RETW 	2BH 			//04CF 	042B
		RETW 	50H 			//04D0 	0450
		RETW 	57H 			//04D1 	0457
		RETW 	52H 			//04D2 	0452
		RETW 	3DH 			//04D3 	043D
		RETW 	32H 			//04D4 	0432
		RETW 	30H 			//04D5 	0430
		RETW 	0H 			//04D6 	0400
		RETW 	41H 			//04D7 	0441
		RETW 	54H 			//04D8 	0454
		RETW 	2BH 			//04D9 	042B
		RETW 	4DH 			//04DA 	044D
		RETW 	4FH 			//04DB 	044F
		RETW 	44H 			//04DC 	0444
		RETW 	45H 			//04DD 	0445
		RETW 	3DH 			//04DE 	043D
		RETW 	31H 			//04DF 	0431
		RETW 	0H 			//04E0 	0400
		MOVLP 	2H 			//04E1 	0182
		LJUMP 	275H 			//04E2 	3A75
		MOVLP 	2H 			//04E3 	0182
		LJUMP 	27AH 			//04E4 	3A7A
		MOVLP 	2H 			//04E5 	0182
		LJUMP 	286H 			//04E6 	3A86
		MOVLP 	2H 			//04E7 	0182
		LJUMP 	29AH 			//04E8 	3A9A
		MOVLP 	2H 			//04E9 	0182
		LJUMP 	2A8H 			//04EA 	3AA8
		RETW 	41H 			//04EB 	0441
		RETW 	54H 			//04EC 	0454
		RETW 	2BH 			//04ED 	042B
		RETW 	53H 			//04EE 	0453
		RETW 	46H 			//04EF 	0446
		RETW 	3DH 			//04F0 	043D
		RETW 	31H 			//04F1 	0431
		RETW 	30H 			//04F2 	0430
		RETW 	0H 			//04F3 	0400
		RETW 	41H 			//04F4 	0441
		RETW 	54H 			//04F5 	0454
		RETW 	2BH 			//04F6 	042B
		RETW 	57H 			//04F7 	0457
		RETW 	54H 			//04F8 	0454
		RETW 	3DH 			//04F9 	043D
		RETW 	32H 			//04FA 	0432
		RETW 	0H 			//04FB 	0400
		RETW 	41H 			//04FC 	0441
		RETW 	54H 			//04FD 	0454
		RETW 	2BH 			//04FE 	042B
		RETW 	42H 			//04FF 	0442
		RETW 	57H 			//0500 	0457
		RETW 	3DH 			//0501 	043D
		RETW 	39H 			//0502 	0439
		RETW 	0H 			//0503 	0400
		STR 	7EH 			//0504 	10FE
		MOVIW 	FSR0++ 		//0505 	1012
		MOVWI 	FSR1++ 		//0506 	101E
		DECRSZ 	7EH, 1H 		//0507 	1BFE
		LJUMP 	505H 			//0508 	3D05
		RETW 	0H 			//0509 	0400
		CLRWDT 			//050A 	1064
		CLRF 	0H 			//050B 	1180
		ADDFSR 	0H, 1H 		//050C 	0101
		DECRSZ 	9H, 1H 		//050D 	1B89
		LJUMP 	50BH 			//050E 	3D0B
		RETW 	0H 			//050F 	0400
		RETW 	41H 			//0510 	0441
		RETW 	54H 			//0511 	0454
		RETW 	57H 			//0512 	0457
		RETW 	0H 			//0513 	0400
			END
