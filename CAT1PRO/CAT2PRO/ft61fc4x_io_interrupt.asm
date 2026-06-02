//Deviec:FT61FC4X
//-----------------------Variable---------------------------------
		_g_current_state		EQU		E4H
		_g_system_evt		EQU		ECH
		_s_valve_open		EQU		EBH
		_g_timer_count		EQU		50H
		_key_press_cnt		EQU		4EH
		_led_blink_cnt		EQU		4CH
		_BSREG		EQU		08H
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
//		main@temp_evt		EQU		CFH
//		FSM_Process@evt		EQU		CCH
//		FSM_Process@i		EQU		CDH
//		FSM_Process@evt		EQU		CCH
//		FSM_Process@evt		EQU		CCH
//		___wmul@product		EQU		A4H
//		___wmul@multiplier		EQU		A0H
//		___wmul@multiplicand		EQU		A2H
//		UART_BatStatue@data		EQU		A9H
//		Check_Battery_3_Stages@result		EQU		A8H
//		UART_SendATCmd_ADR@buf		EQU		B6H
//		UART_SendATCmd_ADR@addr		EQU		B3H
//		UART_SendATCmd_ADR@F2546		EQU		D0H
//		uint_to_str@tmp		EQU		ABH
//		uint_to_str@i		EQU		B2H
//		uint_to_str@j		EQU		B1H
//		uint_to_str@val		EQU		A7H
//		uint_to_str@buf		EQU		A9H
//		uint_to_str@F2538		EQU		E5H
//		___lwmod@counter		EQU		A4H
//		___lwmod@divisor		EQU		A0H
//		___lwmod@dividend		EQU		A2H
//		___lwdiv@quotient		EQU		A5H
//		___lwdiv@counter		EQU		A4H
//		___lwdiv@divisor		EQU		A0H
//		___lwdiv@dividend		EQU		A2H
//		UART_SendATCmd@j		EQU		A6H
//		UART_SendATCmd@cmd		EQU		A1H
//		UART_SendConnect@data		EQU		ABH
//		led_fast_flashing@i		EQU		A9H
//		UART_SendValveStatus@is_open		EQU		A6H
//		UART_SendValveStatus@data		EQU		A7H
//		UART_SendValveStatus@is_open		EQU		A6H
//		UART_SendValveStatus@is_open		EQU		A6H
//		UART_SendFrame@func		EQU		A4H
//		UART_SendFrame@i		EQU		A5H
//		UART_SendFrame@func		EQU		A4H
//		UART_SendFrame@data		EQU		A1H
//		UART_SendFrame@len		EQU		A2H
//		UART_SendFrame@func		EQU		A4H
//		UART_SendByte@data		EQU		A0H
//		UART_SendByte@data		EQU		A0H
//		UART_SendByte@data		EQU		A0H
//		DelayMs@b		EQU		A7H
//		DelayMs@a		EQU		A6H
//		DelayMs@Time		EQU		A2H
//		DelayUs@Time		EQU		A0H
//		DelayUs@a		EQU		A1H
//		DelayUs@Time		EQU		A0H
//		DelayUs@Time		EQU		A0H
//		FSM_SendEvent@evt		EQU		A0H
//		FSM_SendEvent@evt		EQU		A0H
//		FSM_SendEvent@evt		EQU		A0H
//		UART_ISR@addr		EQU		40H
//		UART_ISR@i		EQU		42H
//		UART_ISR@b		EQU		43H
//		UART_ISR@ps		EQU		54H
//		UART_ISR@rx_buf		EQU		44H
//		UART_ISR@data_idx		EQU		53H
//		UART_ISR@data_len		EQU		52H
//		i1___wmul@product		EQU		74H
//		i1___wmul@multiplier		EQU		70H
//		i1___wmul@multiplicand		EQU		72H
//		i1UART_SendATCmd_ADR@buf		EQU		28H
//		i1UART_SendATCmd_ADR@addr		EQU		7BH
//		i1uint_to_str@tmp		EQU		20H
//		i1uint_to_str@i		EQU		27H
//		i1uint_to_str@j		EQU		26H
//		i1uint_to_str@val		EQU		77H
//		i1uint_to_str@buf		EQU		79H
//		i1___lwmod@counter		EQU		74H
//		i1___lwmod@divisor		EQU		70H
//		i1___lwmod@dividend		EQU		72H
//		i1___lwdiv@quotient		EQU		74H
//		i1___lwdiv@counter		EQU		76H
//		i1___lwdiv@divisor		EQU		70H
//		i1___lwdiv@dividend		EQU		72H
//		i1UART_SendATCmd@j		EQU		76H
//		i1UART_SendATCmd@cmd		EQU		71H
//		i1UART_SendByte@data		EQU		70H
//		i1UART_SendByte@data		EQU		70H
//		i1UART_SendByte@data		EQU		70H
//		i1DelayMs@b		EQU		77H
//		i1DelayMs@a		EQU		76H
//		i1DelayMs@Time		EQU		72H
//		i1DelayUs@Time		EQU		70H
//		i1DelayUs@a		EQU		71H
//		i1DelayUs@Time		EQU		70H
//		i1DelayUs@Time		EQU		70H
//		func_data_len@func		EQU		70H
//		func_data_len@func		EQU		70H
//		func_data_len@func		EQU		70H
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
		MOVLP 	4H 			//000B 	0184
		LCALL 	427H 			//000C 	3427
		MOVLP 	0H 			//000D 	0180

		//;main.c: 27: }
		//;main.c: 30: if(URRXNE && RXNEF) {
		MOVLB 	9H 			//000E 	1029
		BTSC 	EH, 0H 			//000F 	280E
		BTSS 	12H, 0H 		//0010 	2C12
		LJUMP 	15H 			//0011 	3815

		//;main.c: 31: UART_ISR();
		MOVLP 	3H 			//0012 	0183
		LCALL 	394H 			//0013 	3394

		//;main.c: 32: __nop();
		NOP 					//0014 	1000
		BCR 	7EH, 0H 			//0015 	207E
		RETI 					//0016 	1009
		MOVLP 	0H 			//0017 	0180
		LJUMP 	AFH 			//0018 	38AF
		LJUMP 	2ADH 			//0019 	3AAD
		LJUMP 	3EH 			//001A 	383E
		CLRF 	6BH 			//001B 	11EB
		LCALL 	1FH 			//001C 	301F
		MOVLP 	0H 			//001D 	0180
		LJUMP 	2ADH 			//001E 	3AAD

		//;motor.c: 39: s_motor_state = MOTOR_CLOSING;
		LCALL 	353H 			//001F 	3353

		//;motor.c: 40: PORTBbits.PB1 = 0;
		BCR 	DH, 1H 			//0020 	208D

		//;motor.c: 41: PORTAbits.PA0 = 1;
		BSR 	CH, 0H 			//0021 	240C
		RET 					//0022 	1008
		CLRF 	6BH 			//0023 	11EB
		INCR 	6BH, 1H 		//0024 	1AEB
		LCALL 	28H 			//0025 	3028
		MOVLP 	0H 			//0026 	0180
		LJUMP 	2ADH 			//0027 	3AAD

		//;motor.c: 27: s_motor_state = MOTOR_OPENING;
		LCALL 	353H 			//0028 	3353

		//;motor.c: 28: PORTBbits.PB1 = 1;
		BSR 	DH, 1H 			//0029 	248D

		//;motor.c: 29: PORTAbits.PA0 = 0;
		BCR 	CH, 0H 			//002A 	200C
		RET 					//002B 	1008
		LCALL 	353H 			//002C 	3353
		MOVLP 	0H 			//002D 	0180
		MOVLB 	1H 			//002E 	1021
		LDR 	6BH, 0H 			//002F 	186B
		LJUMP 	357H 			//0030 	3B57
		LCALL 	353H 			//0031 	3353
		MOVLP 	0H 			//0032 	0180
		LCALL 	2A7H 			//0033 	32A7
		MOVLP 	0H 			//0034 	0180
		LJUMP 	90H 			//0035 	3890
		LCALL 	346H 			//0036 	3346
		MOVLP 	0H 			//0037 	0180
		LDWI 	FFH 			//0038 	00FF
		STR 	33H 			//0039 	10B3
		STR 	34H 			//003A 	10B4
		LCALL 	48H 			//003B 	3048
		MOVLP 	0H 			//003C 	0180
		LJUMP 	2ADH 			//003D 	3AAD
		LDWI 	ABH 			//003E 	00AB

		//;uart.c: 195: unsigned char data[2] = {0x00, 0x00};
		CLRF 	2BH 			//003F 	11AB
		CLRF 	2CH 			//0040 	11AC

		//;uart.c: 196: UART_SendFrame(0x04u, data, 2);
		STR 	21H 			//0041 	10A1
		LDWI 	2H 			//0042 	0002
		STR 	22H 			//0043 	10A2
		LDWI 	4H 			//0044 	0004
		LCALL 	1B0H 			//0045 	31B0
		MOVLP 	0H 			//0046 	0180

		//;uart.c: 197: led_fast_flashing();
		LJUMP 	67H 			//0047 	3867

		//;uart.c: 163: char buf[20] = "AT+ADR=";
		LDWI 	D0H 			//0048 	00D0
		STR 	6H 			//0049 	1086
		LDWI 	0H 			//004A 	0000
		STR 	7H 			//004B 	1087
		LDWI 	B6H 			//004C 	00B6
		STR 	4H 			//004D 	1084
		LDWI 	0H 			//004E 	0000
		STR 	5H 			//004F 	1085
		LDWI 	14H 			//0050 	0014
		STR 	35H 			//0051 	10B5
		MOVIW 	FSR1++ 		//0052 	1016
		MOVWI 	FSR0++ 		//0053 	101A
		DECRSZ 	35H, 1H 		//0054 	1BB5
		LJUMP 	52H 			//0055 	3852

		//;uart.c: 164: uint_to_str(addr, buf + 7);
		LDR 	34H, 0H 			//0056 	1834
		STR 	28H 			//0057 	10A8
		LDR 	33H, 0H 			//0058 	1833
		STR 	27H 			//0059 	10A7
		LDWI 	BDH 			//005A 	00BD
		STR 	29H 			//005B 	10A9
		LCALL 	2B1H 			//005C 	32B1
		MOVLP 	0H 			//005D 	0180

		//;uart.c: 165: UART_SendATCmd(buf);
		LDWI 	B6H 			//005E 	00B6
		STR 	21H 			//005F 	10A1
		LDWI 	0H 			//0060 	0000
		STR 	22H 			//0061 	10A2
		LCALL 	186H 			//0062 	3186
		MOVLP 	0H 			//0063 	0180

		//;uart.c: 166: DelayMs(50);
		LCALL 	36EH 			//0064 	336E
		MOVLP 	0H 			//0065 	0180
		LJUMP 	199H 			//0066 	3999

		//;led.c: 5: int i=0;
		MOVLB 	1H 			//0067 	1021
		CLRF 	29H 			//0068 	11A9
		CLRF 	2AH 			//0069 	11AA

		//;led.c: 6: for(i=0;i<7;i++)
		CLRF 	29H 			//006A 	11A9
		CLRF 	2AH 			//006B 	11AA

		//;led.c: 7: {
		//;led.c: 8: PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1);
		BCR 	3H, 0H 			//006C 	2003
		MOVLB 	0H 			//006D 	1020
		BTSS 	CH, 1H 			//006E 	2C8C
		BSR 	3H, 0H 			//006F 	2403
		BTSS 	3H, 0H 			//0070 	2C03
		LJUMP 	75H 			//0071 	3875
		MOVLB 	0H 			//0072 	1020
		BSR 	CH, 1H 			//0073 	248C
		LJUMP 	77H 			//0074 	3877
		MOVLB 	0H 			//0075 	1020
		BCR 	CH, 1H 			//0076 	208C

		//;led.c: 9: DelayMs(50);
		LCALL 	36EH 			//0077 	336E
		MOVLP 	0H 			//0078 	0180
		LCALL 	199H 			//0079 	3199
		MOVLP 	0H 			//007A 	0180
		INCR 	29H, 1H 		//007B 	1AA9
		BTSC 	3H, 2H 			//007C 	2903
		INCR 	2AH, 1H 		//007D 	1AAA
		LDR 	2AH, 0H 			//007E 	182A
		XORWI 	80H 			//007F 	0A80
		STR 	28H 			//0080 	10A8
		LDWI 	80H 			//0081 	0080
		SUBWR 	28H, 0H 		//0082 	1228
		BTSS 	3H, 2H 			//0083 	2D03
		LJUMP 	87H 			//0084 	3887
		LDWI 	7H 			//0085 	0007
		SUBWR 	29H, 0H 		//0086 	1229
		BTSC 	3H, 0H 			//0087 	2803
		RET 					//0088 	1008
		LJUMP 	6CH 			//0089 	386C
		LCALL 	295H 			//008A 	3295
		MOVLP 	0H 			//008B 	0180
		LCALL 	2ADH 			//008C 	32AD
		MOVLP 	0H 			//008D 	0180
		BSR 	CH, 1H 			//008E 	248C
		LJUMP 	CEH 			//008F 	38CE

		//;sleep_wake.c: 21: PORTAbits.PA1 = 0;
		BCR 	CH, 1H 			//0090 	208C

		//;sleep_wake.c: 22: Radio_Sleep();
		LCALL 	2A7H 			//0091 	32A7
		MOVLP 	0H 			//0092 	0180

		//;sleep_wake.c: 23: DelayMs(50);
		LCALL 	36EH 			//0093 	336E
		MOVLP 	0H 			//0094 	0180
		LCALL 	199H 			//0095 	3199
		MOVLP 	0H 			//0096 	0180

		//;sleep_wake.c: 28: IO_INT_INITIAL();
		LCALL 	29AH 			//0097 	329A
		MOVLP 	0H 			//0098 	0180

		//;sleep_wake.c: 29: EPIF0 = 0x90;
		LDWI 	90H 			//0099 	0090
		MOVLB 	0H 			//009A 	1020
		STR 	14H 			//009B 	1094

		//;sleep_wake.c: 31: GIE = 0;
		BCR 	BH, 7H 			//009C 	238B

		//;sleep_wake.c: 34: __nop(); __nop();__nop();__nop();
		NOP 					//009D 	1000
		NOP 					//009E 	1000
		NOP 					//009F 	1000
		NOP 					//00A0 	1000
		SLEEP 					//00A1 	1063

		//;sleep_wake.c: 36: __nop(); __nop();__nop();__nop();
		NOP 					//00A2 	1000
		NOP 					//00A3 	1000
		NOP 					//00A4 	1000
		NOP 					//00A5 	1000

		//;sleep_wake.c: 39: Radio_Wake();
		LCALL 	295H 			//00A6 	3295
		MOVLP 	0H 			//00A7 	0180

		//;sleep_wake.c: 40: EPIF0 = 0x90;
		LDWI 	90H 			//00A8 	0090
		MOVLB 	0H 			//00A9 	1020
		STR 	14H 			//00AA 	1094

		//;sleep_wake.c: 41: INTCON = 0B11000000;
		LDWI 	C0H 			//00AB 	00C0
		STR 	BH 			//00AC 	108B

		//;sleep_wake.c: 43: FSM_SendEvent(EV_WAKE);
		LDWI 	1H 			//00AD 	0001
		LJUMP 	2A9H 			//00AE 	3AA9
		LDWI 	EEH 			//00AF 	00EE
		STR 	4H 			//00B0 	1084
		LDWI 	85H 			//00B1 	0085
		STR 	5H 			//00B2 	1085
		LDWI 	D0H 			//00B3 	00D0
		STR 	6H 			//00B4 	1086
		LDWI 	0H 			//00B5 	0000
		STR 	7H 			//00B6 	1087
		LDWI 	15H 			//00B7 	0015
		MOVLP 	6H 			//00B8 	0186
		LCALL 	661H 			//00B9 	3661
		MOVLP 	0H 			//00BA 	0180
		LDWI 	44H 			//00BB 	0044
		STR 	4H 			//00BC 	1084
		LDWI 	0H 			//00BD 	0000
		STR 	5H 			//00BE 	1085
		LDWI 	11H 			//00BF 	0011
		MOVLP 	6H 			//00C0 	0186
		LCALL 	667H 			//00C1 	3667
		MOVLP 	0H 			//00C2 	0180
		LDWI 	E5H 			//00C3 	00E5
		STR 	4H 			//00C4 	1084
		LDWI 	0H 			//00C5 	0000
		STR 	5H 			//00C6 	1085
		LDWI 	8H 			//00C7 	0008
		MOVLP 	6H 			//00C8 	0186
		LCALL 	667H 			//00C9 	3667
		MOVLP 	0H 			//00CA 	0180
		BCR 	7EH, 0H 			//00CB 	207E
		MOVLB 	0H 			//00CC 	1020
		LJUMP 	DCH 			//00CD 	38DC

		//;uart.c: 227: DelayMs(50);
		LCALL 	36EH 			//00CE 	336E
		MOVLP 	0H 			//00CF 	0180
		LCALL 	199H 			//00D0 	3199
		MOVLP 	0H 			//00D1 	0180

		//;uart.c: 228: unsigned char data[2];
		//;uart.c: 229: data[0] = 0x00;
		CLRF 	29H 			//00D2 	11A9

		//;uart.c: 230: data[1] = Check_Battery_3_Stages();
		LCALL 	F5H 			//00D3 	30F5
		MOVLP 	0H 			//00D4 	0180
		STR 	2AH 			//00D5 	10AA

		//;uart.c: 231: UART_SendFrame(0x05u, data, 2);
		LDWI 	A9H 			//00D6 	00A9
		STR 	21H 			//00D7 	10A1
		LDWI 	2H 			//00D8 	0002
		STR 	22H 			//00D9 	10A2
		LDWI 	5H 			//00DA 	0005
		LJUMP 	1B0H 			//00DB 	39B0

		//;main.c: 83: POWER_INITIAL();
		LCALL 	24EH 			//00DC 	324E
		MOVLP 	0H 			//00DD 	0180

		//;main.c: 85: Timer_Init();
		LCALL 	275H 			//00DE 	3275
		MOVLP 	0H 			//00DF 	0180

		//;main.c: 86: UART_Init();
		LCALL 	284H 			//00E0 	3284
		MOVLP 	0H 			//00E1 	0180

		//;main.c: 87: Radio_Init();
		LCALL 	116H 			//00E2 	3116
		MOVLP 	0H 			//00E3 	0180

		//;main.c: 88: INTCON = 0B11000000;
		LDWI 	C0H 			//00E4 	00C0
		STR 	BH 			//00E5 	108B

		//;main.c: 89: PORTAbits.PA1 = 1;
		MOVLB 	0H 			//00E6 	1020
		BSR 	CH, 1H 			//00E7 	248C

		//;main.c: 90: DelayMs(50);
		LCALL 	36EH 			//00E8 	336E
		MOVLP 	0H 			//00E9 	0180
		LCALL 	199H 			//00EA 	3199
		MOVLP 	0H 			//00EB 	0180

		//;main.c: 94: if(g_system_evt != EV_NONE) {
		LDR 	6CH, 0H 			//00EC 	186C
		BTSC 	3H, 2H 			//00ED 	2903
		LJUMP 	ECH 			//00EE 	38EC

		//;main.c: 95: SystemEvent temp_evt = g_system_evt;
		LDR 	6CH, 0H 			//00EF 	186C
		STR 	4FH 			//00F0 	10CF

		//;main.c: 96: g_system_evt = EV_NONE;
		CLRF 	6CH 			//00F1 	11EC

		//;main.c: 98: FSM_Process(temp_evt);
		LCALL 	1E3H 			//00F2 	31E3
		MOVLP 	0H 			//00F3 	0180
		LJUMP 	ECH 			//00F4 	38EC

		//;bat.c: 7: BSREG = 3;
		LDWI 	3H 			//00F5 	0003
		STR 	8H 			//00F6 	1088

		//;bat.c: 11: LVDCON0 = 0x15;
		LDWI 	15H 			//00F7 	0015
		MOVLB 	3H 			//00F8 	1023

		//;bat.c: 14: DelayMs(20);
		LCALL 	38EH 			//00F9 	338E
		MOVLP 	0H 			//00FA 	0180
		LCALL 	199H 			//00FB 	3199
		MOVLP 	0H 			//00FC 	0180

		//;bat.c: 16: if (LVDCON0 & 0x08) {
		MOVLB 	3H 			//00FD 	1023
		BTSS 	19H, 3H 		//00FE 	2D99
		LJUMP 	10EH 			//00FF 	390E

		//;bat.c: 20: LVDCON0 = 0x14;
		LDWI 	14H 			//0100 	0014

		//;bat.c: 22: DelayMs(20);
		LCALL 	38EH 			//0101 	338E
		MOVLP 	0H 			//0102 	0180
		LCALL 	199H 			//0103 	3199
		MOVLP 	0H 			//0104 	0180

		//;bat.c: 24: if (LVDCON0 & 0x08) {
		MOVLB 	3H 			//0105 	1023
		BTSS 	19H, 3H 		//0106 	2D99
		LJUMP 	10CH 			//0107 	390C

		//;bat.c: 25: result = 0x01;
		MOVLB 	1H 			//0108 	1021
		CLRF 	28H 			//0109 	11A8
		INCR 	28H, 1H 		//010A 	1AA8

		//;bat.c: 26: } else {
		LJUMP 	111H 			//010B 	3911

		//;bat.c: 27: result = 0x02;
		LDWI 	2H 			//010C 	0002
		LJUMP 	10FH 			//010D 	390F

		//;bat.c: 30: result = 0x03;
		LDWI 	3H 			//010E 	0003
		MOVLB 	1H 			//010F 	1021
		STR 	28H 			//0110 	10A8

		//;bat.c: 31: }
		//;bat.c: 34: LVDCON0 &= ~0x10;
		MOVLB 	3H 			//0111 	1023
		BCR 	19H, 4H 			//0112 	2219

		//;bat.c: 39: return result;
		//;bat.c: 37: BSREG = 0;
		MOVLB 	1H 			//0113 	1021
		LDR 	28H, 0H 			//0114 	1828
		RET 					//0115 	1008

		//;radio.c: 10: UART_SendATCmd("AT+PWR=29");
		LDWI 	24H 			//0116 	0024
		MOVLB 	1H 			//0117 	1021
		STR 	21H 			//0118 	10A1
		LDWI 	86H 			//0119 	0086
		STR 	22H 			//011A 	10A2
		LCALL 	186H 			//011B 	3186
		MOVLP 	0H 			//011C 	0180

		//;radio.c: 11: DelayMs(50);
		LCALL 	36EH 			//011D 	336E
		MOVLP 	0H 			//011E 	0180
		LCALL 	199H 			//011F 	3199
		MOVLP 	0H 			//0120 	0180

		//;radio.c: 14: UART_SendATCmd("AT+UART=3,0");
		LDWI 	3H 			//0121 	0003
		STR 	21H 			//0122 	10A1
		LDWI 	86H 			//0123 	0086
		STR 	22H 			//0124 	10A2
		LCALL 	186H 			//0125 	3186
		MOVLP 	0H 			//0126 	0180

		//;radio.c: 15: DelayMs(50);
		LCALL 	36EH 			//0127 	336E
		MOVLP 	0H 			//0128 	0180
		LCALL 	199H 			//0129 	3199
		MOVLP 	0H 			//012A 	0180

		//;radio.c: 18: UART_SendATCmd("AT+FEQ=434000000");
		LDWI 	DDH 			//012B 	00DD
		STR 	21H 			//012C 	10A1
		LDWI 	85H 			//012D 	0085
		STR 	22H 			//012E 	10A2
		LCALL 	186H 			//012F 	3186
		MOVLP 	0H 			//0130 	0180

		//;radio.c: 19: DelayMs(50);
		LCALL 	36EH 			//0131 	336E
		MOVLP 	0H 			//0132 	0180
		LCALL 	199H 			//0133 	3199
		MOVLP 	0H 			//0134 	0180

		//;radio.c: 22: UART_SendATCmd("AT+SF=7");
		LDWI 	51H 			//0135 	0051
		STR 	21H 			//0136 	10A1
		LDWI 	86H 			//0137 	0086
		STR 	22H 			//0138 	10A2
		LCALL 	186H 			//0139 	3186
		MOVLP 	0H 			//013A 	0180

		//;radio.c: 23: DelayMs(50);
		LCALL 	36EH 			//013B 	336E
		MOVLP 	0H 			//013C 	0180
		LCALL 	199H 			//013D 	3199
		MOVLP 	0H 			//013E 	0180

		//;radio.c: 26: UART_SendATCmd("AT+BW=9");
		LDWI 	59H 			//013F 	0059
		STR 	21H 			//0140 	10A1
		LDWI 	86H 			//0141 	0086
		STR 	22H 			//0142 	10A2
		LCALL 	186H 			//0143 	3186
		MOVLP 	0H 			//0144 	0180

		//;radio.c: 27: DelayMs(50);
		LCALL 	36EH 			//0145 	336E
		MOVLP 	0H 			//0146 	0180
		LCALL 	199H 			//0147 	3199
		MOVLP 	0H 			//0148 	0180

		//;radio.c: 30: UART_SendATCmd("AT+PB=2500");
		LDWI 	FH 			//0149 	000F
		STR 	21H 			//014A 	10A1
		LDWI 	86H 			//014B 	0086
		STR 	22H 			//014C 	10A2
		LCALL 	186H 			//014D 	3186
		MOVLP 	0H 			//014E 	0180

		//;radio.c: 31: DelayMs(50);
		LCALL 	36EH 			//014F 	336E
		MOVLP 	0H 			//0150 	0180
		LCALL 	199H 			//0151 	3199
		MOVLP 	0H 			//0152 	0180

		//;radio.c: 33: UART_SendATCmd("AT+MODE=1");
		LDWI 	1AH 			//0153 	001A
		STR 	21H 			//0154 	10A1
		LDWI 	86H 			//0155 	0086
		STR 	22H 			//0156 	10A2
		LCALL 	186H 			//0157 	3186
		MOVLP 	0H 			//0158 	0180

		//;radio.c: 34: DelayMs(50);
		LCALL 	36EH 			//0159 	336E
		MOVLP 	0H 			//015A 	0180
		LCALL 	199H 			//015B 	3199
		MOVLP 	0H 			//015C 	0180

		//;radio.c: 36: UART_SendATCmd("AT+WT=2");
		LDWI 	49H 			//015D 	0049
		STR 	21H 			//015E 	10A1
		LDWI 	86H 			//015F 	0086
		STR 	22H 			//0160 	10A2
		LCALL 	186H 			//0161 	3186
		MOVLP 	0H 			//0162 	0180

		//;radio.c: 37: DelayMs(50);
		LCALL 	36EH 			//0163 	336E
		MOVLP 	0H 			//0164 	0180
		LCALL 	199H 			//0165 	3199
		MOVLP 	0H 			//0166 	0180

		//;radio.c: 39: UART_SendATCmd("AT+CR=1");
		LDWI 	41H 			//0167 	0041
		STR 	21H 			//0168 	10A1
		LDWI 	86H 			//0169 	0086
		STR 	22H 			//016A 	10A2
		LCALL 	186H 			//016B 	3186
		MOVLP 	0H 			//016C 	0180

		//;radio.c: 40: DelayMs(50);
		LCALL 	36EH 			//016D 	336E
		MOVLP 	0H 			//016E 	0180
		LCALL 	199H 			//016F 	3199
		MOVLP 	0H 			//0170 	0180

		//;radio.c: 42: UART_SendATCmd("AT+CRC=1");
		LDWI 	38H 			//0171 	0038
		STR 	21H 			//0172 	10A1
		LDWI 	86H 			//0173 	0086
		STR 	22H 			//0174 	10A2
		LCALL 	186H 			//0175 	3186
		MOVLP 	0H 			//0176 	0180

		//;radio.c: 43: DelayMs(50);
		LCALL 	36EH 			//0177 	336E
		MOVLP 	0H 			//0178 	0180
		LCALL 	199H 			//0179 	3199
		MOVLP 	0H 			//017A 	0180

		//;radio.c: 46: UART_SendATCmd("ATW");
		LDWI 	6DH 			//017B 	006D
		STR 	21H 			//017C 	10A1
		LDWI 	86H 			//017D 	0086
		STR 	22H 			//017E 	10A2
		LCALL 	186H 			//017F 	3186
		MOVLP 	0H 			//0180 	0180

		//;radio.c: 47: DelayMs(50);
		LCALL 	36EH 			//0181 	336E
		MOVLP 	0H 			//0182 	0180
		LCALL 	199H 			//0183 	3199
		MOVLP 	0H 			//0184 	0180

		//;radio.c: 51: Radio_Wake();
		LJUMP 	295H 			//0185 	3A95

		//;uart.c: 148: unsigned char j = 0;
		CLRF 	26H 			//0186 	11A6

		//;uart.c: 149: while(cmd[j] != '\0') {
		LCALL 	373H 			//0187 	3373
		MOVLP 	0H 			//0188 	0180
		MOVIW 	FSR0++ 		//0189 	1012
		BTSC 	3H, 2H 			//018A 	2903
		LJUMP 	194H 			//018B 	3994

		//;uart.c: 150: UART_SendByte(cmd[j]);
		LCALL 	373H 			//018C 	3373
		MOVLP 	0H 			//018D 	0180
		LDR 	0H, 0H 			//018E 	1800
		LCALL 	1CEH 			//018F 	31CE
		MOVLP 	0H 			//0190 	0180

		//;uart.c: 151: j++;
		MOVLB 	1H 			//0191 	1021
		INCR 	26H, 1H 		//0192 	1AA6
		LJUMP 	187H 			//0193 	3987

		//;uart.c: 152: }
		//;uart.c: 153: UART_SendByte(0x0D);
		LDWI 	DH 			//0194 	000D
		LCALL 	1CEH 			//0195 	31CE
		MOVLP 	0H 			//0196 	0180

		//;uart.c: 154: UART_SendByte(0x0A);
		LDWI 	AH 			//0197 	000A
		LJUMP 	1CEH 			//0198 	39CE

		//;timer.c: 32: unsigned char a,b;
		//;timer.c: 33: for(a=0;a<Time;a++)
		CLRF 	26H 			//0199 	11A6
		LDR 	26H, 0H 			//019A 	1826
		STR 	24H 			//019B 	10A4
		CLRF 	25H 			//019C 	11A5
		LDR 	23H, 0H 			//019D 	1823
		SUBWR 	25H, 0H 		//019E 	1225
		BTSS 	3H, 2H 			//019F 	2D03
		LJUMP 	1A3H 			//01A0 	39A3
		LDR 	22H, 0H 			//01A1 	1822
		SUBWR 	24H, 0H 		//01A2 	1224
		BTSC 	3H, 0H 			//01A3 	2803
		RET 					//01A4 	1008

		//;timer.c: 34: {
		//;timer.c: 35: for(b=0;b<5;b++)
		CLRF 	27H 			//01A5 	11A7

		//;timer.c: 36: {
		//;timer.c: 37: DelayUs(197);
		LDWI 	C5H 			//01A6 	00C5
		LCALL 	1D9H 			//01A7 	31D9
		MOVLP 	0H 			//01A8 	0180
		LDWI 	5H 			//01A9 	0005
		INCR 	27H, 1H 		//01AA 	1AA7
		SUBWR 	27H, 0H 		//01AB 	1227
		BTSS 	3H, 0H 			//01AC 	2C03
		LJUMP 	1A6H 			//01AD 	39A6
		INCR 	26H, 1H 		//01AE 	1AA6
		LJUMP 	19AH 			//01AF 	399A
		STR 	24H 			//01B0 	10A4

		//;uart.c: 176: unsigned char i;
		//;uart.c: 177: UART_SendByte(0xFF);
		LDWI 	FFH 			//01B1 	00FF
		LCALL 	1CEH 			//01B2 	31CE
		MOVLP 	0H 			//01B3 	0180

		//;uart.c: 178: UART_SendByte(0xACu);
		LDWI 	ACH 			//01B4 	00AC
		LCALL 	1CEH 			//01B5 	31CE
		MOVLP 	0H 			//01B6 	0180

		//;uart.c: 179: UART_SendByte(func);
		MOVLB 	1H 			//01B7 	1021
		LDR 	24H, 0H 			//01B8 	1824
		LCALL 	1CEH 			//01B9 	31CE
		MOVLP 	0H 			//01BA 	0180

		//;uart.c: 180: for(i = 0; i < len; i++) {
		MOVLB 	1H 			//01BB 	1021
		CLRF 	25H 			//01BC 	11A5
		LDR 	22H, 0H 			//01BD 	1822
		SUBWR 	25H, 0H 		//01BE 	1225
		BTSC 	3H, 0H 			//01BF 	2803
		LJUMP 	1CCH 			//01C0 	39CC

		//;uart.c: 181: UART_SendByte(data[i]);
		LDR 	25H, 0H 			//01C1 	1825
		ADDWR 	21H, 0H 		//01C2 	1721
		STR 	23H 			//01C3 	10A3
		STR 	6H 			//01C4 	1086
		CLRF 	7H 			//01C5 	1187
		LDR 	1H, 0H 			//01C6 	1801
		LCALL 	1CEH 			//01C7 	31CE
		MOVLP 	0H 			//01C8 	0180
		MOVLB 	1H 			//01C9 	1021
		INCR 	25H, 1H 		//01CA 	1AA5
		LJUMP 	1BDH 			//01CB 	39BD

		//;uart.c: 182: }
		//;uart.c: 183: UART_SendByte(0xFE);
		LDWI 	FEH 			//01CC 	00FE
		LJUMP 	1CEH 			//01CD 	39CE
		MOVLB 	1H 			//01CE 	1021
		STR 	20H 			//01CF 	10A0

		//;uart.c: 137: TXEF = 0;
		MOVLB 	9H 			//01D0 	1029
		BCR 	12H, 5H 			//01D1 	2292

		//;uart.c: 138: URDATAL = data;
		MOVLB 	1H 			//01D2 	1021
		LDR 	20H, 0H 			//01D3 	1820
		MOVLB 	9H 			//01D4 	1029
		STR 	CH 			//01D5 	108C

		//;uart.c: 139: while(!TCF) {}
		BTSC 	1CH, 0H 		//01D6 	281C
		RET 					//01D7 	1008
		LJUMP 	1D6H 			//01D8 	39D6
		STR 	20H 			//01D9 	10A0

		//;timer.c: 18: unsigned char a;
		//;timer.c: 19: for(a=0;a<Time;a++)
		CLRF 	21H 			//01DA 	11A1
		LDR 	20H, 0H 			//01DB 	1820
		SUBWR 	21H, 0H 		//01DC 	1221
		BTSC 	3H, 0H 			//01DD 	2803
		RET 					//01DE 	1008

		//;timer.c: 20: {
		//;timer.c: 21: __nop();
		NOP 					//01DF 	1000
		MOVLB 	1H 			//01E0 	1021
		INCR 	21H, 1H 		//01E1 	1AA1
		LJUMP 	1DBH 			//01E2 	39DB
		STR 	4CH 			//01E3 	10CC

		//;app_fsm.c: 44: if(evt == EV_NONE) return;
		LDR 	4CH, 0H 			//01E4 	184C
		BTSC 	3H, 2H 			//01E5 	2903
		RET 					//01E6 	1008

		//;app_fsm.c: 46: for(int i=0; i<(sizeof(sys_fsm)/sizeof(FSM_Table)); i++) {
		CLRF 	4DH 			//01E7 	11CD
		CLRF 	4EH 			//01E8 	11CE

		//;app_fsm.c: 47: if(sys_fsm[i].cur == g_current_state && sys_fsm[i].evt == evt) {
		LCALL 	366H 			//01E9 	3366
		MOVLP 	0H 			//01EA 	0180
		LCALL 	239H 			//01EB 	3239
		MOVLP 	0H 			//01EC 	0180
		LDR 	21H, 0H 			//01ED 	1821
		STR 	5H 			//01EE 	1085
		LDR 	20H, 0H 			//01EF 	1820
		STR 	4H 			//01F0 	1084
		LDWI 	B0H 			//01F1 	00B0
		ADDWR 	4H, 1H 		//01F2 	1784
		LDWI 	85H 			//01F3 	0085
		ADDWFC 	5H, 1H 		//01F4 	0D85
		LDR 	0H, 0H 			//01F5 	1800
		XORWR 	64H, 0H 		//01F6 	1664
		BTSS 	3H, 2H 			//01F7 	2D03
		LJUMP 	22EH 			//01F8 	3A2E
		LCALL 	366H 			//01F9 	3366
		MOVLP 	0H 			//01FA 	0180
		LCALL 	239H 			//01FB 	3239
		MOVLP 	0H 			//01FC 	0180
		LDR 	21H, 0H 			//01FD 	1821
		STR 	5H 			//01FE 	1085
		LDR 	20H, 0H 			//01FF 	1820
		STR 	4H 			//0200 	1084
		LDWI 	B1H 			//0201 	00B1
		ADDWR 	4H, 1H 		//0202 	1784
		LDWI 	85H 			//0203 	0085
		ADDWFC 	5H, 1H 		//0204 	0D85
		LDR 	0H, 0H 			//0205 	1800
		XORWR 	4CH, 0H 		//0206 	164C
		BTSS 	3H, 2H 			//0207 	2D03
		LJUMP 	22EH 			//0208 	3A2E

		//;app_fsm.c: 48: if(sys_fsm[i].action) sys_fsm[i].action();
		LCALL 	366H 			//0209 	3366
		MOVLP 	0H 			//020A 	0180
		LCALL 	239H 			//020B 	3239
		MOVLP 	0H 			//020C 	0180
		LCALL 	37FH 			//020D 	337F
		MOVLP 	0H 			//020E 	0180
		MOVIW 	FSR0++ 		//020F 	1012
		STR 	4AH 			//0210 	10CA
		MOVIW 	FSR0++ 		//0211 	1012
		IORWR 	4AH, 1H 		//0212 	14CA
		BTSC 	3H, 2H 			//0213 	2903
		LJUMP 	21FH 			//0214 	3A1F
		LCALL 	366H 			//0215 	3366
		MOVLP 	0H 			//0216 	0180
		LCALL 	239H 			//0217 	3239
		MOVLP 	0H 			//0218 	0180
		LCALL 	37FH 			//0219 	337F
		MOVIW 	1H[0] 			//021A 	0F01
		STR 	AH 			//021B 	108A
		MOVIW 	0H[0] 			//021C 	0F00
		CALLW 					//021D 	100A
		MOVLP 	2H 			//021E 	0182

		//;app_fsm.c: 49: g_current_state = sys_fsm[i].next;
		MOVLB 	1H 			//021F 	1021
		LCALL 	366H 			//0220 	3366
		MOVLP 	0H 			//0221 	0180
		LCALL 	239H 			//0222 	3239
		LDR 	21H, 0H 			//0223 	1821
		STR 	5H 			//0224 	1085
		LDR 	20H, 0H 			//0225 	1820
		STR 	4H 			//0226 	1084
		LDWI 	B2H 			//0227 	00B2
		ADDWR 	4H, 1H 		//0228 	1784
		LDWI 	85H 			//0229 	0085
		ADDWFC 	5H, 1H 		//022A 	0D85
		LDR 	0H, 0H 			//022B 	1800
		STR 	64H 			//022C 	10E4

		//;app_fsm.c: 50: break;
		RET 					//022D 	1008
		INCR 	4DH, 1H 		//022E 	1ACD
		BTSC 	3H, 2H 			//022F 	2903
		INCR 	4EH, 1H 		//0230 	1ACE
		LDWI 	0H 			//0231 	0000
		SUBWR 	4EH, 0H 		//0232 	124E
		LDWI 	9H 			//0233 	0009
		BTSC 	3H, 2H 			//0234 	2903
		SUBWR 	4DH, 0H 		//0235 	124D
		BTSC 	3H, 0H 			//0236 	2803
		RET 					//0237 	1008
		LJUMP 	1E9H 			//0238 	39E9
		CLRF 	24H 			//0239 	11A4
		CLRF 	25H 			//023A 	11A5
		BTSS 	20H, 0H 		//023B 	2C20
		LJUMP 	241H 			//023C 	3A41
		LDR 	22H, 0H 			//023D 	1822
		ADDWR 	24H, 1H 		//023E 	17A4
		LDR 	23H, 0H 			//023F 	1823
		ADDWFC 	25H, 1H 		//0240 	0DA5
		LSLF 	22H, 1H 		//0241 	05A2
		RLR 	23H, 1H 			//0242 	1DA3
		LSRF 	21H, 1H 		//0243 	06A1
		RRR 	20H, 1H 			//0244 	1CA0
		LDR 	20H, 0H 			//0245 	1820
		IORWR 	21H, 0H 		//0246 	1421
		BTSS 	3H, 2H 			//0247 	2D03
		LJUMP 	23BH 			//0248 	3A3B
		LDR 	25H, 0H 			//0249 	1825
		STR 	21H 			//024A 	10A1
		LDR 	24H, 0H 			//024B 	1824
		STR 	20H 			//024C 	10A0
		RET 					//024D 	1008

		//;main.c: 43: OSCCON = 0B01110001;
		LDWI 	71H 			//024E 	0071
		MOVLB 	1H 			//024F 	1021
		STR 	19H 			//0250 	1099

		//;main.c: 44: INTCON = 0B00000000;
		CLRF 	BH 			//0251 	118B

		//;main.c: 47: PORTA = 0B00000000;
		MOVLB 	0H 			//0252 	1020
		CLRF 	CH 			//0253 	118C

		//;main.c: 48: TRISA = 0B10010000;
		LDWI 	90H 			//0254 	0090
		MOVLB 	1H 			//0255 	1021
		STR 	CH 			//0256 	108C

		//;main.c: 49: PORTB = 0B00000000;
		MOVLB 	0H 			//0257 	1020
		CLRF 	DH 			//0258 	118D

		//;main.c: 50: TRISB = 0B10000101;
		LDWI 	85H 			//0259 	0085
		MOVLB 	1H 			//025A 	1021
		STR 	DH 			//025B 	108D

		//;main.c: 51: PORTC = 0B00000000;
		MOVLB 	0H 			//025C 	1020
		CLRF 	EH 			//025D 	118E

		//;main.c: 52: TRISC = 0B00000000;
		MOVLB 	1H 			//025E 	1021
		CLRF 	EH 			//025F 	118E

		//;main.c: 55: WPUA = 0B00010000;
		LDWI 	10H 			//0260 	0010
		MOVLB 	3H 			//0261 	1023
		STR 	CH 			//0262 	108C

		//;main.c: 56: WPUB = 0B10000101;
		LDWI 	85H 			//0263 	0085
		STR 	DH 			//0264 	108D

		//;main.c: 57: WPUC = 0B00000000;
		CLRF 	EH 			//0265 	118E

		//;main.c: 60: WPDA = 0B00000000;
		MOVLB 	4H 			//0266 	1024
		CLRF 	CH 			//0267 	118C

		//;main.c: 61: WPDB = 0B00000000;
		CLRF 	DH 			//0268 	118D

		//;main.c: 62: WPDC = 0B00000000;
		CLRF 	EH 			//0269 	118E

		//;main.c: 65: PSRC0 = 0B11111111;
		LDWI 	FFH 			//026A 	00FF
		MOVLB 	2H 			//026B 	1022
		STR 	1AH 			//026C 	109A

		//;main.c: 66: PSRC1 = 0B11111111;
		STR 	1BH 			//026D 	109B

		//;main.c: 67: PSRC2 = 0B11111111;
		STR 	1CH 			//026E 	109C

		//;main.c: 70: PSINK0 = 0B11111111;
		MOVLB 	3H 			//026F 	1023
		STR 	1AH 			//0270 	109A

		//;main.c: 71: PSINK1 = 0B11111111;
		STR 	1BH 			//0271 	109B

		//;main.c: 72: PSINK2 = 0B11111111;
		STR 	1CH 			//0272 	109C

		//;main.c: 74: ANSELA = 0B00000000;
		CLRF 	17H 			//0273 	1197
		RET 					//0274 	1008

		//;timer.c: 49: PCKEN |= 0B00001000;
		MOVLB 	1H 			//0275 	1021
		BSR 	1AH, 3H 			//0276 	259A

		//;timer.c: 50: TIM4CR1 = 0B00000101;
		LDWI 	5H 			//0277 	0005
		MOVLB 	2H 			//0278 	1022
		STR 	11H 			//0279 	1091

		//;timer.c: 51: TIM4IER = 0B00000001;
		LDWI 	1H 			//027A 	0001
		STR 	12H 			//027B 	1092

		//;timer.c: 52: TIM4SR = 0;
		CLRF 	13H 			//027C 	1193

		//;timer.c: 53: TIM4EGR = 0;
		CLRF 	14H 			//027D 	1194

		//;timer.c: 54: TIM4CNTR = 0;
		CLRF 	15H 			//027E 	1195

		//;timer.c: 55: TIM4PSCR = 6;
		LDWI 	6H 			//027F 	0006
		STR 	16H 			//0280 	1096

		//;timer.c: 56: TIM4ARR = 249;
		LDWI 	F9H 			//0281 	00F9
		STR 	17H 			//0282 	1097
		RET 					//0283 	1008

		//;uart.c: 35: PCKEN |= 0B00100000;
		MOVLB 	1H 			//0284 	1021
		BSR 	1AH, 5H 			//0285 	269A

		//;uart.c: 36: URIER = 0B00000001;
		LDWI 	1H 			//0286 	0001
		MOVLB 	9H 			//0287 	1029
		STR 	EH 			//0288 	108E

		//;uart.c: 37: URLCR = 0B00000001;
		STR 	FH 			//0289 	108F

		//;uart.c: 38: URMCR = 0B00011000;
		LDWI 	18H 			//028A 	0018
		STR 	11H 			//028B 	1091

		//;uart.c: 39: URDLL = 104;
		LDWI 	68H 			//028C 	0068
		STR 	14H 			//028D 	1094

		//;uart.c: 40: URDLH = 0;
		CLRF 	15H 			//028E 	1195

		//;uart.c: 41: TCF = 1;
		BSR 	1CH, 0H 			//028F 	241C

		//;uart.c: 42: AFP1 = 0;
		MOVLB 	3H 			//0290 	1023
		CLRF 	1FH 			//0291 	119F

		//;uart.c: 43: ODCON0 = 0B00000000;
		MOVLB 	4H 			//0292 	1024
		CLRF 	1FH 			//0293 	119F
		RET 					//0294 	1008

		//;radio.c: 69: do { PC1 = 0; } while(0);
		MOVLB 	0H 			//0295 	1020
		BCR 	EH, 1H 			//0296 	208E

		//;radio.c: 70: DelayMs(50);
		LCALL 	36EH 			//0297 	336E
		MOVLP 	0H 			//0298 	0180
		LJUMP 	199H 			//0299 	3999

		//;sleep_wake.c: 5: EPS0 = 0B00000000;
		MOVLB 	2H 			//029A 	1022
		CLRF 	18H 			//029B 	1198

		//;sleep_wake.c: 8: EPS1 = 0B01000000;
		LDWI 	40H 			//029C 	0040
		STR 	19H 			//029D 	1099

		//;sleep_wake.c: 10: ITYPE0 = 0B00000000;
		CLRF 	1EH 			//029E 	119E

		//;sleep_wake.c: 12: ITYPE1 = 0B10000000;
		LDWI 	80H 			//029F 	0080
		STR 	1FH 			//02A0 	109F

		//;sleep_wake.c: 14: EPIE0 = 0B10010000;
		LDWI 	90H 			//02A1 	0090
		MOVLB 	1H 			//02A2 	1021
		STR 	14H 			//02A3 	1094

		//;sleep_wake.c: 16: INTCON = 0B11000000;
		LDWI 	C0H 			//02A4 	00C0
		STR 	BH 			//02A5 	108B
		RET 					//02A6 	1008

		//;radio.c: 60: do { PC1 = 1; } while(0);
		BSR 	EH, 1H 			//02A7 	248E
		RET 					//02A8 	1008
		MOVLB 	1H 			//02A9 	1021
		STR 	20H 			//02AA 	10A0

		//;app_fsm.c: 40: g_system_evt = evt;
		STR 	6CH 			//02AB 	10EC
		RET 					//02AC 	1008
		MOVLB 	0H 			//02AD 	1020
		CLRF 	50H 			//02AE 	11D0
		CLRF 	51H 			//02AF 	11D1
		RET 					//02B0 	1008

		//;uart.c: 123: char tmp[6] = {0};
		LDWI 	E5H 			//02B1 	00E5
		STR 	6H 			//02B2 	1086
		LDWI 	0H 			//02B3 	0000
		STR 	7H 			//02B4 	1087
		LDWI 	ABH 			//02B5 	00AB
		STR 	4H 			//02B6 	1084
		LDWI 	0H 			//02B7 	0000
		STR 	5H 			//02B8 	1085
		LDWI 	6H 			//02B9 	0006
		STR 	2AH 			//02BA 	10AA
		MOVIW 	FSR1++ 		//02BB 	1016
		MOVWI 	FSR0++ 		//02BC 	101A
		DECRSZ 	2AH, 1H 		//02BD 	1BAA
		LJUMP 	2BBH 			//02BE 	3ABB

		//;uart.c: 124: unsigned char i = 0, j = 0;
		CLRF 	32H 			//02BF 	11B2
		CLRF 	31H 			//02C0 	11B1

		//;uart.c: 125: if(val == 0) { buf[0] = '0'; buf[1] = '\0'; return 1; }
		LDR 	27H, 0H 			//02C1 	1827
		IORWR 	28H, 0H 		//02C2 	1428
		BTSS 	3H, 2H 			//02C3 	2D03
		LJUMP 	2ECH 			//02C4 	3AEC
		LDR 	29H, 0H 			//02C5 	1829
		STR 	6H 			//02C6 	1086
		LDWI 	30H 			//02C7 	0030
		CLRF 	7H 			//02C8 	1187
		STR 	1H 			//02C9 	1081
		INCR 	29H, 0H 		//02CA 	1A29
		STR 	6H 			//02CB 	1086
		CLRF 	1H 			//02CC 	1181
		RET 					//02CD 	1008
		LDR 	32H, 0H 			//02CE 	1832
		ADDWI 	ABH 			//02CF 	0EAB
		STR 	6H 			//02D0 	1086
		LDWI 	AH 			//02D1 	000A
		CLRF 	7H 			//02D2 	1187
		STR 	20H 			//02D3 	10A0
		CLRF 	21H 			//02D4 	11A1
		LDR 	28H, 0H 			//02D5 	1828
		STR 	23H 			//02D6 	10A3
		LDR 	27H, 0H 			//02D7 	1827
		STR 	22H 			//02D8 	10A2
		LCALL 	326H 			//02D9 	3326
		MOVLP 	0H 			//02DA 	0180
		LDR 	20H, 0H 			//02DB 	1820
		ADDWI 	30H 			//02DC 	0E30
		STR 	1H 			//02DD 	1081
		LDWI 	AH 			//02DE 	000A
		INCR 	32H, 1H 		//02DF 	1AB2
		STR 	20H 			//02E0 	10A0
		CLRF 	21H 			//02E1 	11A1
		LDR 	28H, 0H 			//02E2 	1828
		STR 	23H 			//02E3 	10A3
		LDR 	27H, 0H 			//02E4 	1827
		STR 	22H 			//02E5 	10A2
		LCALL 	301H 			//02E6 	3301
		MOVLP 	0H 			//02E7 	0180
		LDR 	21H, 0H 			//02E8 	1821
		STR 	28H 			//02E9 	10A8
		LDR 	20H, 0H 			//02EA 	1820
		STR 	27H 			//02EB 	10A7
		LDR 	27H, 0H 			//02EC 	1827
		IORWR 	28H, 0H 		//02ED 	1428
		BTSC 	3H, 2H 			//02EE 	2903
		LJUMP 	2FBH 			//02EF 	3AFB
		LJUMP 	2CEH 			//02F0 	3ACE
		LCALL 	388H 			//02F1 	3388
		MOVLP 	0H 			//02F2 	0180
		DECR 	32H, 1H 		//02F3 	13B2
		LDR 	32H, 0H 			//02F4 	1832
		ADDWI 	ABH 			//02F5 	0EAB
		STR 	4H 			//02F6 	1084
		CLRF 	5H 			//02F7 	1185
		LDR 	0H, 0H 			//02F8 	1800
		STR 	1H 			//02F9 	1081
		INCR 	31H, 1H 		//02FA 	1AB1
		LDR 	32H, 0H 			//02FB 	1832
		BTSS 	3H, 2H 			//02FC 	2D03
		LJUMP 	2F1H 			//02FD 	3AF1

		//;uart.c: 128: buf[j] = '\0';
		LCALL 	388H 			//02FE 	3388
		CLRF 	1H 			//02FF 	1181
		RET 					//0300 	1008
		CLRF 	25H 			//0301 	11A5
		CLRF 	26H 			//0302 	11A6
		LDR 	20H, 0H 			//0303 	1820
		IORWR 	21H, 0H 		//0304 	1421
		BTSC 	3H, 2H 			//0305 	2903
		LJUMP 	321H 			//0306 	3B21
		CLRF 	24H 			//0307 	11A4
		INCR 	24H, 1H 		//0308 	1AA4
		BTSC 	21H, 7H 		//0309 	2BA1
		LJUMP 	30EH 			//030A 	3B0E
		LSLF 	20H, 1H 		//030B 	05A0
		RLR 	21H, 1H 			//030C 	1DA1
		LJUMP 	308H 			//030D 	3B08
		LSLF 	25H, 1H 		//030E 	05A5
		RLR 	26H, 1H 			//030F 	1DA6
		LDR 	21H, 0H 			//0310 	1821
		SUBWR 	23H, 0H 		//0311 	1223
		BTSS 	3H, 2H 			//0312 	2D03
		LJUMP 	316H 			//0313 	3B16
		LDR 	20H, 0H 			//0314 	1820
		SUBWR 	22H, 0H 		//0315 	1222
		BTSS 	3H, 0H 			//0316 	2C03
		LJUMP 	31DH 			//0317 	3B1D
		LDR 	20H, 0H 			//0318 	1820
		SUBWR 	22H, 1H 		//0319 	12A2
		LDR 	21H, 0H 			//031A 	1821
		SUBWFB 	23H, 1H 		//031B 	0BA3
		BSR 	25H, 0H 			//031C 	2425
		LSRF 	21H, 1H 		//031D 	06A1
		RRR 	20H, 1H 			//031E 	1CA0
		DECRSZ 	24H, 1H 		//031F 	1BA4
		LJUMP 	30EH 			//0320 	3B0E
		LDR 	26H, 0H 			//0321 	1826
		STR 	21H 			//0322 	10A1
		LDR 	25H, 0H 			//0323 	1825
		STR 	20H 			//0324 	10A0
		RET 					//0325 	1008
		LDR 	20H, 0H 			//0326 	1820
		IORWR 	21H, 0H 		//0327 	1421
		BTSC 	3H, 2H 			//0328 	2903
		LJUMP 	341H 			//0329 	3B41
		CLRF 	24H 			//032A 	11A4
		INCR 	24H, 1H 		//032B 	1AA4
		BTSC 	21H, 7H 		//032C 	2BA1
		LJUMP 	331H 			//032D 	3B31
		LSLF 	20H, 1H 		//032E 	05A0
		RLR 	21H, 1H 			//032F 	1DA1
		LJUMP 	32BH 			//0330 	3B2B
		LDR 	21H, 0H 			//0331 	1821
		SUBWR 	23H, 0H 		//0332 	1223
		BTSS 	3H, 2H 			//0333 	2D03
		LJUMP 	337H 			//0334 	3B37
		LDR 	20H, 0H 			//0335 	1820
		SUBWR 	22H, 0H 		//0336 	1222
		BTSS 	3H, 0H 			//0337 	2C03
		LJUMP 	33DH 			//0338 	3B3D
		LDR 	20H, 0H 			//0339 	1820
		SUBWR 	22H, 1H 		//033A 	12A2
		LDR 	21H, 0H 			//033B 	1821
		SUBWFB 	23H, 1H 		//033C 	0BA3
		LSRF 	21H, 1H 		//033D 	06A1
		RRR 	20H, 1H 			//033E 	1CA0
		DECRSZ 	24H, 1H 		//033F 	1BA4
		LJUMP 	331H 			//0340 	3B31
		LDR 	23H, 0H 			//0341 	1823
		STR 	21H 			//0342 	10A1
		LDR 	22H, 0H 			//0343 	1822
		STR 	20H 			//0344 	10A0
		RET 					//0345 	1008

		//;uart.c: 221: Radio_Wake();
		LCALL 	295H 			//0346 	3295
		MOVLP 	0H 			//0347 	0180

		//;uart.c: 222: DelayMs(20);
		LDWI 	14H 			//0348 	0014
		STR 	22H 			//0349 	10A2
		CLRF 	23H 			//034A 	11A3
		LJUMP 	199H 			//034B 	3999
		LCALL 	353H 			//034C 	3353
		MOVLP 	0H 			//034D 	0180
		MOVLB 	1H 			//034E 	1021
		LDR 	6BH, 0H 			//034F 	186B
		LCALL 	357H 			//0350 	3357
		MOVLP 	0H 			//0351 	0180
		LJUMP 	67H 			//0352 	3867

		//;motor.c: 50: PORTBbits.PB1 = 0;
		MOVLB 	0H 			//0353 	1020
		BCR 	DH, 1H 			//0354 	208D

		//;motor.c: 52: s_motor_state = MOTOR_IDLE;
		BCR 	CH, 0H 			//0355 	200C
		RET 					//0356 	1008
		STR 	26H 			//0357 	10A6

		//;uart.c: 210: unsigned char data[2];
		//;uart.c: 211: data[0] = 0x00;
		CLRF 	27H 			//0358 	11A7

		//;uart.c: 212: data[1] = is_open ? 0x01 : 0x00;
		LDR 	26H, 0H 			//0359 	1826
		BTSC 	3H, 2H 			//035A 	2903
		LJUMP 	35EH 			//035B 	3B5E
		LDWI 	1H 			//035C 	0001
		LJUMP 	35FH 			//035D 	3B5F
		LDWI 	0H 			//035E 	0000
		STR 	28H 			//035F 	10A8

		//;uart.c: 213: UART_SendFrame(0x03u, data, 2);
		LDWI 	A7H 			//0360 	00A7
		STR 	21H 			//0361 	10A1
		LDWI 	2H 			//0362 	0002
		STR 	22H 			//0363 	10A2
		LDWI 	3H 			//0364 	0003
		LJUMP 	1B0H 			//0365 	39B0
		LDR 	4EH, 0H 			//0366 	184E
		STR 	21H 			//0367 	10A1
		LDR 	4DH, 0H 			//0368 	184D
		STR 	20H 			//0369 	10A0
		LDWI 	5H 			//036A 	0005
		STR 	22H 			//036B 	10A2
		CLRF 	23H 			//036C 	11A3
		RET 					//036D 	1008
		LDWI 	32H 			//036E 	0032
		MOVLB 	1H 			//036F 	1021
		STR 	22H 			//0370 	10A2
		CLRF 	23H 			//0371 	11A3
		RET 					//0372 	1008
		LDR 	22H, 0H 			//0373 	1822
		STR 	24H 			//0374 	10A4
		LDR 	21H, 0H 			//0375 	1821
		STR 	23H 			//0376 	10A3
		LDR 	26H, 0H 			//0377 	1826
		ADDWR 	23H, 0H 		//0378 	1723
		STR 	4H 			//0379 	1084
		LDR 	24H, 0H 			//037A 	1824
		BTSC 	3H, 0H 			//037B 	2803
		INCR 	24H, 0H 		//037C 	1A24
		STR 	5H 			//037D 	1085
		RET 					//037E 	1008
		LDR 	21H, 0H 			//037F 	1821
		STR 	5H 			//0380 	1085
		LDR 	20H, 0H 			//0381 	1820
		STR 	4H 			//0382 	1084
		LDWI 	B3H 			//0383 	00B3
		ADDWR 	4H, 1H 		//0384 	1784
		LDWI 	85H 			//0385 	0085
		ADDWFC 	5H, 1H 		//0386 	0D85
		RET 					//0387 	1008
		LDR 	31H, 0H 			//0388 	1831
		ADDWR 	29H, 0H 		//0389 	1729
		STR 	2AH 			//038A 	10AA
		STR 	6H 			//038B 	1086
		CLRF 	7H 			//038C 	1187
		RET 					//038D 	1008
		STR 	19H 			//038E 	1099
		LDWI 	14H 			//038F 	0014
		MOVLB 	1H 			//0390 	1021
		STR 	22H 			//0391 	10A2
		CLRF 	23H 			//0392 	11A3
		RET 					//0393 	1008

		//;uart.c: 55: static ParserState ps = WAIT_HDR;
		//;uart.c: 56: static unsigned char rx_buf[8];
		//;uart.c: 57: static unsigned char data_idx = 0;
		//;uart.c: 58: static unsigned char data_len = 0;
		//;uart.c: 60: if(URRXNE && RXNEF) {
		BTSC 	EH, 0H 			//0394 	280E
		BTSS 	12H, 0H 		//0395 	2C12
		RET 					//0396 	1008

		//;uart.c: 61: unsigned char b = URDATAL;
		LDR 	CH, 0H 			//0397 	180C
		MOVLB 	0H 			//0398 	1020
		STR 	43H 			//0399 	10C3

		//;uart.c: 62: if(b == 0xFF) { ps = WAIT_HDR; }
		INCRSZ 	43H, 0H 		//039A 	1F43
		LJUMP 	41CH 			//039B 	3C1C
		CLRF 	54H 			//039C 	11D4
		LJUMP 	41CH 			//039D 	3C1C

		//;uart.c: 65: if(b == 0xFF) { ps = RX_SRC; }
		INCRSZ 	43H, 0H 		//039E 	1F43
		RET 					//039F 	1008
		CLRF 	54H 			//03A0 	11D4
		INCR 	54H, 1H 		//03A1 	1AD4
		RET 					//03A2 	1008

		//;uart.c: 69: if(b == 0xABu) { ps = WAIT_HDR; break; }
		LDWI 	ABH 			//03A3 	00AB
		XORWR 	43H, 0H 		//03A4 	1643
		BTSS 	3H, 2H 			//03A5 	2D03
		LJUMP 	3AAH 			//03A6 	3BAA
		MOVLB 	0H 			//03A7 	1020
		CLRF 	54H 			//03A8 	11D4
		RET 					//03A9 	1008

		//;uart.c: 70: rx_buf[0] = b;
		LDR 	43H, 0H 			//03AA 	1843
		STR 	44H 			//03AB 	10C4

		//;uart.c: 71: ps = RX_FUNC;
		LDWI 	2H 			//03AC 	0002
		STR 	54H 			//03AD 	10D4

		//;uart.c: 72: break;
		RET 					//03AE 	1008

		//;uart.c: 75: data_len = func_data_len(b);
		LDR 	43H, 0H 			//03AF 	1843
		LCALL 	487H 			//03B0 	3487
		MOVLP 	3H 			//03B1 	0183
		STR 	52H 			//03B2 	10D2

		//;uart.c: 76: if(data_len == 0xFF) { ps = WAIT_HDR; break; }
		INCRSZ 	52H, 0H 		//03B3 	1F52
		LJUMP 	3B6H 			//03B4 	3BB6
		LJUMP 	3A7H 			//03B5 	3BA7

		//;uart.c: 77: rx_buf[1] = b;
		LDR 	43H, 0H 			//03B6 	1843
		STR 	45H 			//03B7 	10C5

		//;uart.c: 78: data_idx = 0;
		CLRF 	53H 			//03B8 	11D3

		//;uart.c: 79: ps = (data_len > 0) ? RX_DATA : RX_TAIL;
		LDR 	52H, 0H 			//03B9 	1852
		BTSS 	3H, 2H 			//03BA 	2D03
		LJUMP 	3BEH 			//03BB 	3BBE
		LDWI 	4H 			//03BC 	0004
		LJUMP 	3BFH 			//03BD 	3BBF
		LDWI 	3H 			//03BE 	0003
		STR 	3EH 			//03BF 	10BE
		CLRF 	3FH 			//03C0 	11BF
		STR 	54H 			//03C1 	10D4

		//;uart.c: 80: break;
		RET 					//03C2 	1008

		//;uart.c: 83: rx_buf[2 + data_idx] = b;
		LDR 	53H, 0H 			//03C3 	1853
		ADDWI 	46H 			//03C4 	0E46
		STR 	6H 			//03C5 	1086
		CLRF 	7H 			//03C6 	1187
		LDR 	43H, 0H 			//03C7 	1843
		STR 	1H 			//03C8 	1081

		//;uart.c: 84: if(++data_idx >= data_len) { ps = RX_TAIL; }
		LDR 	52H, 0H 			//03C9 	1852
		INCR 	53H, 1H 		//03CA 	1AD3
		SUBWR 	53H, 0H 		//03CB 	1253
		BTSS 	3H, 0H 			//03CC 	2C03
		RET 					//03CD 	1008
		LDWI 	4H 			//03CE 	0004
		STR 	54H 			//03CF 	10D4
		RET 					//03D0 	1008

		//;uart.c: 88: if(b == 0xFE) {
		LDWI 	FEH 			//03D1 	00FE
		XORWR 	43H, 0H 		//03D2 	1643
		BTSS 	3H, 2H 			//03D3 	2D03
		LJUMP 	3A7H 			//03D4 	3BA7

		//;uart.c: 90: if(rx_buf[1] == 0x03u) {
		LDWI 	3H 			//03D5 	0003
		XORWR 	45H, 0H 		//03D6 	1645
		BTSS 	3H, 2H 			//03D7 	2D03
		LJUMP 	3ECH 			//03D8 	3BEC

		//;uart.c: 92: if(rx_buf[2] == 0x00 && rx_buf[3] == 0x01)
		LDR 	46H, 0H 			//03D9 	1846
		BTSS 	3H, 2H 			//03DA 	2D03
		LJUMP 	3E2H 			//03DB 	3BE2
		DECRSZ 	47H, 0H 		//03DC 	1B47
		LJUMP 	3E2H 			//03DD 	3BE2

		//;uart.c: 93: FSM_SendEvent(EV_CMD_OPEN);
		LDWI 	6H 			//03DE 	0006
		LCALL 	483H 			//03DF 	3483
		MOVLP 	3H 			//03E0 	0183
		LJUMP 	3A7H 			//03E1 	3BA7

		//;uart.c: 94: else if(rx_buf[2] == 0x00 && rx_buf[3] == 0x00)
		LDR 	46H, 0H 			//03E2 	1846
		BTSS 	3H, 2H 			//03E3 	2D03
		LJUMP 	3A7H 			//03E4 	3BA7
		LDR 	47H, 0H 			//03E5 	1847
		BTSS 	3H, 2H 			//03E6 	2D03
		LJUMP 	3A7H 			//03E7 	3BA7

		//;uart.c: 95: FSM_SendEvent(EV_CMD_CLOSE);
		LDWI 	7H 			//03E8 	0007
		LCALL 	483H 			//03E9 	3483
		MOVLP 	3H 			//03EA 	0183
		LJUMP 	3A7H 			//03EB 	3BA7

		//;uart.c: 97: else if(rx_buf[1] == 0x01u && g_current_state == ST_PAIRING) {
		DECRSZ 	45H, 0H 		//03EC 	1B45
		LJUMP 	3A7H 			//03ED 	3BA7
		LDWI 	2H 			//03EE 	0002
		MOVLB 	1H 			//03EF 	1021
		XORWR 	64H, 0H 		//03F0 	1664
		BTSS 	3H, 2H 			//03F1 	2D03
		LJUMP 	3A7H 			//03F2 	3BA7

		//;uart.c: 99: unsigned int addr = 0;
		MOVLB 	0H 			//03F3 	1020
		CLRF 	40H 			//03F4 	11C0
		CLRF 	41H 			//03F5 	11C1

		//;uart.c: 100: unsigned char i;
		//;uart.c: 101: for(i = 0; i < 5; i++) {
		CLRF 	42H 			//03F6 	11C2

		//;uart.c: 102: addr = addr * 10 + rx_buf[2 + i];
		LDR 	42H, 0H 			//03F7 	1842
		ADDWI 	46H 			//03F8 	0E46
		STR 	6H 			//03F9 	1086
		CLRF 	7H 			//03FA 	1187
		LDR 	1H, 0H 			//03FB 	1801
		STR 	3CH 			//03FC 	10BC
		CLRF 	3DH 			//03FD 	11BD
		LDR 	41H, 0H 			//03FE 	1841
		STR 	71H 			//03FF 	10F1
		LDR 	40H, 0H 			//0400 	1840
		STR 	70H 			//0401 	10F0
		LDWI 	AH 			//0402 	000A
		STR 	72H 			//0403 	10F2
		CLRF 	73H 			//0404 	11F3
		LCALL 	569H 			//0405 	3569
		MOVLP 	3H 			//0406 	0183
		LDR 	3CH, 0H 			//0407 	183C
		ADDWR 	70H, 0H 		//0408 	1770
		STR 	40H 			//0409 	10C0
		LDR 	3DH, 0H 			//040A 	183D
		ADDWFC 	71H, 0H 		//040B 	0D71
		STR 	41H 			//040C 	10C1
		LDWI 	5H 			//040D 	0005
		INCR 	42H, 1H 		//040E 	1AC2
		SUBWR 	42H, 0H 		//040F 	1242
		BTSS 	3H, 0H 			//0410 	2C03
		LJUMP 	3F7H 			//0411 	3BF7

		//;uart.c: 103: }
		//;uart.c: 104: UART_SendATCmd_ADR(addr);
		LDR 	41H, 0H 			//0412 	1841
		STR 	7CH 			//0413 	10FC
		LDR 	40H, 0H 			//0414 	1840
		STR 	7BH 			//0415 	10FB
		LCALL 	498H 			//0416 	3498
		MOVLP 	3H 			//0417 	0183

		//;uart.c: 105: FSM_SendEvent(EV_PAIR_SUCCESS);
		LDWI 	4H 			//0418 	0004
		LCALL 	483H 			//0419 	3483
		MOVLP 	3H 			//041A 	0183
		LJUMP 	3A7H 			//041B 	3BA7
		LDR 	54H, 0H 			//041C 	1854
		STR 	4H 			//041D 	1084
		LDWI 	5H 			//041E 	0005
		SUBWR 	4H, 0H 		//041F 	1204
		BTSC 	3H, 0H 			//0420 	2803
		LJUMP 	3A7H 			//0421 	3BA7
		MOVLP 	6H 			//0422 	0186
		LSLF 	4H, 0H 			//0423 	0504
		ADDWI 	2EH 			//0424 	0E2E
		STR 	2H 			//0425 	1082
		RET 					//0426 	1008

		//;timer.c: 68: g_timer_count++;
		MOVLB 	0H 			//0427 	1020
		INCR 	50H, 1H 		//0428 	1AD0
		BTSC 	3H, 2H 			//0429 	2903
		INCR 	51H, 1H 		//042A 	1AD1

		//;timer.c: 71: if(g_timer_count >= 10000) {
		LDWI 	27H 			//042B 	0027
		SUBWR 	51H, 0H 		//042C 	1251
		LDWI 	10H 			//042D 	0010
		BTSC 	3H, 2H 			//042E 	2903
		SUBWR 	50H, 0H 		//042F 	1250
		BTSS 	3H, 0H 			//0430 	2C03
		LJUMP 	438H 			//0431 	3C38

		//;timer.c: 72: FSM_SendEvent(EV_TIMEOUT);
		LDWI 	2H 			//0432 	0002
		LCALL 	483H 			//0433 	3483
		MOVLP 	3H 			//0434 	0183

		//;timer.c: 73: g_timer_count = 0;
		MOVLB 	0H 			//0435 	1020
		CLRF 	50H 			//0436 	11D0
		CLRF 	51H 			//0437 	11D1

		//;timer.c: 74: }
		//;timer.c: 77: if(PORTBbits.PB7 == 0) {
		BTSC 	DH, 7H 			//0438 	2B8D
		LJUMP 	448H 			//0439 	3C48

		//;timer.c: 78: key_press_cnt++;
		INCR 	4EH, 1H 		//043A 	1ACE
		BTSC 	3H, 2H 			//043B 	2903
		INCR 	4FH, 1H 		//043C 	1ACF

		//;timer.c: 79: if(key_press_cnt == 2000) {
		LDWI 	D0H 			//043D 	00D0
		XORWR 	4EH, 0H 		//043E 	164E
		LDWI 	7H 			//043F 	0007
		BTSC 	3H, 2H 			//0440 	2903
		XORWR 	4FH, 0H 		//0441 	164F

		//;timer.c: 80: FSM_SendEvent(EV_LONG_PRESS);
		LDWI 	3H 			//0442 	0003
		BTSS 	3H, 2H 			//0443 	2D03
		LJUMP 	44BH 			//0444 	3C4B
		LCALL 	483H 			//0445 	3483
		MOVLP 	3H 			//0446 	0183
		LJUMP 	44AH 			//0447 	3C4A

		//;timer.c: 83: key_press_cnt = 0;
		CLRF 	4EH 			//0448 	11CE
		CLRF 	4FH 			//0449 	11CF

		//;timer.c: 84: }
		//;timer.c: 87: if(g_current_state == ST_MOTOR_RUNNING) {
		LDWI 	3H 			//044A 	0003
		MOVLB 	1H 			//044B 	1021
		XORWR 	64H, 0H 		//044C 	1664
		BTSS 	3H, 2H 			//044D 	2D03
		LJUMP 	465H 			//044E 	3C65

		//;timer.c: 88: if(PORTBbits.PB2 == 0 || PORTBbits.PB0 == 0) {
		MOVLB 	0H 			//044F 	1020
		BTSS 	DH, 2H 			//0450 	2D0D
		LJUMP 	454H 			//0451 	3C54
		BTSC 	DH, 0H 			//0452 	280D
		LJUMP 	457H 			//0453 	3C57

		//;timer.c: 89: FSM_SendEvent(EV_LIMIT_HIT);
		LDWI 	8H 			//0454 	0008
		LCALL 	483H 			//0455 	3483
		MOVLP 	3H 			//0456 	0183

		//;timer.c: 90: }
		//;timer.c: 92: if(g_timer_count >= 5000) {
		LDWI 	13H 			//0457 	0013
		MOVLB 	0H 			//0458 	1020
		SUBWR 	51H, 0H 		//0459 	1251
		LDWI 	88H 			//045A 	0088
		BTSC 	3H, 2H 			//045B 	2903
		SUBWR 	50H, 0H 		//045C 	1250

		//;timer.c: 93: FSM_SendEvent(EV_TIMEOUT);
		LDWI 	2H 			//045D 	0002
		BTSS 	3H, 0H 			//045E 	2C03
		LJUMP 	466H 			//045F 	3C66
		LCALL 	483H 			//0460 	3483
		MOVLP 	3H 			//0461 	0183

		//;timer.c: 94: g_timer_count = 0;
		MOVLB 	0H 			//0462 	1020
		CLRF 	50H 			//0463 	11D0
		CLRF 	51H 			//0464 	11D1

		//;timer.c: 95: }
		//;timer.c: 96: }
		//;timer.c: 99: if(g_current_state == ST_PAIRING) {
		LDWI 	2H 			//0465 	0002
		MOVLB 	1H 			//0466 	1021
		XORWR 	64H, 0H 		//0467 	1664
		BTSS 	3H, 2H 			//0468 	2D03
		LJUMP 	47FH 			//0469 	3C7F

		//;timer.c: 100: led_blink_cnt++;
		MOVLB 	0H 			//046A 	1020
		INCR 	4CH, 1H 		//046B 	1ACC
		BTSC 	3H, 2H 			//046C 	2903
		INCR 	4DH, 1H 		//046D 	1ACD

		//;timer.c: 101: if(led_blink_cnt >= 500) {
		LDWI 	1H 			//046E 	0001
		SUBWR 	4DH, 0H 		//046F 	124D
		LDWI 	F4H 			//0470 	00F4
		BTSC 	3H, 2H 			//0471 	2903
		SUBWR 	4CH, 0H 		//0472 	124C
		BTSS 	3H, 0H 			//0473 	2C03
		RET 					//0474 	1008

		//;timer.c: 102: PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1);
		BCR 	3H, 0H 			//0475 	2003
		BTSS 	CH, 1H 			//0476 	2C8C
		BSR 	3H, 0H 			//0477 	2403
		BTSS 	3H, 0H 			//0478 	2C03
		LJUMP 	47DH 			//0479 	3C7D
		MOVLB 	0H 			//047A 	1020
		BSR 	CH, 1H 			//047B 	248C
		LJUMP 	47FH 			//047C 	3C7F
		MOVLB 	0H 			//047D 	1020
		BCR 	CH, 1H 			//047E 	208C

		//;timer.c: 103: led_blink_cnt = 0;
		MOVLB 	0H 			//047F 	1020
		CLRF 	4CH 			//0480 	11CC
		CLRF 	4DH 			//0481 	11CD
		RET 					//0482 	1008
		STR 	70H 			//0483 	10F0

		//;app_fsm.c: 40: g_system_evt = evt;
		MOVLB 	1H 			//0484 	1021
		STR 	6CH 			//0485 	10EC
		RET 					//0486 	1008
		STR 	70H 			//0487 	10F0

		//;uart.c: 21: switch(func) {
		LJUMP 	48CH 			//0488 	3C8C
		RETW 	5H 			//0489 	0405
		RETW 	2H 			//048A 	0402
		RETW 	FFH 			//048B 	04FF
		LDR 	70H, 0H 			//048C 	1870
		XORWI 	1H 			//048D 	0A01
		BTSC 	3H, 2H 			//048E 	2903
		LJUMP 	489H 			//048F 	3C89
		XORWI 	2H 			//0490 	0A02
		BTSC 	3H, 2H 			//0491 	2903
		LJUMP 	48AH 			//0492 	3C8A
		XORWI 	7H 			//0493 	0A07
		BTSC 	3H, 2H 			//0494 	2903
		LJUMP 	48AH 			//0495 	3C8A
		LJUMP 	48BH 			//0496 	3C8B
		RET 					//0497 	1008

		//;uart.c: 163: char buf[20] = "AT+ADR=";
		LDWI 	D0H 			//0498 	00D0
		STR 	6H 			//0499 	1086
		LDWI 	0H 			//049A 	0000
		STR 	7H 			//049B 	1087
		LDWI 	28H 			//049C 	0028
		STR 	4H 			//049D 	1084
		LDWI 	0H 			//049E 	0000
		STR 	5H 			//049F 	1085
		LDWI 	14H 			//04A0 	0014
		STR 	7DH 			//04A1 	10FD
		MOVIW 	FSR1++ 		//04A2 	1016
		MOVWI 	FSR0++ 		//04A3 	101A
		DECRSZ 	7DH, 1H 		//04A4 	1BFD
		LJUMP 	4A2H 			//04A5 	3CA2

		//;uart.c: 164: uint_to_str(addr, buf + 7);
		LDR 	7CH, 0H 			//04A6 	187C
		STR 	78H 			//04A7 	10F8
		LDR 	7BH, 0H 			//04A8 	187B
		STR 	77H 			//04A9 	10F7
		LDWI 	2FH 			//04AA 	002F
		STR 	79H 			//04AB 	10F9
		LCALL 	4D4H 			//04AC 	34D4
		MOVLP 	3H 			//04AD 	0183

		//;uart.c: 165: UART_SendATCmd(buf);
		LDWI 	28H 			//04AE 	0028
		STR 	71H 			//04AF 	10F1
		LDWI 	0H 			//04B0 	0000
		STR 	72H 			//04B1 	10F2
		LCALL 	4B9H 			//04B2 	34B9
		MOVLP 	3H 			//04B3 	0183

		//;uart.c: 166: DelayMs(50);
		LDWI 	32H 			//04B4 	0032
		STR 	72H 			//04B5 	10F2
		CLRF 	73H 			//04B6 	11F3
		LCALL 	57EH 			//04B7 	357E
		RET 					//04B8 	1008

		//;uart.c: 148: unsigned char j = 0;
		CLRF 	76H 			//04B9 	11F6

		//;uart.c: 149: while(cmd[j] != '\0') {
		LCALL 	59EH 			//04BA 	359E
		MOVLP 	3H 			//04BB 	0183
		MOVIW 	FSR0++ 		//04BC 	1012
		BTSC 	3H, 2H 			//04BD 	2903
		LJUMP 	4C6H 			//04BE 	3CC6

		//;uart.c: 150: UART_SendByte(cmd[j]);
		LCALL 	59EH 			//04BF 	359E
		MOVLP 	3H 			//04C0 	0183
		LDR 	0H, 0H 			//04C1 	1800
		LCALL 	4CCH 			//04C2 	34CC
		MOVLP 	3H 			//04C3 	0183

		//;uart.c: 151: j++;
		INCR 	76H, 1H 		//04C4 	1AF6
		LJUMP 	4BAH 			//04C5 	3CBA

		//;uart.c: 152: }
		//;uart.c: 153: UART_SendByte(0x0D);
		LDWI 	DH 			//04C6 	000D
		LCALL 	4CCH 			//04C7 	34CC
		MOVLP 	3H 			//04C8 	0183

		//;uart.c: 154: UART_SendByte(0x0A);
		LDWI 	AH 			//04C9 	000A
		LCALL 	4CCH 			//04CA 	34CC
		RET 					//04CB 	1008
		STR 	70H 			//04CC 	10F0

		//;uart.c: 137: TXEF = 0;
		MOVLB 	9H 			//04CD 	1029
		BCR 	12H, 5H 			//04CE 	2292

		//;uart.c: 138: URDATAL = data;
		LDR 	70H, 0H 			//04CF 	1870
		STR 	CH 			//04D0 	108C

		//;uart.c: 139: while(!TCF) {}
		BTSC 	1CH, 0H 		//04D1 	281C
		RET 					//04D2 	1008
		LJUMP 	4D1H 			//04D3 	3CD1

		//;uart.c: 123: char tmp[6] = {0};
		LDWI 	E5H 			//04D4 	00E5
		STR 	6H 			//04D5 	1086
		LDWI 	0H 			//04D6 	0000
		STR 	7H 			//04D7 	1087
		LDWI 	20H 			//04D8 	0020
		STR 	4H 			//04D9 	1084
		LDWI 	0H 			//04DA 	0000
		STR 	5H 			//04DB 	1085
		LDWI 	6H 			//04DC 	0006
		STR 	7AH 			//04DD 	10FA
		MOVIW 	FSR1++ 		//04DE 	1016
		MOVWI 	FSR0++ 		//04DF 	101A
		DECRSZ 	7AH, 1H 		//04E0 	1BFA
		LJUMP 	4DEH 			//04E1 	3CDE

		//;uart.c: 124: unsigned char i = 0, j = 0;
		CLRF 	27H 			//04E2 	11A7
		CLRF 	26H 			//04E3 	11A6

		//;uart.c: 125: if(val == 0) { buf[0] = '0'; buf[1] = '\0'; return 1; }
		LDR 	77H, 0H 			//04E4 	1877
		IORWR 	78H, 0H 		//04E5 	1478
		BTSS 	3H, 2H 			//04E6 	2D03
		LJUMP 	50FH 			//04E7 	3D0F
		LDR 	79H, 0H 			//04E8 	1879
		STR 	6H 			//04E9 	1086
		LDWI 	30H 			//04EA 	0030
		CLRF 	7H 			//04EB 	1187
		STR 	1H 			//04EC 	1081
		INCR 	79H, 0H 		//04ED 	1A79
		STR 	6H 			//04EE 	1086
		CLRF 	1H 			//04EF 	1181
		RET 					//04F0 	1008
		LDR 	27H, 0H 			//04F1 	1827
		ADDWI 	20H 			//04F2 	0E20
		STR 	6H 			//04F3 	1086
		LDWI 	AH 			//04F4 	000A
		CLRF 	7H 			//04F5 	1187
		STR 	70H 			//04F6 	10F0
		CLRF 	71H 			//04F7 	11F1
		LDR 	78H, 0H 			//04F8 	1878
		STR 	73H 			//04F9 	10F3
		LDR 	77H, 0H 			//04FA 	1877
		STR 	72H 			//04FB 	10F2
		LCALL 	549H 			//04FC 	3549
		MOVLP 	3H 			//04FD 	0183
		LDR 	70H, 0H 			//04FE 	1870
		ADDWI 	30H 			//04FF 	0E30
		STR 	1H 			//0500 	1081
		LDWI 	AH 			//0501 	000A
		INCR 	27H, 1H 		//0502 	1AA7
		STR 	70H 			//0503 	10F0
		CLRF 	71H 			//0504 	11F1
		LDR 	78H, 0H 			//0505 	1878
		STR 	73H 			//0506 	10F3
		LDR 	77H, 0H 			//0507 	1877
		STR 	72H 			//0508 	10F2
		LCALL 	524H 			//0509 	3524
		MOVLP 	3H 			//050A 	0183
		LDR 	71H, 0H 			//050B 	1871
		STR 	78H 			//050C 	10F8
		LDR 	70H, 0H 			//050D 	1870
		STR 	77H 			//050E 	10F7
		LDR 	77H, 0H 			//050F 	1877
		IORWR 	78H, 0H 		//0510 	1478
		BTSC 	3H, 2H 			//0511 	2903
		LJUMP 	51EH 			//0512 	3D1E
		LJUMP 	4F1H 			//0513 	3CF1
		LCALL 	5AAH 			//0514 	35AA
		MOVLP 	3H 			//0515 	0183
		DECR 	27H, 1H 		//0516 	13A7
		LDR 	27H, 0H 			//0517 	1827
		ADDWI 	20H 			//0518 	0E20
		STR 	4H 			//0519 	1084
		CLRF 	5H 			//051A 	1185
		LDR 	0H, 0H 			//051B 	1800
		STR 	1H 			//051C 	1081
		INCR 	26H, 1H 		//051D 	1AA6
		LDR 	27H, 0H 			//051E 	1827
		BTSS 	3H, 2H 			//051F 	2D03
		LJUMP 	514H 			//0520 	3D14

		//;uart.c: 128: buf[j] = '\0';
		LCALL 	5AAH 			//0521 	35AA
		CLRF 	1H 			//0522 	1181
		RET 					//0523 	1008
		CLRF 	74H 			//0524 	11F4
		CLRF 	75H 			//0525 	11F5
		LDR 	70H, 0H 			//0526 	1870
		IORWR 	71H, 0H 		//0527 	1471
		BTSC 	3H, 2H 			//0528 	2903
		LJUMP 	544H 			//0529 	3D44
		CLRF 	76H 			//052A 	11F6
		INCR 	76H, 1H 		//052B 	1AF6
		BTSC 	71H, 7H 		//052C 	2BF1
		LJUMP 	531H 			//052D 	3D31
		LSLF 	70H, 1H 		//052E 	05F0
		RLR 	71H, 1H 			//052F 	1DF1
		LJUMP 	52BH 			//0530 	3D2B
		LSLF 	74H, 1H 		//0531 	05F4
		RLR 	75H, 1H 			//0532 	1DF5
		LDR 	71H, 0H 			//0533 	1871
		SUBWR 	73H, 0H 		//0534 	1273
		BTSS 	3H, 2H 			//0535 	2D03
		LJUMP 	539H 			//0536 	3D39
		LDR 	70H, 0H 			//0537 	1870
		SUBWR 	72H, 0H 		//0538 	1272
		BTSS 	3H, 0H 			//0539 	2C03
		LJUMP 	540H 			//053A 	3D40
		LDR 	70H, 0H 			//053B 	1870
		SUBWR 	72H, 1H 		//053C 	12F2
		LDR 	71H, 0H 			//053D 	1871
		SUBWFB 	73H, 1H 		//053E 	0BF3
		BSR 	74H, 0H 			//053F 	2474
		LSRF 	71H, 1H 		//0540 	06F1
		RRR 	70H, 1H 			//0541 	1CF0
		DECRSZ 	76H, 1H 		//0542 	1BF6
		LJUMP 	531H 			//0543 	3D31
		LDR 	75H, 0H 			//0544 	1875
		STR 	71H 			//0545 	10F1
		LDR 	74H, 0H 			//0546 	1874
		STR 	70H 			//0547 	10F0
		RET 					//0548 	1008
		LDR 	70H, 0H 			//0549 	1870
		IORWR 	71H, 0H 		//054A 	1471
		BTSC 	3H, 2H 			//054B 	2903
		LJUMP 	564H 			//054C 	3D64
		CLRF 	74H 			//054D 	11F4
		INCR 	74H, 1H 		//054E 	1AF4
		BTSC 	71H, 7H 		//054F 	2BF1
		LJUMP 	554H 			//0550 	3D54
		LSLF 	70H, 1H 		//0551 	05F0
		RLR 	71H, 1H 			//0552 	1DF1
		LJUMP 	54EH 			//0553 	3D4E
		LDR 	71H, 0H 			//0554 	1871
		SUBWR 	73H, 0H 		//0555 	1273
		BTSS 	3H, 2H 			//0556 	2D03
		LJUMP 	55AH 			//0557 	3D5A
		LDR 	70H, 0H 			//0558 	1870
		SUBWR 	72H, 0H 		//0559 	1272
		BTSS 	3H, 0H 			//055A 	2C03
		LJUMP 	560H 			//055B 	3D60
		LDR 	70H, 0H 			//055C 	1870
		SUBWR 	72H, 1H 		//055D 	12F2
		LDR 	71H, 0H 			//055E 	1871
		SUBWFB 	73H, 1H 		//055F 	0BF3
		LSRF 	71H, 1H 		//0560 	06F1
		RRR 	70H, 1H 			//0561 	1CF0
		DECRSZ 	74H, 1H 		//0562 	1BF4
		LJUMP 	554H 			//0563 	3D54
		LDR 	73H, 0H 			//0564 	1873
		STR 	71H 			//0565 	10F1
		LDR 	72H, 0H 			//0566 	1872
		STR 	70H 			//0567 	10F0
		RET 					//0568 	1008
		CLRF 	74H 			//0569 	11F4
		CLRF 	75H 			//056A 	11F5
		BTSS 	70H, 0H 		//056B 	2C70
		LJUMP 	571H 			//056C 	3D71
		LDR 	72H, 0H 			//056D 	1872
		ADDWR 	74H, 1H 		//056E 	17F4
		LDR 	73H, 0H 			//056F 	1873
		ADDWFC 	75H, 1H 		//0570 	0DF5
		LSLF 	72H, 1H 		//0571 	05F2
		RLR 	73H, 1H 			//0572 	1DF3
		LSRF 	71H, 1H 		//0573 	06F1
		RRR 	70H, 1H 			//0574 	1CF0
		LDR 	70H, 0H 			//0575 	1870
		IORWR 	71H, 0H 		//0576 	1471
		BTSS 	3H, 2H 			//0577 	2D03
		LJUMP 	56BH 			//0578 	3D6B
		LDR 	75H, 0H 			//0579 	1875
		STR 	71H 			//057A 	10F1
		LDR 	74H, 0H 			//057B 	1874
		STR 	70H 			//057C 	10F0
		RET 					//057D 	1008

		//;timer.c: 32: unsigned char a,b;
		//;timer.c: 33: for(a=0;a<Time;a++)
		CLRF 	76H 			//057E 	11F6
		LDR 	76H, 0H 			//057F 	1876
		STR 	74H 			//0580 	10F4
		CLRF 	75H 			//0581 	11F5
		LDR 	73H, 0H 			//0582 	1873
		SUBWR 	75H, 0H 		//0583 	1275
		BTSS 	3H, 2H 			//0584 	2D03
		LJUMP 	588H 			//0585 	3D88
		LDR 	72H, 0H 			//0586 	1872
		SUBWR 	74H, 0H 		//0587 	1274
		BTSC 	3H, 0H 			//0588 	2803
		RET 					//0589 	1008

		//;timer.c: 34: {
		//;timer.c: 35: for(b=0;b<5;b++)
		CLRF 	77H 			//058A 	11F7

		//;timer.c: 36: {
		//;timer.c: 37: DelayUs(197);
		LDWI 	C5H 			//058B 	00C5
		LCALL 	595H 			//058C 	3595
		MOVLP 	3H 			//058D 	0183
		LDWI 	5H 			//058E 	0005
		INCR 	77H, 1H 		//058F 	1AF7
		SUBWR 	77H, 0H 		//0590 	1277
		BTSS 	3H, 0H 			//0591 	2C03
		LJUMP 	58BH 			//0592 	3D8B
		INCR 	76H, 1H 		//0593 	1AF6
		LJUMP 	57FH 			//0594 	3D7F
		STR 	70H 			//0595 	10F0

		//;timer.c: 18: unsigned char a;
		//;timer.c: 19: for(a=0;a<Time;a++)
		CLRF 	71H 			//0596 	11F1
		LDR 	70H, 0H 			//0597 	1870
		SUBWR 	71H, 0H 		//0598 	1271
		BTSC 	3H, 0H 			//0599 	2803
		RET 					//059A 	1008

		//;timer.c: 20: {
		//;timer.c: 21: __nop();
		NOP 					//059B 	1000
		INCR 	71H, 1H 		//059C 	1AF1
		LJUMP 	597H 			//059D 	3D97
		LDR 	72H, 0H 			//059E 	1872
		STR 	74H 			//059F 	10F4
		LDR 	71H, 0H 			//05A0 	1871
		STR 	73H 			//05A1 	10F3
		LDR 	76H, 0H 			//05A2 	1876
		ADDWR 	73H, 0H 		//05A3 	1773
		STR 	4H 			//05A4 	1084
		LDR 	74H, 0H 			//05A5 	1874
		BTSC 	3H, 0H 			//05A6 	2803
		INCR 	74H, 0H 		//05A7 	1A74
		STR 	5H 			//05A8 	1085
		RET 					//05A9 	1008
		LDR 	26H, 0H 			//05AA 	1826
		ADDWR 	79H, 0H 		//05AB 	1779
		STR 	7AH 			//05AC 	10FA
		STR 	6H 			//05AD 	1086
		CLRF 	7H 			//05AE 	1187
		RET 					//05AF 	1008
		RETW 	0H 			//05B0 	0400
		RETW 	1H 			//05B1 	0401
		RETW 	1H 			//05B2 	0401
		RETW 	8AH 			//05B3 	048A
		RETW 	0H 			//05B4 	0400
		RETW 	1H 			//05B5 	0401
		RETW 	2H 			//05B6 	0402
		RETW 	0H 			//05B7 	0400
		RETW 	31H 			//05B8 	0431
		RETW 	0H 			//05B9 	0400
		RETW 	1H 			//05BA 	0401
		RETW 	3H 			//05BB 	0403
		RETW 	2H 			//05BC 	0402
		RETW 	36H 			//05BD 	0436
		RETW 	0H 			//05BE 	0400
		RETW 	1H 			//05BF 	0401
		RETW 	6H 			//05C0 	0406
		RETW 	3H 			//05C1 	0403
		RETW 	23H 			//05C2 	0423
		RETW 	0H 			//05C3 	0400
		RETW 	1H 			//05C4 	0401
		RETW 	7H 			//05C5 	0407
		RETW 	3H 			//05C6 	0403
		RETW 	1BH 			//05C7 	041B
		RETW 	0H 			//05C8 	0400
		RETW 	2H 			//05C9 	0402
		RETW 	4H 			//05CA 	0404
		RETW 	1H 			//05CB 	0401
		RETW 	1AH 			//05CC 	041A
		RETW 	0H 			//05CD 	0400
		RETW 	2H 			//05CE 	0402
		RETW 	2H 			//05CF 	0402
		RETW 	1H 			//05D0 	0401
		RETW 	19H 			//05D1 	0419
		RETW 	0H 			//05D2 	0400
		RETW 	3H 			//05D3 	0403
		RETW 	2H 			//05D4 	0402
		RETW 	1H 			//05D5 	0401
		RETW 	2CH 			//05D6 	042C
		RETW 	0H 			//05D7 	0400
		RETW 	3H 			//05D8 	0403
		RETW 	8H 			//05D9 	0408
		RETW 	1H 			//05DA 	0401
		RETW 	4CH 			//05DB 	044C
		RETW 	3H 			//05DC 	0403
		RETW 	41H 			//05DD 	0441
		RETW 	54H 			//05DE 	0454
		RETW 	2BH 			//05DF 	042B
		RETW 	46H 			//05E0 	0446
		RETW 	45H 			//05E1 	0445
		RETW 	51H 			//05E2 	0451
		RETW 	3DH 			//05E3 	043D
		RETW 	34H 			//05E4 	0434
		RETW 	33H 			//05E5 	0433
		RETW 	34H 			//05E6 	0434
		RETW 	30H 			//05E7 	0430
		RETW 	30H 			//05E8 	0430
		RETW 	30H 			//05E9 	0430
		RETW 	30H 			//05EA 	0430
		RETW 	30H 			//05EB 	0430
		RETW 	30H 			//05EC 	0430
		RETW 	0H 			//05ED 	0400
		RETW 	41H 			//05EE 	0441
		RETW 	54H 			//05EF 	0454
		RETW 	2BH 			//05F0 	042B
		RETW 	41H 			//05F1 	0441
		RETW 	44H 			//05F2 	0444
		RETW 	52H 			//05F3 	0452
		RETW 	3DH 			//05F4 	043D
		RETW 	0H 			//05F5 	0400
		RETW 	0H 			//05F6 	0400
		RETW 	0H 			//05F7 	0400
		RETW 	0H 			//05F8 	0400
		RETW 	0H 			//05F9 	0400
		RETW 	0H 			//05FA 	0400
		RETW 	0H 			//05FB 	0400
		RETW 	0H 			//05FC 	0400
		RETW 	0H 			//05FD 	0400
		RETW 	0H 			//05FE 	0400
		RETW 	0H 			//05FF 	0400
		RETW 	0H 			//0600 	0400
		RETW 	0H 			//0601 	0400
		RETW 	1H 			//0602 	0401
		RETW 	41H 			//0603 	0441
		RETW 	54H 			//0604 	0454
		RETW 	2BH 			//0605 	042B
		RETW 	55H 			//0606 	0455
		RETW 	41H 			//0607 	0441
		RETW 	52H 			//0608 	0452
		RETW 	54H 			//0609 	0454
		RETW 	3DH 			//060A 	043D
		RETW 	33H 			//060B 	0433
		RETW 	2CH 			//060C 	042C
		RETW 	30H 			//060D 	0430
		RETW 	0H 			//060E 	0400
		RETW 	41H 			//060F 	0441
		RETW 	54H 			//0610 	0454
		RETW 	2BH 			//0611 	042B
		RETW 	50H 			//0612 	0450
		RETW 	42H 			//0613 	0442
		RETW 	3DH 			//0614 	043D
		RETW 	32H 			//0615 	0432
		RETW 	35H 			//0616 	0435
		RETW 	30H 			//0617 	0430
		RETW 	30H 			//0618 	0430
		RETW 	0H 			//0619 	0400
		RETW 	41H 			//061A 	0441
		RETW 	54H 			//061B 	0454
		RETW 	2BH 			//061C 	042B
		RETW 	4DH 			//061D 	044D
		RETW 	4FH 			//061E 	044F
		RETW 	44H 			//061F 	0444
		RETW 	45H 			//0620 	0445
		RETW 	3DH 			//0621 	043D
		RETW 	31H 			//0622 	0431
		RETW 	0H 			//0623 	0400
		RETW 	41H 			//0624 	0441
		RETW 	54H 			//0625 	0454
		RETW 	2BH 			//0626 	042B
		RETW 	50H 			//0627 	0450
		RETW 	57H 			//0628 	0457
		RETW 	52H 			//0629 	0452
		RETW 	3DH 			//062A 	043D
		RETW 	32H 			//062B 	0432
		RETW 	39H 			//062C 	0439
		RETW 	0H 			//062D 	0400
		MOVLP 	3H 			//062E 	0183
		LJUMP 	39EH 			//062F 	3B9E
		MOVLP 	3H 			//0630 	0183
		LJUMP 	3A3H 			//0631 	3BA3
		MOVLP 	3H 			//0632 	0183
		LJUMP 	3AFH 			//0633 	3BAF
		MOVLP 	3H 			//0634 	0183
		LJUMP 	3C3H 			//0635 	3BC3
		MOVLP 	3H 			//0636 	0183
		LJUMP 	3D1H 			//0637 	3BD1
		RETW 	41H 			//0638 	0441
		RETW 	54H 			//0639 	0454
		RETW 	2BH 			//063A 	042B
		RETW 	43H 			//063B 	0443
		RETW 	52H 			//063C 	0452
		RETW 	43H 			//063D 	0443
		RETW 	3DH 			//063E 	043D
		RETW 	31H 			//063F 	0431
		RETW 	0H 			//0640 	0400
		RETW 	41H 			//0641 	0441
		RETW 	54H 			//0642 	0454
		RETW 	2BH 			//0643 	042B
		RETW 	43H 			//0644 	0443
		RETW 	52H 			//0645 	0452
		RETW 	3DH 			//0646 	043D
		RETW 	31H 			//0647 	0431
		RETW 	0H 			//0648 	0400
		RETW 	41H 			//0649 	0441
		RETW 	54H 			//064A 	0454
		RETW 	2BH 			//064B 	042B
		RETW 	57H 			//064C 	0457
		RETW 	54H 			//064D 	0454
		RETW 	3DH 			//064E 	043D
		RETW 	32H 			//064F 	0432
		RETW 	0H 			//0650 	0400
		RETW 	41H 			//0651 	0441
		RETW 	54H 			//0652 	0454
		RETW 	2BH 			//0653 	042B
		RETW 	53H 			//0654 	0453
		RETW 	46H 			//0655 	0446
		RETW 	3DH 			//0656 	043D
		RETW 	37H 			//0657 	0437
		RETW 	0H 			//0658 	0400
		RETW 	41H 			//0659 	0441
		RETW 	54H 			//065A 	0454
		RETW 	2BH 			//065B 	042B
		RETW 	42H 			//065C 	0442
		RETW 	57H 			//065D 	0457
		RETW 	3DH 			//065E 	043D
		RETW 	39H 			//065F 	0439
		RETW 	0H 			//0660 	0400
		STR 	7EH 			//0661 	10FE
		MOVIW 	FSR0++ 		//0662 	1012
		MOVWI 	FSR1++ 		//0663 	101E
		DECRSZ 	7EH, 1H 		//0664 	1BFE
		LJUMP 	662H 			//0665 	3E62
		RETW 	0H 			//0666 	0400
		CLRWDT 			//0667 	1064
		CLRF 	0H 			//0668 	1180
		ADDFSR 	0H, 1H 		//0669 	0101
		DECRSZ 	9H, 1H 		//066A 	1B89
		LJUMP 	668H 			//066B 	3E68
		RETW 	0H 			//066C 	0400
		RETW 	41H 			//066D 	0441
		RETW 	54H 			//066E 	0454
		RETW 	57H 			//066F 	0457
		RETW 	0H 			//0670 	0400
			END
