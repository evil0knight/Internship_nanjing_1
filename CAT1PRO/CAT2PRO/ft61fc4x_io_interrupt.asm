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
		MOVLP 	3H 			//000B 	0183
		LCALL 	398H 			//000C 	3398
		MOVLP 	0H 			//000D 	0180

		//;main.c: 27: }
		//;main.c: 30: if(URRXNE && RXNEF) {
		MOVLB 	9H 			//000E 	1029
		BTSC 	EH, 0H 			//000F 	280E
		BTSS 	12H, 0H 		//0010 	2C12
		LJUMP 	15H 			//0011 	3815

		//;main.c: 31: UART_ISR();
		MOVLP 	3H 			//0012 	0183
		LCALL 	3F4H 			//0013 	33F4

		//;main.c: 32: __nop();
		NOP 					//0014 	1000
		BCR 	7EH, 0H 			//0015 	207E
		RETI 					//0016 	1009
		MOVLP 	0H 			//0017 	0180
		LJUMP 	B9H 			//0018 	38B9
		LJUMP 	2B7H 			//0019 	3AB7
		CLRF 	6BH 			//001A 	11EB
		LCALL 	1EH 			//001B 	301E
		MOVLP 	0H 			//001C 	0180
		LJUMP 	2B7H 			//001D 	3AB7

		//;motor.c: 39: s_motor_state = MOTOR_CLOSING;
		LCALL 	357H 			//001E 	3357

		//;motor.c: 40: PORTBbits.PB1 = 0;
		BCR 	DH, 1H 			//001F 	208D

		//;motor.c: 41: PORTAbits.PA0 = 1;
		BSR 	CH, 0H 			//0020 	240C
		RET 					//0021 	1008
		CLRF 	6BH 			//0022 	11EB
		INCR 	6BH, 1H 		//0023 	1AEB
		LCALL 	27H 			//0024 	3027
		MOVLP 	0H 			//0025 	0180
		LJUMP 	2B7H 			//0026 	3AB7

		//;motor.c: 27: s_motor_state = MOTOR_OPENING;
		LCALL 	357H 			//0027 	3357

		//;motor.c: 28: PORTBbits.PB1 = 1;
		BSR 	DH, 1H 			//0028 	248D

		//;motor.c: 29: PORTAbits.PA0 = 0;
		BCR 	CH, 0H 			//0029 	200C
		RET 					//002A 	1008
		LCALL 	357H 			//002B 	3357
		MOVLP 	0H 			//002C 	0180
		MOVLB 	1H 			//002D 	1021
		LDR 	6BH, 0H 			//002E 	186B
		LJUMP 	35BH 			//002F 	3B5B
		LCALL 	357H 			//0030 	3357
		MOVLP 	0H 			//0031 	0180
		LCALL 	2B1H 			//0032 	32B1
		MOVLP 	0H 			//0033 	0180
		LJUMP 	9AH 			//0034 	389A
		LCALL 	3DH 			//0035 	303D
		MOVLP 	0H 			//0036 	0180
		LDWI 	FFH 			//0037 	00FF
		STR 	33H 			//0038 	10B3
		STR 	34H 			//0039 	10B4
		LCALL 	52H 			//003A 	3052
		MOVLP 	0H 			//003B 	0180
		LJUMP 	2B7H 			//003C 	3AB7

		//;uart.c: 225: Radio_Wake();
		LCALL 	29FH 			//003D 	329F
		MOVLP 	0H 			//003E 	0180

		//;uart.c: 226: DelayMs(20);
		LDWI 	14H 			//003F 	0014
		STR 	22H 			//0040 	10A2
		CLRF 	23H 			//0041 	11A3
		LJUMP 	1A3H 			//0042 	39A3
		LCALL 	48H 			//0043 	3048
		MOVLP 	0H 			//0044 	0180
		LCALL 	2B7H 			//0045 	32B7
		BSR 	CH, 1H 			//0046 	248C
		RET 					//0047 	1008
		LDWI 	ABH 			//0048 	00AB

		//;uart.c: 199: unsigned char data[2] = {0x00, 0x00};
		CLRF 	2BH 			//0049 	11AB
		CLRF 	2CH 			//004A 	11AC

		//;uart.c: 200: UART_SendFrame(0x04u, data, 2);
		STR 	21H 			//004B 	10A1
		LDWI 	2H 			//004C 	0002
		STR 	22H 			//004D 	10A2
		LDWI 	4H 			//004E 	0004
		LCALL 	1BAH 			//004F 	31BA
		MOVLP 	0H 			//0050 	0180

		//;uart.c: 201: led_fast_flashing();
		LJUMP 	71H 			//0051 	3871

		//;uart.c: 167: char buf[20] = "AT+ADR=";
		LDWI 	D0H 			//0052 	00D0
		STR 	6H 			//0053 	1086
		LDWI 	0H 			//0054 	0000
		STR 	7H 			//0055 	1087
		LDWI 	B6H 			//0056 	00B6
		STR 	4H 			//0057 	1084
		LDWI 	0H 			//0058 	0000
		STR 	5H 			//0059 	1085
		LDWI 	14H 			//005A 	0014
		STR 	35H 			//005B 	10B5
		MOVIW 	FSR1++ 		//005C 	1016
		MOVWI 	FSR0++ 		//005D 	101A
		DECRSZ 	35H, 1H 		//005E 	1BB5
		LJUMP 	5CH 			//005F 	385C

		//;uart.c: 168: uint_to_str(addr, buf + 7);
		LDR 	34H, 0H 			//0060 	1834
		STR 	28H 			//0061 	10A8
		LDR 	33H, 0H 			//0062 	1833
		STR 	27H 			//0063 	10A7
		LDWI 	BDH 			//0064 	00BD
		STR 	29H 			//0065 	10A9
		LCALL 	2BBH 			//0066 	32BB
		MOVLP 	0H 			//0067 	0180

		//;uart.c: 169: UART_SendATCmd(buf);
		LDWI 	B6H 			//0068 	00B6
		STR 	21H 			//0069 	10A1
		LDWI 	0H 			//006A 	0000
		STR 	22H 			//006B 	10A2
		LCALL 	190H 			//006C 	3190
		MOVLP 	0H 			//006D 	0180

		//;uart.c: 170: DelayMs(50);
		LCALL 	372H 			//006E 	3372
		MOVLP 	0H 			//006F 	0180
		LJUMP 	1A3H 			//0070 	39A3

		//;led.c: 5: int i=0;
		MOVLB 	1H 			//0071 	1021
		CLRF 	29H 			//0072 	11A9
		CLRF 	2AH 			//0073 	11AA

		//;led.c: 6: for(i=0;i<7;i++)
		CLRF 	29H 			//0074 	11A9
		CLRF 	2AH 			//0075 	11AA

		//;led.c: 7: {
		//;led.c: 8: PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1);
		BCR 	3H, 0H 			//0076 	2003
		MOVLB 	0H 			//0077 	1020
		BTSS 	CH, 1H 			//0078 	2C8C
		BSR 	3H, 0H 			//0079 	2403
		BTSS 	3H, 0H 			//007A 	2C03
		LJUMP 	7FH 			//007B 	387F
		MOVLB 	0H 			//007C 	1020
		BSR 	CH, 1H 			//007D 	248C
		LJUMP 	81H 			//007E 	3881
		MOVLB 	0H 			//007F 	1020
		BCR 	CH, 1H 			//0080 	208C

		//;led.c: 9: DelayMs(50);
		LCALL 	372H 			//0081 	3372
		MOVLP 	0H 			//0082 	0180
		LCALL 	1A3H 			//0083 	31A3
		MOVLP 	0H 			//0084 	0180
		INCR 	29H, 1H 		//0085 	1AA9
		BTSC 	3H, 2H 			//0086 	2903
		INCR 	2AH, 1H 		//0087 	1AAA
		LDR 	2AH, 0H 			//0088 	182A
		XORWI 	80H 			//0089 	0A80
		STR 	28H 			//008A 	10A8
		LDWI 	80H 			//008B 	0080
		SUBWR 	28H, 0H 		//008C 	1228
		BTSS 	3H, 2H 			//008D 	2D03
		LJUMP 	91H 			//008E 	3891
		LDWI 	7H 			//008F 	0007
		SUBWR 	29H, 0H 		//0090 	1229
		BTSC 	3H, 0H 			//0091 	2803
		RET 					//0092 	1008
		LJUMP 	76H 			//0093 	3876
		LCALL 	29FH 			//0094 	329F
		MOVLP 	0H 			//0095 	0180
		LCALL 	2B7H 			//0096 	32B7
		MOVLP 	0H 			//0097 	0180
		BSR 	CH, 1H 			//0098 	248C
		LJUMP 	D8H 			//0099 	38D8

		//;sleep_wake.c: 21: PORTAbits.PA1 = 0;
		BCR 	CH, 1H 			//009A 	208C

		//;sleep_wake.c: 22: Radio_Sleep();
		LCALL 	2B1H 			//009B 	32B1
		MOVLP 	0H 			//009C 	0180

		//;sleep_wake.c: 23: DelayMs(50);
		LCALL 	372H 			//009D 	3372
		MOVLP 	0H 			//009E 	0180
		LCALL 	1A3H 			//009F 	31A3
		MOVLP 	0H 			//00A0 	0180

		//;sleep_wake.c: 28: IO_INT_INITIAL();
		LCALL 	2A4H 			//00A1 	32A4
		MOVLP 	0H 			//00A2 	0180

		//;sleep_wake.c: 29: EPIF0 = 0x90;
		LDWI 	90H 			//00A3 	0090
		MOVLB 	0H 			//00A4 	1020
		STR 	14H 			//00A5 	1094

		//;sleep_wake.c: 31: GIE = 0;
		BCR 	BH, 7H 			//00A6 	238B

		//;sleep_wake.c: 34: __nop(); __nop();__nop();__nop();
		NOP 					//00A7 	1000
		NOP 					//00A8 	1000
		NOP 					//00A9 	1000
		NOP 					//00AA 	1000
		SLEEP 					//00AB 	1063

		//;sleep_wake.c: 36: __nop(); __nop();__nop();__nop();
		NOP 					//00AC 	1000
		NOP 					//00AD 	1000
		NOP 					//00AE 	1000
		NOP 					//00AF 	1000

		//;sleep_wake.c: 39: Radio_Wake();
		LCALL 	29FH 			//00B0 	329F
		MOVLP 	0H 			//00B1 	0180

		//;sleep_wake.c: 40: EPIF0 = 0x90;
		LDWI 	90H 			//00B2 	0090
		MOVLB 	0H 			//00B3 	1020
		STR 	14H 			//00B4 	1094

		//;sleep_wake.c: 41: INTCON = 0B11000000;
		LDWI 	C0H 			//00B5 	00C0
		STR 	BH 			//00B6 	108B

		//;sleep_wake.c: 43: FSM_SendEvent(EV_WAKE);
		LDWI 	1H 			//00B7 	0001
		LJUMP 	2B3H 			//00B8 	3AB3
		LDWI 	5H 			//00B9 	0005
		STR 	4H 			//00BA 	1084
		LDWI 	86H 			//00BB 	0086
		STR 	5H 			//00BC 	1085
		LDWI 	D0H 			//00BD 	00D0
		STR 	6H 			//00BE 	1086
		LDWI 	0H 			//00BF 	0000
		STR 	7H 			//00C0 	1087
		LDWI 	15H 			//00C1 	0015
		MOVLP 	6H 			//00C2 	0186
		LCALL 	678H 			//00C3 	3678
		MOVLP 	0H 			//00C4 	0180
		LDWI 	44H 			//00C5 	0044
		STR 	4H 			//00C6 	1084
		LDWI 	0H 			//00C7 	0000
		STR 	5H 			//00C8 	1085
		LDWI 	11H 			//00C9 	0011
		MOVLP 	6H 			//00CA 	0186
		LCALL 	67EH 			//00CB 	367E
		MOVLP 	0H 			//00CC 	0180
		LDWI 	E5H 			//00CD 	00E5
		STR 	4H 			//00CE 	1084
		LDWI 	0H 			//00CF 	0000
		STR 	5H 			//00D0 	1085
		LDWI 	8H 			//00D1 	0008
		MOVLP 	6H 			//00D2 	0186
		LCALL 	67EH 			//00D3 	367E
		MOVLP 	0H 			//00D4 	0180
		BCR 	7EH, 0H 			//00D5 	207E
		MOVLB 	0H 			//00D6 	1020
		LJUMP 	E6H 			//00D7 	38E6

		//;uart.c: 231: DelayMs(50);
		LCALL 	372H 			//00D8 	3372
		MOVLP 	0H 			//00D9 	0180
		LCALL 	1A3H 			//00DA 	31A3
		MOVLP 	0H 			//00DB 	0180

		//;uart.c: 232: unsigned char data[2];
		//;uart.c: 233: data[0] = 0x00;
		CLRF 	29H 			//00DC 	11A9

		//;uart.c: 234: data[1] = Check_Battery_3_Stages();
		LCALL 	FFH 			//00DD 	30FF
		MOVLP 	0H 			//00DE 	0180
		STR 	2AH 			//00DF 	10AA

		//;uart.c: 235: UART_SendFrame(0x05u, data, 2);
		LDWI 	A9H 			//00E0 	00A9
		STR 	21H 			//00E1 	10A1
		LDWI 	2H 			//00E2 	0002
		STR 	22H 			//00E3 	10A2
		LDWI 	5H 			//00E4 	0005
		LJUMP 	1BAH 			//00E5 	39BA

		//;main.c: 83: POWER_INITIAL();
		LCALL 	258H 			//00E6 	3258
		MOVLP 	0H 			//00E7 	0180

		//;main.c: 85: Timer_Init();
		LCALL 	27FH 			//00E8 	327F
		MOVLP 	0H 			//00E9 	0180

		//;main.c: 86: UART_Init();
		LCALL 	28EH 			//00EA 	328E
		MOVLP 	0H 			//00EB 	0180

		//;main.c: 87: Radio_Init();
		LCALL 	120H 			//00EC 	3120
		MOVLP 	0H 			//00ED 	0180

		//;main.c: 88: INTCON = 0B11000000;
		LDWI 	C0H 			//00EE 	00C0
		STR 	BH 			//00EF 	108B

		//;main.c: 89: PORTAbits.PA1 = 1;
		MOVLB 	0H 			//00F0 	1020
		BSR 	CH, 1H 			//00F1 	248C

		//;main.c: 90: DelayMs(50);
		LCALL 	372H 			//00F2 	3372
		MOVLP 	0H 			//00F3 	0180
		LCALL 	1A3H 			//00F4 	31A3
		MOVLP 	0H 			//00F5 	0180

		//;main.c: 94: if(g_system_evt != EV_NONE) {
		LDR 	6CH, 0H 			//00F6 	186C
		BTSC 	3H, 2H 			//00F7 	2903
		LJUMP 	F6H 			//00F8 	38F6

		//;main.c: 95: SystemEvent temp_evt = g_system_evt;
		LDR 	6CH, 0H 			//00F9 	186C
		STR 	4FH 			//00FA 	10CF

		//;main.c: 96: g_system_evt = EV_NONE;
		CLRF 	6CH 			//00FB 	11EC

		//;main.c: 98: FSM_Process(temp_evt);
		LCALL 	1EDH 			//00FC 	31ED
		MOVLP 	0H 			//00FD 	0180
		LJUMP 	F6H 			//00FE 	38F6

		//;bat.c: 7: BSREG = 3;
		LDWI 	3H 			//00FF 	0003
		STR 	8H 			//0100 	1088

		//;bat.c: 11: LVDCON0 = 0x15;
		LDWI 	15H 			//0101 	0015
		MOVLB 	3H 			//0102 	1023

		//;bat.c: 14: DelayMs(20);
		LCALL 	392H 			//0103 	3392
		MOVLP 	0H 			//0104 	0180
		LCALL 	1A3H 			//0105 	31A3
		MOVLP 	0H 			//0106 	0180

		//;bat.c: 16: if (LVDCON0 & 0x08) {
		MOVLB 	3H 			//0107 	1023
		BTSS 	19H, 3H 		//0108 	2D99
		LJUMP 	118H 			//0109 	3918

		//;bat.c: 20: LVDCON0 = 0x14;
		LDWI 	14H 			//010A 	0014

		//;bat.c: 22: DelayMs(20);
		LCALL 	392H 			//010B 	3392
		MOVLP 	0H 			//010C 	0180
		LCALL 	1A3H 			//010D 	31A3
		MOVLP 	0H 			//010E 	0180

		//;bat.c: 24: if (LVDCON0 & 0x08) {
		MOVLB 	3H 			//010F 	1023
		BTSS 	19H, 3H 		//0110 	2D99
		LJUMP 	116H 			//0111 	3916

		//;bat.c: 25: result = 0x01;
		MOVLB 	1H 			//0112 	1021
		CLRF 	28H 			//0113 	11A8
		INCR 	28H, 1H 		//0114 	1AA8

		//;bat.c: 26: } else {
		LJUMP 	11BH 			//0115 	391B

		//;bat.c: 27: result = 0x02;
		LDWI 	2H 			//0116 	0002
		LJUMP 	119H 			//0117 	3919

		//;bat.c: 30: result = 0x03;
		LDWI 	3H 			//0118 	0003
		MOVLB 	1H 			//0119 	1021
		STR 	28H 			//011A 	10A8

		//;bat.c: 31: }
		//;bat.c: 34: LVDCON0 &= ~0x10;
		MOVLB 	3H 			//011B 	1023
		BCR 	19H, 4H 			//011C 	2219

		//;bat.c: 39: return result;
		//;bat.c: 37: BSREG = 0;
		MOVLB 	1H 			//011D 	1021
		LDR 	28H, 0H 			//011E 	1828
		RET 					//011F 	1008

		//;radio.c: 10: UART_SendATCmd("AT+PWR=29");
		LDWI 	3BH 			//0120 	003B
		MOVLB 	1H 			//0121 	1021
		STR 	21H 			//0122 	10A1
		LDWI 	86H 			//0123 	0086
		STR 	22H 			//0124 	10A2
		LCALL 	190H 			//0125 	3190
		MOVLP 	0H 			//0126 	0180

		//;radio.c: 11: DelayMs(50);
		LCALL 	372H 			//0127 	3372
		MOVLP 	0H 			//0128 	0180
		LCALL 	1A3H 			//0129 	31A3
		MOVLP 	0H 			//012A 	0180

		//;radio.c: 14: UART_SendATCmd("AT+UART=3,0");
		LDWI 	1AH 			//012B 	001A
		STR 	21H 			//012C 	10A1
		LDWI 	86H 			//012D 	0086
		STR 	22H 			//012E 	10A2
		LCALL 	190H 			//012F 	3190
		MOVLP 	0H 			//0130 	0180

		//;radio.c: 15: DelayMs(50);
		LCALL 	372H 			//0131 	3372
		MOVLP 	0H 			//0132 	0180
		LCALL 	1A3H 			//0133 	31A3
		MOVLP 	0H 			//0134 	0180

		//;radio.c: 18: UART_SendATCmd("AT+FEQ=434000000");
		LDWI 	F4H 			//0135 	00F4
		STR 	21H 			//0136 	10A1
		LDWI 	85H 			//0137 	0085
		STR 	22H 			//0138 	10A2
		LCALL 	190H 			//0139 	3190
		MOVLP 	0H 			//013A 	0180

		//;radio.c: 19: DelayMs(50);
		LCALL 	372H 			//013B 	3372
		MOVLP 	0H 			//013C 	0180
		LCALL 	1A3H 			//013D 	31A3
		MOVLP 	0H 			//013E 	0180

		//;radio.c: 22: UART_SendATCmd("AT+SF=7");
		LDWI 	68H 			//013F 	0068
		STR 	21H 			//0140 	10A1
		LDWI 	86H 			//0141 	0086
		STR 	22H 			//0142 	10A2
		LCALL 	190H 			//0143 	3190
		MOVLP 	0H 			//0144 	0180

		//;radio.c: 23: DelayMs(50);
		LCALL 	372H 			//0145 	3372
		MOVLP 	0H 			//0146 	0180
		LCALL 	1A3H 			//0147 	31A3
		MOVLP 	0H 			//0148 	0180

		//;radio.c: 26: UART_SendATCmd("AT+BW=9");
		LDWI 	70H 			//0149 	0070
		STR 	21H 			//014A 	10A1
		LDWI 	86H 			//014B 	0086
		STR 	22H 			//014C 	10A2
		LCALL 	190H 			//014D 	3190
		MOVLP 	0H 			//014E 	0180

		//;radio.c: 27: DelayMs(50);
		LCALL 	372H 			//014F 	3372
		MOVLP 	0H 			//0150 	0180
		LCALL 	1A3H 			//0151 	31A3
		MOVLP 	0H 			//0152 	0180

		//;radio.c: 30: UART_SendATCmd("AT+PB=2500");
		LDWI 	26H 			//0153 	0026
		STR 	21H 			//0154 	10A1
		LDWI 	86H 			//0155 	0086
		STR 	22H 			//0156 	10A2
		LCALL 	190H 			//0157 	3190
		MOVLP 	0H 			//0158 	0180

		//;radio.c: 31: DelayMs(50);
		LCALL 	372H 			//0159 	3372
		MOVLP 	0H 			//015A 	0180
		LCALL 	1A3H 			//015B 	31A3
		MOVLP 	0H 			//015C 	0180

		//;radio.c: 33: UART_SendATCmd("AT+MODE=1");
		LDWI 	31H 			//015D 	0031
		STR 	21H 			//015E 	10A1
		LDWI 	86H 			//015F 	0086
		STR 	22H 			//0160 	10A2
		LCALL 	190H 			//0161 	3190
		MOVLP 	0H 			//0162 	0180

		//;radio.c: 34: DelayMs(50);
		LCALL 	372H 			//0163 	3372
		MOVLP 	0H 			//0164 	0180
		LCALL 	1A3H 			//0165 	31A3
		MOVLP 	0H 			//0166 	0180

		//;radio.c: 36: UART_SendATCmd("AT+WT=2");
		LDWI 	60H 			//0167 	0060
		STR 	21H 			//0168 	10A1
		LDWI 	86H 			//0169 	0086
		STR 	22H 			//016A 	10A2
		LCALL 	190H 			//016B 	3190
		MOVLP 	0H 			//016C 	0180

		//;radio.c: 37: DelayMs(50);
		LCALL 	372H 			//016D 	3372
		MOVLP 	0H 			//016E 	0180
		LCALL 	1A3H 			//016F 	31A3
		MOVLP 	0H 			//0170 	0180

		//;radio.c: 39: UART_SendATCmd("AT+CR=1");
		LDWI 	58H 			//0171 	0058
		STR 	21H 			//0172 	10A1
		LDWI 	86H 			//0173 	0086
		STR 	22H 			//0174 	10A2
		LCALL 	190H 			//0175 	3190
		MOVLP 	0H 			//0176 	0180

		//;radio.c: 40: DelayMs(50);
		LCALL 	372H 			//0177 	3372
		MOVLP 	0H 			//0178 	0180
		LCALL 	1A3H 			//0179 	31A3
		MOVLP 	0H 			//017A 	0180

		//;radio.c: 42: UART_SendATCmd("AT+CRC=1");
		LDWI 	4FH 			//017B 	004F
		STR 	21H 			//017C 	10A1
		LDWI 	86H 			//017D 	0086
		STR 	22H 			//017E 	10A2
		LCALL 	190H 			//017F 	3190
		MOVLP 	0H 			//0180 	0180

		//;radio.c: 43: DelayMs(50);
		LCALL 	372H 			//0181 	3372
		MOVLP 	0H 			//0182 	0180
		LCALL 	1A3H 			//0183 	31A3
		MOVLP 	0H 			//0184 	0180

		//;radio.c: 46: UART_SendATCmd("ATW");
		LDWI 	84H 			//0185 	0084
		STR 	21H 			//0186 	10A1
		LDWI 	86H 			//0187 	0086
		STR 	22H 			//0188 	10A2
		LCALL 	190H 			//0189 	3190
		MOVLP 	0H 			//018A 	0180

		//;radio.c: 47: DelayMs(50);
		LCALL 	372H 			//018B 	3372
		MOVLP 	0H 			//018C 	0180
		LCALL 	1A3H 			//018D 	31A3
		MOVLP 	0H 			//018E 	0180

		//;radio.c: 51: Radio_Wake();
		LJUMP 	29FH 			//018F 	3A9F

		//;uart.c: 152: unsigned char j = 0;
		CLRF 	26H 			//0190 	11A6

		//;uart.c: 153: while(cmd[j] != '\0') {
		LCALL 	377H 			//0191 	3377
		MOVLP 	0H 			//0192 	0180
		MOVIW 	FSR0++ 		//0193 	1012
		BTSC 	3H, 2H 			//0194 	2903
		LJUMP 	19EH 			//0195 	399E

		//;uart.c: 154: UART_SendByte(cmd[j]);
		LCALL 	377H 			//0196 	3377
		MOVLP 	0H 			//0197 	0180
		LDR 	0H, 0H 			//0198 	1800
		LCALL 	1D8H 			//0199 	31D8
		MOVLP 	0H 			//019A 	0180

		//;uart.c: 155: j++;
		MOVLB 	1H 			//019B 	1021
		INCR 	26H, 1H 		//019C 	1AA6
		LJUMP 	191H 			//019D 	3991

		//;uart.c: 156: }
		//;uart.c: 157: UART_SendByte(0x0D);
		LDWI 	DH 			//019E 	000D
		LCALL 	1D8H 			//019F 	31D8
		MOVLP 	0H 			//01A0 	0180

		//;uart.c: 158: UART_SendByte(0x0A);
		LDWI 	AH 			//01A1 	000A
		LJUMP 	1D8H 			//01A2 	39D8

		//;timer.c: 32: unsigned char a,b;
		//;timer.c: 33: for(a=0;a<Time;a++)
		CLRF 	26H 			//01A3 	11A6
		LDR 	26H, 0H 			//01A4 	1826
		STR 	24H 			//01A5 	10A4
		CLRF 	25H 			//01A6 	11A5
		LDR 	23H, 0H 			//01A7 	1823
		SUBWR 	25H, 0H 		//01A8 	1225
		BTSS 	3H, 2H 			//01A9 	2D03
		LJUMP 	1ADH 			//01AA 	39AD
		LDR 	22H, 0H 			//01AB 	1822
		SUBWR 	24H, 0H 		//01AC 	1224
		BTSC 	3H, 0H 			//01AD 	2803
		RET 					//01AE 	1008

		//;timer.c: 34: {
		//;timer.c: 35: for(b=0;b<5;b++)
		CLRF 	27H 			//01AF 	11A7

		//;timer.c: 36: {
		//;timer.c: 37: DelayUs(197);
		LDWI 	C5H 			//01B0 	00C5
		LCALL 	1E3H 			//01B1 	31E3
		MOVLP 	0H 			//01B2 	0180
		LDWI 	5H 			//01B3 	0005
		INCR 	27H, 1H 		//01B4 	1AA7
		SUBWR 	27H, 0H 		//01B5 	1227
		BTSS 	3H, 0H 			//01B6 	2C03
		LJUMP 	1B0H 			//01B7 	39B0
		INCR 	26H, 1H 		//01B8 	1AA6
		LJUMP 	1A4H 			//01B9 	39A4
		STR 	24H 			//01BA 	10A4

		//;uart.c: 180: unsigned char i;
		//;uart.c: 181: UART_SendByte(0xFF);
		LDWI 	FFH 			//01BB 	00FF
		LCALL 	1D8H 			//01BC 	31D8
		MOVLP 	0H 			//01BD 	0180

		//;uart.c: 182: UART_SendByte(0xACu);
		LDWI 	ACH 			//01BE 	00AC
		LCALL 	1D8H 			//01BF 	31D8
		MOVLP 	0H 			//01C0 	0180

		//;uart.c: 183: UART_SendByte(func);
		MOVLB 	1H 			//01C1 	1021
		LDR 	24H, 0H 			//01C2 	1824
		LCALL 	1D8H 			//01C3 	31D8
		MOVLP 	0H 			//01C4 	0180

		//;uart.c: 184: for(i = 0; i < len; i++) {
		MOVLB 	1H 			//01C5 	1021
		CLRF 	25H 			//01C6 	11A5
		LDR 	22H, 0H 			//01C7 	1822
		SUBWR 	25H, 0H 		//01C8 	1225
		BTSC 	3H, 0H 			//01C9 	2803
		LJUMP 	1D6H 			//01CA 	39D6

		//;uart.c: 185: UART_SendByte(data[i]);
		LDR 	25H, 0H 			//01CB 	1825
		ADDWR 	21H, 0H 		//01CC 	1721
		STR 	23H 			//01CD 	10A3
		STR 	6H 			//01CE 	1086
		CLRF 	7H 			//01CF 	1187
		LDR 	1H, 0H 			//01D0 	1801
		LCALL 	1D8H 			//01D1 	31D8
		MOVLP 	0H 			//01D2 	0180
		MOVLB 	1H 			//01D3 	1021
		INCR 	25H, 1H 		//01D4 	1AA5
		LJUMP 	1C7H 			//01D5 	39C7

		//;uart.c: 186: }
		//;uart.c: 187: UART_SendByte(0xFE);
		LDWI 	FEH 			//01D6 	00FE
		LJUMP 	1D8H 			//01D7 	39D8
		MOVLB 	1H 			//01D8 	1021
		STR 	20H 			//01D9 	10A0

		//;uart.c: 141: TXEF = 0;
		MOVLB 	9H 			//01DA 	1029
		BCR 	12H, 5H 			//01DB 	2292

		//;uart.c: 142: URDATAL = data;
		MOVLB 	1H 			//01DC 	1021
		LDR 	20H, 0H 			//01DD 	1820
		MOVLB 	9H 			//01DE 	1029
		STR 	CH 			//01DF 	108C

		//;uart.c: 143: while(!TCF) {}
		BTSC 	1CH, 0H 		//01E0 	281C
		RET 					//01E1 	1008
		LJUMP 	1E0H 			//01E2 	39E0
		STR 	20H 			//01E3 	10A0

		//;timer.c: 18: unsigned char a;
		//;timer.c: 19: for(a=0;a<Time;a++)
		CLRF 	21H 			//01E4 	11A1
		LDR 	20H, 0H 			//01E5 	1820
		SUBWR 	21H, 0H 		//01E6 	1221
		BTSC 	3H, 0H 			//01E7 	2803
		RET 					//01E8 	1008

		//;timer.c: 20: {
		//;timer.c: 21: __nop();
		NOP 					//01E9 	1000
		MOVLB 	1H 			//01EA 	1021
		INCR 	21H, 1H 		//01EB 	1AA1
		LJUMP 	1E5H 			//01EC 	39E5
		STR 	4CH 			//01ED 	10CC

		//;app_fsm.c: 45: if(evt == EV_NONE) return;
		LDR 	4CH, 0H 			//01EE 	184C
		BTSC 	3H, 2H 			//01EF 	2903
		RET 					//01F0 	1008

		//;app_fsm.c: 47: for(int i=0; i<(sizeof(sys_fsm)/sizeof(FSM_Table)); i++) {
		CLRF 	4DH 			//01F1 	11CD
		CLRF 	4EH 			//01F2 	11CE

		//;app_fsm.c: 48: if(sys_fsm[i].cur == g_current_state && sys_fsm[i].evt == evt) {
		LCALL 	36AH 			//01F3 	336A
		MOVLP 	0H 			//01F4 	0180
		LCALL 	243H 			//01F5 	3243
		MOVLP 	0H 			//01F6 	0180
		LDR 	21H, 0H 			//01F7 	1821
		STR 	5H 			//01F8 	1085
		LDR 	20H, 0H 			//01F9 	1820
		STR 	4H 			//01FA 	1084
		LDWI 	C2H 			//01FB 	00C2
		ADDWR 	4H, 1H 		//01FC 	1784
		LDWI 	85H 			//01FD 	0085
		ADDWFC 	5H, 1H 		//01FE 	0D85
		LDR 	0H, 0H 			//01FF 	1800
		XORWR 	64H, 0H 		//0200 	1664
		BTSS 	3H, 2H 			//0201 	2D03
		LJUMP 	238H 			//0202 	3A38
		LCALL 	36AH 			//0203 	336A
		MOVLP 	0H 			//0204 	0180
		LCALL 	243H 			//0205 	3243
		MOVLP 	0H 			//0206 	0180
		LDR 	21H, 0H 			//0207 	1821
		STR 	5H 			//0208 	1085
		LDR 	20H, 0H 			//0209 	1820
		STR 	4H 			//020A 	1084
		LDWI 	C3H 			//020B 	00C3
		ADDWR 	4H, 1H 		//020C 	1784
		LDWI 	85H 			//020D 	0085
		ADDWFC 	5H, 1H 		//020E 	0D85
		LDR 	0H, 0H 			//020F 	1800
		XORWR 	4CH, 0H 		//0210 	164C
		BTSS 	3H, 2H 			//0211 	2D03
		LJUMP 	238H 			//0212 	3A38

		//;app_fsm.c: 49: if(sys_fsm[i].action) sys_fsm[i].action();
		LCALL 	36AH 			//0213 	336A
		MOVLP 	0H 			//0214 	0180
		LCALL 	243H 			//0215 	3243
		MOVLP 	0H 			//0216 	0180
		LCALL 	383H 			//0217 	3383
		MOVLP 	0H 			//0218 	0180
		MOVIW 	FSR0++ 		//0219 	1012
		STR 	4AH 			//021A 	10CA
		MOVIW 	FSR0++ 		//021B 	1012
		IORWR 	4AH, 1H 		//021C 	14CA
		BTSC 	3H, 2H 			//021D 	2903
		LJUMP 	229H 			//021E 	3A29
		LCALL 	36AH 			//021F 	336A
		MOVLP 	0H 			//0220 	0180
		LCALL 	243H 			//0221 	3243
		MOVLP 	0H 			//0222 	0180
		LCALL 	383H 			//0223 	3383
		MOVIW 	1H[0] 			//0224 	0F01
		STR 	AH 			//0225 	108A
		MOVIW 	0H[0] 			//0226 	0F00
		CALLW 					//0227 	100A
		MOVLP 	2H 			//0228 	0182

		//;app_fsm.c: 50: g_current_state = sys_fsm[i].next;
		MOVLB 	1H 			//0229 	1021
		LCALL 	36AH 			//022A 	336A
		MOVLP 	0H 			//022B 	0180
		LCALL 	243H 			//022C 	3243
		LDR 	21H, 0H 			//022D 	1821
		STR 	5H 			//022E 	1085
		LDR 	20H, 0H 			//022F 	1820
		STR 	4H 			//0230 	1084
		LDWI 	C4H 			//0231 	00C4
		ADDWR 	4H, 1H 		//0232 	1784
		LDWI 	85H 			//0233 	0085
		ADDWFC 	5H, 1H 		//0234 	0D85
		LDR 	0H, 0H 			//0235 	1800
		STR 	64H 			//0236 	10E4

		//;app_fsm.c: 51: break;
		RET 					//0237 	1008
		INCR 	4DH, 1H 		//0238 	1ACD
		BTSC 	3H, 2H 			//0239 	2903
		INCR 	4EH, 1H 		//023A 	1ACE
		LDWI 	0H 			//023B 	0000
		SUBWR 	4EH, 0H 		//023C 	124E
		LDWI 	AH 			//023D 	000A
		BTSC 	3H, 2H 			//023E 	2903
		SUBWR 	4DH, 0H 		//023F 	124D
		BTSC 	3H, 0H 			//0240 	2803
		RET 					//0241 	1008
		LJUMP 	1F3H 			//0242 	39F3
		CLRF 	24H 			//0243 	11A4
		CLRF 	25H 			//0244 	11A5
		BTSS 	20H, 0H 		//0245 	2C20
		LJUMP 	24BH 			//0246 	3A4B
		LDR 	22H, 0H 			//0247 	1822
		ADDWR 	24H, 1H 		//0248 	17A4
		LDR 	23H, 0H 			//0249 	1823
		ADDWFC 	25H, 1H 		//024A 	0DA5
		LSLF 	22H, 1H 		//024B 	05A2
		RLR 	23H, 1H 			//024C 	1DA3
		LSRF 	21H, 1H 		//024D 	06A1
		RRR 	20H, 1H 			//024E 	1CA0
		LDR 	20H, 0H 			//024F 	1820
		IORWR 	21H, 0H 		//0250 	1421
		BTSS 	3H, 2H 			//0251 	2D03
		LJUMP 	245H 			//0252 	3A45
		LDR 	25H, 0H 			//0253 	1825
		STR 	21H 			//0254 	10A1
		LDR 	24H, 0H 			//0255 	1824
		STR 	20H 			//0256 	10A0
		RET 					//0257 	1008

		//;main.c: 43: OSCCON = 0B01110001;
		LDWI 	71H 			//0258 	0071
		MOVLB 	1H 			//0259 	1021
		STR 	19H 			//025A 	1099

		//;main.c: 44: INTCON = 0B00000000;
		CLRF 	BH 			//025B 	118B

		//;main.c: 47: PORTA = 0B00000000;
		MOVLB 	0H 			//025C 	1020
		CLRF 	CH 			//025D 	118C

		//;main.c: 48: TRISA = 0B10010000;
		LDWI 	90H 			//025E 	0090
		MOVLB 	1H 			//025F 	1021
		STR 	CH 			//0260 	108C

		//;main.c: 49: PORTB = 0B00000000;
		MOVLB 	0H 			//0261 	1020
		CLRF 	DH 			//0262 	118D

		//;main.c: 50: TRISB = 0B10000101;
		LDWI 	85H 			//0263 	0085
		MOVLB 	1H 			//0264 	1021
		STR 	DH 			//0265 	108D

		//;main.c: 51: PORTC = 0B00000000;
		MOVLB 	0H 			//0266 	1020
		CLRF 	EH 			//0267 	118E

		//;main.c: 52: TRISC = 0B00000000;
		MOVLB 	1H 			//0268 	1021
		CLRF 	EH 			//0269 	118E

		//;main.c: 55: WPUA = 0B00010000;
		LDWI 	10H 			//026A 	0010
		MOVLB 	3H 			//026B 	1023
		STR 	CH 			//026C 	108C

		//;main.c: 56: WPUB = 0B10000101;
		LDWI 	85H 			//026D 	0085
		STR 	DH 			//026E 	108D

		//;main.c: 57: WPUC = 0B00000000;
		CLRF 	EH 			//026F 	118E

		//;main.c: 60: WPDA = 0B00000000;
		MOVLB 	4H 			//0270 	1024
		CLRF 	CH 			//0271 	118C

		//;main.c: 61: WPDB = 0B00000000;
		CLRF 	DH 			//0272 	118D

		//;main.c: 62: WPDC = 0B00000000;
		CLRF 	EH 			//0273 	118E

		//;main.c: 65: PSRC0 = 0B11111111;
		LDWI 	FFH 			//0274 	00FF
		MOVLB 	2H 			//0275 	1022
		STR 	1AH 			//0276 	109A

		//;main.c: 66: PSRC1 = 0B11111111;
		STR 	1BH 			//0277 	109B

		//;main.c: 67: PSRC2 = 0B11111111;
		STR 	1CH 			//0278 	109C

		//;main.c: 70: PSINK0 = 0B11111111;
		MOVLB 	3H 			//0279 	1023
		STR 	1AH 			//027A 	109A

		//;main.c: 71: PSINK1 = 0B11111111;
		STR 	1BH 			//027B 	109B

		//;main.c: 72: PSINK2 = 0B11111111;
		STR 	1CH 			//027C 	109C

		//;main.c: 74: ANSELA = 0B00000000;
		CLRF 	17H 			//027D 	1197
		RET 					//027E 	1008

		//;timer.c: 49: PCKEN |= 0B00001000;
		MOVLB 	1H 			//027F 	1021
		BSR 	1AH, 3H 			//0280 	259A

		//;timer.c: 50: TIM4CR1 = 0B00000101;
		LDWI 	5H 			//0281 	0005
		MOVLB 	2H 			//0282 	1022
		STR 	11H 			//0283 	1091

		//;timer.c: 51: TIM4IER = 0B00000001;
		LDWI 	1H 			//0284 	0001
		STR 	12H 			//0285 	1092

		//;timer.c: 52: TIM4SR = 0;
		CLRF 	13H 			//0286 	1193

		//;timer.c: 53: TIM4EGR = 0;
		CLRF 	14H 			//0287 	1194

		//;timer.c: 54: TIM4CNTR = 0;
		CLRF 	15H 			//0288 	1195

		//;timer.c: 55: TIM4PSCR = 6;
		LDWI 	6H 			//0289 	0006
		STR 	16H 			//028A 	1096

		//;timer.c: 56: TIM4ARR = 249;
		LDWI 	F9H 			//028B 	00F9
		STR 	17H 			//028C 	1097
		RET 					//028D 	1008

		//;uart.c: 35: PCKEN |= 0B00100000;
		MOVLB 	1H 			//028E 	1021
		BSR 	1AH, 5H 			//028F 	269A

		//;uart.c: 36: URIER = 0B00000001;
		LDWI 	1H 			//0290 	0001
		MOVLB 	9H 			//0291 	1029
		STR 	EH 			//0292 	108E

		//;uart.c: 37: URLCR = 0B00000001;
		STR 	FH 			//0293 	108F

		//;uart.c: 38: URMCR = 0B00011000;
		LDWI 	18H 			//0294 	0018
		STR 	11H 			//0295 	1091

		//;uart.c: 39: URDLL = 104;
		LDWI 	68H 			//0296 	0068
		STR 	14H 			//0297 	1094

		//;uart.c: 40: URDLH = 0;
		CLRF 	15H 			//0298 	1195

		//;uart.c: 41: TCF = 1;
		BSR 	1CH, 0H 			//0299 	241C

		//;uart.c: 42: AFP1 = 0;
		MOVLB 	3H 			//029A 	1023
		CLRF 	1FH 			//029B 	119F

		//;uart.c: 43: ODCON0 = 0B00000000;
		MOVLB 	4H 			//029C 	1024
		CLRF 	1FH 			//029D 	119F
		RET 					//029E 	1008

		//;radio.c: 69: do { PC1 = 0; } while(0);
		MOVLB 	0H 			//029F 	1020
		BCR 	EH, 1H 			//02A0 	208E

		//;radio.c: 70: DelayMs(50);
		LCALL 	372H 			//02A1 	3372
		MOVLP 	0H 			//02A2 	0180
		LJUMP 	1A3H 			//02A3 	39A3

		//;sleep_wake.c: 5: EPS0 = 0B00000000;
		MOVLB 	2H 			//02A4 	1022
		CLRF 	18H 			//02A5 	1198

		//;sleep_wake.c: 8: EPS1 = 0B01000000;
		LDWI 	40H 			//02A6 	0040
		STR 	19H 			//02A7 	1099

		//;sleep_wake.c: 10: ITYPE0 = 0B00000000;
		CLRF 	1EH 			//02A8 	119E

		//;sleep_wake.c: 12: ITYPE1 = 0B10000000;
		LDWI 	80H 			//02A9 	0080
		STR 	1FH 			//02AA 	109F

		//;sleep_wake.c: 14: EPIE0 = 0B10010000;
		LDWI 	90H 			//02AB 	0090
		MOVLB 	1H 			//02AC 	1021
		STR 	14H 			//02AD 	1094

		//;sleep_wake.c: 16: INTCON = 0B11000000;
		LDWI 	C0H 			//02AE 	00C0
		STR 	BH 			//02AF 	108B
		RET 					//02B0 	1008

		//;radio.c: 60: do { PC1 = 1; } while(0);
		BSR 	EH, 1H 			//02B1 	248E
		RET 					//02B2 	1008
		MOVLB 	1H 			//02B3 	1021
		STR 	20H 			//02B4 	10A0

		//;app_fsm.c: 41: g_system_evt = evt;
		STR 	6CH 			//02B5 	10EC
		RET 					//02B6 	1008
		MOVLB 	0H 			//02B7 	1020
		CLRF 	50H 			//02B8 	11D0
		CLRF 	51H 			//02B9 	11D1
		RET 					//02BA 	1008

		//;uart.c: 127: char tmp[6] = {0};
		LDWI 	E5H 			//02BB 	00E5
		STR 	6H 			//02BC 	1086
		LDWI 	0H 			//02BD 	0000
		STR 	7H 			//02BE 	1087
		LDWI 	ABH 			//02BF 	00AB
		STR 	4H 			//02C0 	1084
		LDWI 	0H 			//02C1 	0000
		STR 	5H 			//02C2 	1085
		LDWI 	6H 			//02C3 	0006
		STR 	2AH 			//02C4 	10AA
		MOVIW 	FSR1++ 		//02C5 	1016
		MOVWI 	FSR0++ 		//02C6 	101A
		DECRSZ 	2AH, 1H 		//02C7 	1BAA
		LJUMP 	2C5H 			//02C8 	3AC5

		//;uart.c: 128: unsigned char i = 0, j = 0;
		CLRF 	32H 			//02C9 	11B2
		CLRF 	31H 			//02CA 	11B1

		//;uart.c: 129: if(val == 0) { buf[0] = '0'; buf[1] = '\0'; return 1; }
		LDR 	27H, 0H 			//02CB 	1827
		IORWR 	28H, 0H 		//02CC 	1428
		BTSS 	3H, 2H 			//02CD 	2D03
		LJUMP 	2F6H 			//02CE 	3AF6
		LDR 	29H, 0H 			//02CF 	1829
		STR 	6H 			//02D0 	1086
		LDWI 	30H 			//02D1 	0030
		CLRF 	7H 			//02D2 	1187
		STR 	1H 			//02D3 	1081
		INCR 	29H, 0H 		//02D4 	1A29
		STR 	6H 			//02D5 	1086
		CLRF 	1H 			//02D6 	1181
		RET 					//02D7 	1008
		LDR 	32H, 0H 			//02D8 	1832
		ADDWI 	ABH 			//02D9 	0EAB
		STR 	6H 			//02DA 	1086
		LDWI 	AH 			//02DB 	000A
		CLRF 	7H 			//02DC 	1187
		STR 	20H 			//02DD 	10A0
		CLRF 	21H 			//02DE 	11A1
		LDR 	28H, 0H 			//02DF 	1828
		STR 	23H 			//02E0 	10A3
		LDR 	27H, 0H 			//02E1 	1827
		STR 	22H 			//02E2 	10A2
		LCALL 	330H 			//02E3 	3330
		MOVLP 	0H 			//02E4 	0180
		LDR 	20H, 0H 			//02E5 	1820
		ADDWI 	30H 			//02E6 	0E30
		STR 	1H 			//02E7 	1081
		LDWI 	AH 			//02E8 	000A
		INCR 	32H, 1H 		//02E9 	1AB2
		STR 	20H 			//02EA 	10A0
		CLRF 	21H 			//02EB 	11A1
		LDR 	28H, 0H 			//02EC 	1828
		STR 	23H 			//02ED 	10A3
		LDR 	27H, 0H 			//02EE 	1827
		STR 	22H 			//02EF 	10A2
		LCALL 	30BH 			//02F0 	330B
		MOVLP 	0H 			//02F1 	0180
		LDR 	21H, 0H 			//02F2 	1821
		STR 	28H 			//02F3 	10A8
		LDR 	20H, 0H 			//02F4 	1820
		STR 	27H 			//02F5 	10A7
		LDR 	27H, 0H 			//02F6 	1827
		IORWR 	28H, 0H 		//02F7 	1428
		BTSC 	3H, 2H 			//02F8 	2903
		LJUMP 	305H 			//02F9 	3B05
		LJUMP 	2D8H 			//02FA 	3AD8
		LCALL 	38CH 			//02FB 	338C
		MOVLP 	0H 			//02FC 	0180
		DECR 	32H, 1H 		//02FD 	13B2
		LDR 	32H, 0H 			//02FE 	1832
		ADDWI 	ABH 			//02FF 	0EAB
		STR 	4H 			//0300 	1084
		CLRF 	5H 			//0301 	1185
		LDR 	0H, 0H 			//0302 	1800
		STR 	1H 			//0303 	1081
		INCR 	31H, 1H 		//0304 	1AB1
		LDR 	32H, 0H 			//0305 	1832
		BTSS 	3H, 2H 			//0306 	2D03
		LJUMP 	2FBH 			//0307 	3AFB

		//;uart.c: 132: buf[j] = '\0';
		LCALL 	38CH 			//0308 	338C
		CLRF 	1H 			//0309 	1181
		RET 					//030A 	1008
		CLRF 	25H 			//030B 	11A5
		CLRF 	26H 			//030C 	11A6
		LDR 	20H, 0H 			//030D 	1820
		IORWR 	21H, 0H 		//030E 	1421
		BTSC 	3H, 2H 			//030F 	2903
		LJUMP 	32BH 			//0310 	3B2B
		CLRF 	24H 			//0311 	11A4
		INCR 	24H, 1H 		//0312 	1AA4
		BTSC 	21H, 7H 		//0313 	2BA1
		LJUMP 	318H 			//0314 	3B18
		LSLF 	20H, 1H 		//0315 	05A0
		RLR 	21H, 1H 			//0316 	1DA1
		LJUMP 	312H 			//0317 	3B12
		LSLF 	25H, 1H 		//0318 	05A5
		RLR 	26H, 1H 			//0319 	1DA6
		LDR 	21H, 0H 			//031A 	1821
		SUBWR 	23H, 0H 		//031B 	1223
		BTSS 	3H, 2H 			//031C 	2D03
		LJUMP 	320H 			//031D 	3B20
		LDR 	20H, 0H 			//031E 	1820
		SUBWR 	22H, 0H 		//031F 	1222
		BTSS 	3H, 0H 			//0320 	2C03
		LJUMP 	327H 			//0321 	3B27
		LDR 	20H, 0H 			//0322 	1820
		SUBWR 	22H, 1H 		//0323 	12A2
		LDR 	21H, 0H 			//0324 	1821
		SUBWFB 	23H, 1H 		//0325 	0BA3
		BSR 	25H, 0H 			//0326 	2425
		LSRF 	21H, 1H 		//0327 	06A1
		RRR 	20H, 1H 			//0328 	1CA0
		DECRSZ 	24H, 1H 		//0329 	1BA4
		LJUMP 	318H 			//032A 	3B18
		LDR 	26H, 0H 			//032B 	1826
		STR 	21H 			//032C 	10A1
		LDR 	25H, 0H 			//032D 	1825
		STR 	20H 			//032E 	10A0
		RET 					//032F 	1008
		LDR 	20H, 0H 			//0330 	1820
		IORWR 	21H, 0H 		//0331 	1421
		BTSC 	3H, 2H 			//0332 	2903
		LJUMP 	34BH 			//0333 	3B4B
		CLRF 	24H 			//0334 	11A4
		INCR 	24H, 1H 		//0335 	1AA4
		BTSC 	21H, 7H 		//0336 	2BA1
		LJUMP 	33BH 			//0337 	3B3B
		LSLF 	20H, 1H 		//0338 	05A0
		RLR 	21H, 1H 			//0339 	1DA1
		LJUMP 	335H 			//033A 	3B35
		LDR 	21H, 0H 			//033B 	1821
		SUBWR 	23H, 0H 		//033C 	1223
		BTSS 	3H, 2H 			//033D 	2D03
		LJUMP 	341H 			//033E 	3B41
		LDR 	20H, 0H 			//033F 	1820
		SUBWR 	22H, 0H 		//0340 	1222
		BTSS 	3H, 0H 			//0341 	2C03
		LJUMP 	347H 			//0342 	3B47
		LDR 	20H, 0H 			//0343 	1820
		SUBWR 	22H, 1H 		//0344 	12A2
		LDR 	21H, 0H 			//0345 	1821
		SUBWFB 	23H, 1H 		//0346 	0BA3
		LSRF 	21H, 1H 		//0347 	06A1
		RRR 	20H, 1H 			//0348 	1CA0
		DECRSZ 	24H, 1H 		//0349 	1BA4
		LJUMP 	33BH 			//034A 	3B3B
		LDR 	23H, 0H 			//034B 	1823
		STR 	21H 			//034C 	10A1
		LDR 	22H, 0H 			//034D 	1822
		STR 	20H 			//034E 	10A0
		RET 					//034F 	1008
		LCALL 	357H 			//0350 	3357
		MOVLP 	0H 			//0351 	0180
		MOVLB 	1H 			//0352 	1021
		LDR 	6BH, 0H 			//0353 	186B
		LCALL 	35BH 			//0354 	335B
		MOVLP 	0H 			//0355 	0180
		LJUMP 	71H 			//0356 	3871

		//;motor.c: 50: PORTBbits.PB1 = 0;
		MOVLB 	0H 			//0357 	1020
		BCR 	DH, 1H 			//0358 	208D

		//;motor.c: 52: s_motor_state = MOTOR_IDLE;
		BCR 	CH, 0H 			//0359 	200C
		RET 					//035A 	1008
		STR 	26H 			//035B 	10A6

		//;uart.c: 214: unsigned char data[2];
		//;uart.c: 215: data[0] = 0x00;
		CLRF 	27H 			//035C 	11A7

		//;uart.c: 216: data[1] = is_open ? 0x01 : 0x00;
		LDR 	26H, 0H 			//035D 	1826
		BTSC 	3H, 2H 			//035E 	2903
		LJUMP 	362H 			//035F 	3B62
		LDWI 	1H 			//0360 	0001
		LJUMP 	363H 			//0361 	3B63
		LDWI 	0H 			//0362 	0000
		STR 	28H 			//0363 	10A8

		//;uart.c: 217: UART_SendFrame(0x03u, data, 2);
		LDWI 	A7H 			//0364 	00A7
		STR 	21H 			//0365 	10A1
		LDWI 	2H 			//0366 	0002
		STR 	22H 			//0367 	10A2
		LDWI 	3H 			//0368 	0003
		LJUMP 	1BAH 			//0369 	39BA
		LDR 	4EH, 0H 			//036A 	184E
		STR 	21H 			//036B 	10A1
		LDR 	4DH, 0H 			//036C 	184D
		STR 	20H 			//036D 	10A0
		LDWI 	5H 			//036E 	0005
		STR 	22H 			//036F 	10A2
		CLRF 	23H 			//0370 	11A3
		RET 					//0371 	1008
		LDWI 	32H 			//0372 	0032
		MOVLB 	1H 			//0373 	1021
		STR 	22H 			//0374 	10A2
		CLRF 	23H 			//0375 	11A3
		RET 					//0376 	1008
		LDR 	22H, 0H 			//0377 	1822
		STR 	24H 			//0378 	10A4
		LDR 	21H, 0H 			//0379 	1821
		STR 	23H 			//037A 	10A3
		LDR 	26H, 0H 			//037B 	1826
		ADDWR 	23H, 0H 		//037C 	1723
		STR 	4H 			//037D 	1084
		LDR 	24H, 0H 			//037E 	1824
		BTSC 	3H, 0H 			//037F 	2803
		INCR 	24H, 0H 		//0380 	1A24
		STR 	5H 			//0381 	1085
		RET 					//0382 	1008
		LDR 	21H, 0H 			//0383 	1821
		STR 	5H 			//0384 	1085
		LDR 	20H, 0H 			//0385 	1820
		STR 	4H 			//0386 	1084
		LDWI 	C5H 			//0387 	00C5
		ADDWR 	4H, 1H 		//0388 	1784
		LDWI 	85H 			//0389 	0085
		ADDWFC 	5H, 1H 		//038A 	0D85
		RET 					//038B 	1008
		LDR 	31H, 0H 			//038C 	1831
		ADDWR 	29H, 0H 		//038D 	1729
		STR 	2AH 			//038E 	10AA
		STR 	6H 			//038F 	1086
		CLRF 	7H 			//0390 	1187
		RET 					//0391 	1008
		STR 	19H 			//0392 	1099
		LDWI 	14H 			//0393 	0014
		MOVLB 	1H 			//0394 	1021
		STR 	22H 			//0395 	10A2
		CLRF 	23H 			//0396 	11A3
		RET 					//0397 	1008

		//;timer.c: 68: g_timer_count++;
		MOVLB 	0H 			//0398 	1020
		INCR 	50H, 1H 		//0399 	1AD0
		BTSC 	3H, 2H 			//039A 	2903
		INCR 	51H, 1H 		//039B 	1AD1

		//;timer.c: 71: if(g_timer_count >= 10000) {
		LDWI 	27H 			//039C 	0027
		SUBWR 	51H, 0H 		//039D 	1251
		LDWI 	10H 			//039E 	0010
		BTSC 	3H, 2H 			//039F 	2903
		SUBWR 	50H, 0H 		//03A0 	1250
		BTSS 	3H, 0H 			//03A1 	2C03
		LJUMP 	3A9H 			//03A2 	3BA9

		//;timer.c: 72: FSM_SendEvent(EV_TIMEOUT);
		LDWI 	2H 			//03A3 	0002
		LCALL 	495H 			//03A4 	3495
		MOVLP 	3H 			//03A5 	0183

		//;timer.c: 73: g_timer_count = 0;
		MOVLB 	0H 			//03A6 	1020
		CLRF 	50H 			//03A7 	11D0
		CLRF 	51H 			//03A8 	11D1

		//;timer.c: 74: }
		//;timer.c: 77: if(PORTBbits.PB7 == 0) {
		BTSC 	DH, 7H 			//03A9 	2B8D
		LJUMP 	3B9H 			//03AA 	3BB9

		//;timer.c: 78: key_press_cnt++;
		INCR 	4EH, 1H 		//03AB 	1ACE
		BTSC 	3H, 2H 			//03AC 	2903
		INCR 	4FH, 1H 		//03AD 	1ACF

		//;timer.c: 79: if(key_press_cnt == 2000) {
		LDWI 	D0H 			//03AE 	00D0
		XORWR 	4EH, 0H 		//03AF 	164E
		LDWI 	7H 			//03B0 	0007
		BTSC 	3H, 2H 			//03B1 	2903
		XORWR 	4FH, 0H 		//03B2 	164F

		//;timer.c: 80: FSM_SendEvent(EV_LONG_PRESS);
		LDWI 	3H 			//03B3 	0003
		BTSS 	3H, 2H 			//03B4 	2D03
		LJUMP 	3BCH 			//03B5 	3BBC
		LCALL 	495H 			//03B6 	3495
		MOVLP 	3H 			//03B7 	0183
		LJUMP 	3BBH 			//03B8 	3BBB

		//;timer.c: 83: key_press_cnt = 0;
		CLRF 	4EH 			//03B9 	11CE
		CLRF 	4FH 			//03BA 	11CF

		//;timer.c: 84: }
		//;timer.c: 87: if(g_current_state == ST_MOTOR_RUNNING) {
		LDWI 	3H 			//03BB 	0003
		MOVLB 	1H 			//03BC 	1021
		XORWR 	64H, 0H 		//03BD 	1664
		BTSS 	3H, 2H 			//03BE 	2D03
		LJUMP 	3D6H 			//03BF 	3BD6

		//;timer.c: 88: if(PORTBbits.PB2 == 0 || PORTBbits.PB0 == 0) {
		MOVLB 	0H 			//03C0 	1020
		BTSS 	DH, 2H 			//03C1 	2D0D
		LJUMP 	3C5H 			//03C2 	3BC5
		BTSC 	DH, 0H 			//03C3 	280D
		LJUMP 	3C8H 			//03C4 	3BC8

		//;timer.c: 89: FSM_SendEvent(EV_LIMIT_HIT);
		LDWI 	8H 			//03C5 	0008
		LCALL 	495H 			//03C6 	3495
		MOVLP 	3H 			//03C7 	0183

		//;timer.c: 90: }
		//;timer.c: 92: if(g_timer_count >= 5000) {
		LDWI 	13H 			//03C8 	0013
		MOVLB 	0H 			//03C9 	1020
		SUBWR 	51H, 0H 		//03CA 	1251
		LDWI 	88H 			//03CB 	0088
		BTSC 	3H, 2H 			//03CC 	2903
		SUBWR 	50H, 0H 		//03CD 	1250

		//;timer.c: 93: FSM_SendEvent(EV_TIMEOUT);
		LDWI 	2H 			//03CE 	0002
		BTSS 	3H, 0H 			//03CF 	2C03
		LJUMP 	3D7H 			//03D0 	3BD7
		LCALL 	495H 			//03D1 	3495
		MOVLP 	3H 			//03D2 	0183

		//;timer.c: 94: g_timer_count = 0;
		MOVLB 	0H 			//03D3 	1020
		CLRF 	50H 			//03D4 	11D0
		CLRF 	51H 			//03D5 	11D1

		//;timer.c: 95: }
		//;timer.c: 96: }
		//;timer.c: 99: if(g_current_state == ST_PAIRING) {
		LDWI 	2H 			//03D6 	0002
		MOVLB 	1H 			//03D7 	1021
		XORWR 	64H, 0H 		//03D8 	1664
		BTSS 	3H, 2H 			//03D9 	2D03
		LJUMP 	3F0H 			//03DA 	3BF0

		//;timer.c: 100: led_blink_cnt++;
		MOVLB 	0H 			//03DB 	1020
		INCR 	4CH, 1H 		//03DC 	1ACC
		BTSC 	3H, 2H 			//03DD 	2903
		INCR 	4DH, 1H 		//03DE 	1ACD

		//;timer.c: 101: if(led_blink_cnt >= 500) {
		LDWI 	1H 			//03DF 	0001
		SUBWR 	4DH, 0H 		//03E0 	124D
		LDWI 	F4H 			//03E1 	00F4
		BTSC 	3H, 2H 			//03E2 	2903
		SUBWR 	4CH, 0H 		//03E3 	124C
		BTSS 	3H, 0H 			//03E4 	2C03
		RET 					//03E5 	1008

		//;timer.c: 102: PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1);
		BCR 	3H, 0H 			//03E6 	2003
		BTSS 	CH, 1H 			//03E7 	2C8C
		BSR 	3H, 0H 			//03E8 	2403
		BTSS 	3H, 0H 			//03E9 	2C03
		LJUMP 	3EEH 			//03EA 	3BEE
		MOVLB 	0H 			//03EB 	1020
		BSR 	CH, 1H 			//03EC 	248C
		LJUMP 	3F0H 			//03ED 	3BF0
		MOVLB 	0H 			//03EE 	1020
		BCR 	CH, 1H 			//03EF 	208C

		//;timer.c: 103: led_blink_cnt = 0;
		MOVLB 	0H 			//03F0 	1020
		CLRF 	4CH 			//03F1 	11CC
		CLRF 	4DH 			//03F2 	11CD
		RET 					//03F3 	1008

		//;uart.c: 55: static ParserState ps = WAIT_HDR;
		//;uart.c: 56: static unsigned char rx_buf[8];
		//;uart.c: 57: static unsigned char data_idx = 0;
		//;uart.c: 58: static unsigned char data_len = 0;
		//;uart.c: 60: if(URRXNE && RXNEF) {
		BTSC 	EH, 0H 			//03F4 	280E
		BTSS 	12H, 0H 		//03F5 	2C12
		RET 					//03F6 	1008

		//;uart.c: 61: unsigned char b = URDATAL;
		LDR 	CH, 0H 			//03F7 	180C
		MOVLB 	0H 			//03F8 	1020
		STR 	43H 			//03F9 	10C3

		//;uart.c: 62: if(b == 0xFF) { ps = WAIT_HDR; }
		INCRSZ 	43H, 0H 		//03FA 	1F43
		LJUMP 	48AH 			//03FB 	3C8A
		CLRF 	54H 			//03FC 	11D4
		LJUMP 	48AH 			//03FD 	3C8A

		//;uart.c: 65: if(b == 0xFF) { ps = RX_SRC; }
		INCRSZ 	43H, 0H 		//03FE 	1F43
		RET 					//03FF 	1008
		CLRF 	54H 			//0400 	11D4
		INCR 	54H, 1H 		//0401 	1AD4
		RET 					//0402 	1008

		//;uart.c: 69: if(b == 0xABu) { ps = WAIT_HDR; break; }
		LDWI 	ABH 			//0403 	00AB
		XORWR 	43H, 0H 		//0404 	1643
		BTSS 	3H, 2H 			//0405 	2D03
		LJUMP 	40AH 			//0406 	3C0A
		MOVLB 	0H 			//0407 	1020
		CLRF 	54H 			//0408 	11D4
		RET 					//0409 	1008

		//;uart.c: 70: rx_buf[0] = b;
		LDR 	43H, 0H 			//040A 	1843
		STR 	44H 			//040B 	10C4

		//;uart.c: 71: ps = RX_FUNC;
		LDWI 	2H 			//040C 	0002
		STR 	54H 			//040D 	10D4

		//;uart.c: 72: break;
		RET 					//040E 	1008

		//;uart.c: 75: data_len = func_data_len(b);
		LDR 	43H, 0H 			//040F 	1843
		LCALL 	499H 			//0410 	3499
		MOVLP 	3H 			//0411 	0183
		STR 	52H 			//0412 	10D2

		//;uart.c: 76: if(data_len == 0xFF) { ps = WAIT_HDR; break; }
		INCRSZ 	52H, 0H 		//0413 	1F52
		LJUMP 	416H 			//0414 	3C16
		LJUMP 	407H 			//0415 	3C07

		//;uart.c: 77: rx_buf[1] = b;
		LDR 	43H, 0H 			//0416 	1843
		STR 	45H 			//0417 	10C5

		//;uart.c: 78: data_idx = 0;
		CLRF 	53H 			//0418 	11D3

		//;uart.c: 79: ps = (data_len > 0) ? RX_DATA : RX_TAIL;
		LDR 	52H, 0H 			//0419 	1852
		BTSS 	3H, 2H 			//041A 	2D03
		LJUMP 	41EH 			//041B 	3C1E
		LDWI 	4H 			//041C 	0004
		LJUMP 	41FH 			//041D 	3C1F
		LDWI 	3H 			//041E 	0003
		STR 	3EH 			//041F 	10BE
		CLRF 	3FH 			//0420 	11BF
		STR 	54H 			//0421 	10D4

		//;uart.c: 80: break;
		RET 					//0422 	1008

		//;uart.c: 83: rx_buf[2 + data_idx] = b;
		LDR 	53H, 0H 			//0423 	1853
		ADDWI 	46H 			//0424 	0E46
		STR 	6H 			//0425 	1086
		CLRF 	7H 			//0426 	1187
		LDR 	43H, 0H 			//0427 	1843
		STR 	1H 			//0428 	1081

		//;uart.c: 84: if(++data_idx >= data_len) { ps = RX_TAIL; }
		LDR 	52H, 0H 			//0429 	1852
		INCR 	53H, 1H 		//042A 	1AD3
		SUBWR 	53H, 0H 		//042B 	1253
		BTSS 	3H, 0H 			//042C 	2C03
		RET 					//042D 	1008
		LDWI 	4H 			//042E 	0004
		STR 	54H 			//042F 	10D4
		RET 					//0430 	1008

		//;uart.c: 88: if(b == 0xFE) {
		LDWI 	FEH 			//0431 	00FE
		XORWR 	43H, 0H 		//0432 	1643
		BTSS 	3H, 2H 			//0433 	2D03
		LJUMP 	407H 			//0434 	3C07

		//;uart.c: 90: if(rx_buf[1] == 0x03u) {
		LDWI 	3H 			//0435 	0003
		XORWR 	45H, 0H 		//0436 	1645
		BTSS 	3H, 2H 			//0437 	2D03
		LJUMP 	44CH 			//0438 	3C4C

		//;uart.c: 92: if(rx_buf[2] == 0x00 && rx_buf[3] == 0x01)
		LDR 	46H, 0H 			//0439 	1846
		BTSS 	3H, 2H 			//043A 	2D03
		LJUMP 	442H 			//043B 	3C42
		DECRSZ 	47H, 0H 		//043C 	1B47
		LJUMP 	442H 			//043D 	3C42

		//;uart.c: 93: FSM_SendEvent(EV_CMD_OPEN);
		LDWI 	6H 			//043E 	0006
		LCALL 	495H 			//043F 	3495
		MOVLP 	3H 			//0440 	0183
		LJUMP 	407H 			//0441 	3C07

		//;uart.c: 94: else if(rx_buf[2] == 0x00 && rx_buf[3] == 0x00)
		LDR 	46H, 0H 			//0442 	1846
		BTSS 	3H, 2H 			//0443 	2D03
		LJUMP 	407H 			//0444 	3C07
		LDR 	47H, 0H 			//0445 	1847
		BTSS 	3H, 2H 			//0446 	2D03
		LJUMP 	407H 			//0447 	3C07

		//;uart.c: 95: FSM_SendEvent(EV_CMD_CLOSE);
		LDWI 	7H 			//0448 	0007
		LCALL 	495H 			//0449 	3495
		MOVLP 	3H 			//044A 	0183
		LJUMP 	407H 			//044B 	3C07

		//;uart.c: 97: else if(rx_buf[1] == 0x04u) {
		LDWI 	4H 			//044C 	0004
		XORWR 	45H, 0H 		//044D 	1645
		BTSS 	3H, 2H 			//044E 	2D03
		LJUMP 	45AH 			//044F 	3C5A

		//;uart.c: 98: if(rx_buf[2] == 0x00 && rx_buf[3] == 0x00)
		LDR 	46H, 0H 			//0450 	1846
		BTSS 	3H, 2H 			//0451 	2D03
		LJUMP 	407H 			//0452 	3C07
		LDR 	47H, 0H 			//0453 	1847
		BTSS 	3H, 2H 			//0454 	2D03
		LJUMP 	407H 			//0455 	3C07

		//;uart.c: 99: FSM_SendEvent(EV_PAIR_SUCCESS);
		LDWI 	4H 			//0456 	0004
		LCALL 	495H 			//0457 	3495
		MOVLP 	3H 			//0458 	0183
		LJUMP 	407H 			//0459 	3C07

		//;uart.c: 101: else if(rx_buf[1] == 0x01u && g_current_state == ST_PAIRING) {
		DECRSZ 	45H, 0H 		//045A 	1B45
		LJUMP 	407H 			//045B 	3C07
		LDWI 	2H 			//045C 	0002
		MOVLB 	1H 			//045D 	1021
		XORWR 	64H, 0H 		//045E 	1664
		BTSS 	3H, 2H 			//045F 	2D03
		LJUMP 	407H 			//0460 	3C07

		//;uart.c: 103: unsigned int addr = 0;
		MOVLB 	0H 			//0461 	1020
		CLRF 	40H 			//0462 	11C0
		CLRF 	41H 			//0463 	11C1

		//;uart.c: 104: unsigned char i;
		//;uart.c: 105: for(i = 0; i < 5; i++) {
		CLRF 	42H 			//0464 	11C2

		//;uart.c: 106: addr = addr * 10 + rx_buf[2 + i];
		LDR 	42H, 0H 			//0465 	1842
		ADDWI 	46H 			//0466 	0E46
		STR 	6H 			//0467 	1086
		CLRF 	7H 			//0468 	1187
		LDR 	1H, 0H 			//0469 	1801
		STR 	3CH 			//046A 	10BC
		CLRF 	3DH 			//046B 	11BD
		LDR 	41H, 0H 			//046C 	1841
		STR 	71H 			//046D 	10F1
		LDR 	40H, 0H 			//046E 	1840
		STR 	70H 			//046F 	10F0
		LDWI 	AH 			//0470 	000A
		STR 	72H 			//0471 	10F2
		CLRF 	73H 			//0472 	11F3
		LCALL 	57BH 			//0473 	357B
		MOVLP 	3H 			//0474 	0183
		LDR 	3CH, 0H 			//0475 	183C
		ADDWR 	70H, 0H 		//0476 	1770
		STR 	40H 			//0477 	10C0
		LDR 	3DH, 0H 			//0478 	183D
		ADDWFC 	71H, 0H 		//0479 	0D71
		STR 	41H 			//047A 	10C1
		LDWI 	5H 			//047B 	0005
		INCR 	42H, 1H 		//047C 	1AC2
		SUBWR 	42H, 0H 		//047D 	1242
		BTSS 	3H, 0H 			//047E 	2C03
		LJUMP 	465H 			//047F 	3C65

		//;uart.c: 107: }
		//;uart.c: 108: UART_SendATCmd_ADR(addr);
		LDR 	41H, 0H 			//0480 	1841
		STR 	7CH 			//0481 	10FC
		LDR 	40H, 0H 			//0482 	1840
		STR 	7BH 			//0483 	10FB
		LCALL 	4AAH 			//0484 	34AA
		MOVLP 	3H 			//0485 	0183

		//;uart.c: 109: FSM_SendEvent(EV_PAIR_SUCCESS);
		LDWI 	4H 			//0486 	0004
		LCALL 	495H 			//0487 	3495
		MOVLP 	3H 			//0488 	0183
		LJUMP 	407H 			//0489 	3C07
		LDR 	54H, 0H 			//048A 	1854
		STR 	4H 			//048B 	1084
		LDWI 	5H 			//048C 	0005
		SUBWR 	4H, 0H 		//048D 	1204
		BTSC 	3H, 0H 			//048E 	2803
		LJUMP 	407H 			//048F 	3C07
		MOVLP 	6H 			//0490 	0186
		LSLF 	4H, 0H 			//0491 	0504
		ADDWI 	45H 			//0492 	0E45
		STR 	2H 			//0493 	1082
		RET 					//0494 	1008
		STR 	70H 			//0495 	10F0

		//;app_fsm.c: 41: g_system_evt = evt;
		MOVLB 	1H 			//0496 	1021
		STR 	6CH 			//0497 	10EC
		RET 					//0498 	1008
		STR 	70H 			//0499 	10F0

		//;uart.c: 21: switch(func) {
		LJUMP 	49EH 			//049A 	3C9E
		RETW 	5H 			//049B 	0405
		RETW 	2H 			//049C 	0402
		RETW 	FFH 			//049D 	04FF
		LDR 	70H, 0H 			//049E 	1870
		XORWI 	1H 			//049F 	0A01
		BTSC 	3H, 2H 			//04A0 	2903
		LJUMP 	49BH 			//04A1 	3C9B
		XORWI 	2H 			//04A2 	0A02
		BTSC 	3H, 2H 			//04A3 	2903
		LJUMP 	49CH 			//04A4 	3C9C
		XORWI 	7H 			//04A5 	0A07
		BTSC 	3H, 2H 			//04A6 	2903
		LJUMP 	49CH 			//04A7 	3C9C
		LJUMP 	49DH 			//04A8 	3C9D
		RET 					//04A9 	1008

		//;uart.c: 167: char buf[20] = "AT+ADR=";
		LDWI 	D0H 			//04AA 	00D0
		STR 	6H 			//04AB 	1086
		LDWI 	0H 			//04AC 	0000
		STR 	7H 			//04AD 	1087
		LDWI 	28H 			//04AE 	0028
		STR 	4H 			//04AF 	1084
		LDWI 	0H 			//04B0 	0000
		STR 	5H 			//04B1 	1085
		LDWI 	14H 			//04B2 	0014
		STR 	7DH 			//04B3 	10FD
		MOVIW 	FSR1++ 		//04B4 	1016
		MOVWI 	FSR0++ 		//04B5 	101A
		DECRSZ 	7DH, 1H 		//04B6 	1BFD
		LJUMP 	4B4H 			//04B7 	3CB4

		//;uart.c: 168: uint_to_str(addr, buf + 7);
		LDR 	7CH, 0H 			//04B8 	187C
		STR 	78H 			//04B9 	10F8
		LDR 	7BH, 0H 			//04BA 	187B
		STR 	77H 			//04BB 	10F7
		LDWI 	2FH 			//04BC 	002F
		STR 	79H 			//04BD 	10F9
		LCALL 	4E6H 			//04BE 	34E6
		MOVLP 	3H 			//04BF 	0183

		//;uart.c: 169: UART_SendATCmd(buf);
		LDWI 	28H 			//04C0 	0028
		STR 	71H 			//04C1 	10F1
		LDWI 	0H 			//04C2 	0000
		STR 	72H 			//04C3 	10F2
		LCALL 	4CBH 			//04C4 	34CB
		MOVLP 	3H 			//04C5 	0183

		//;uart.c: 170: DelayMs(50);
		LDWI 	32H 			//04C6 	0032
		STR 	72H 			//04C7 	10F2
		CLRF 	73H 			//04C8 	11F3
		LCALL 	590H 			//04C9 	3590
		RET 					//04CA 	1008

		//;uart.c: 152: unsigned char j = 0;
		CLRF 	76H 			//04CB 	11F6

		//;uart.c: 153: while(cmd[j] != '\0') {
		LCALL 	5B0H 			//04CC 	35B0
		MOVLP 	3H 			//04CD 	0183
		MOVIW 	FSR0++ 		//04CE 	1012
		BTSC 	3H, 2H 			//04CF 	2903
		LJUMP 	4D8H 			//04D0 	3CD8

		//;uart.c: 154: UART_SendByte(cmd[j]);
		LCALL 	5B0H 			//04D1 	35B0
		MOVLP 	3H 			//04D2 	0183
		LDR 	0H, 0H 			//04D3 	1800
		LCALL 	4DEH 			//04D4 	34DE
		MOVLP 	3H 			//04D5 	0183

		//;uart.c: 155: j++;
		INCR 	76H, 1H 		//04D6 	1AF6
		LJUMP 	4CCH 			//04D7 	3CCC

		//;uart.c: 156: }
		//;uart.c: 157: UART_SendByte(0x0D);
		LDWI 	DH 			//04D8 	000D
		LCALL 	4DEH 			//04D9 	34DE
		MOVLP 	3H 			//04DA 	0183

		//;uart.c: 158: UART_SendByte(0x0A);
		LDWI 	AH 			//04DB 	000A
		LCALL 	4DEH 			//04DC 	34DE
		RET 					//04DD 	1008
		STR 	70H 			//04DE 	10F0

		//;uart.c: 141: TXEF = 0;
		MOVLB 	9H 			//04DF 	1029
		BCR 	12H, 5H 			//04E0 	2292

		//;uart.c: 142: URDATAL = data;
		LDR 	70H, 0H 			//04E1 	1870
		STR 	CH 			//04E2 	108C

		//;uart.c: 143: while(!TCF) {}
		BTSC 	1CH, 0H 		//04E3 	281C
		RET 					//04E4 	1008
		LJUMP 	4E3H 			//04E5 	3CE3

		//;uart.c: 127: char tmp[6] = {0};
		LDWI 	E5H 			//04E6 	00E5
		STR 	6H 			//04E7 	1086
		LDWI 	0H 			//04E8 	0000
		STR 	7H 			//04E9 	1087
		LDWI 	20H 			//04EA 	0020
		STR 	4H 			//04EB 	1084
		LDWI 	0H 			//04EC 	0000
		STR 	5H 			//04ED 	1085
		LDWI 	6H 			//04EE 	0006
		STR 	7AH 			//04EF 	10FA
		MOVIW 	FSR1++ 		//04F0 	1016
		MOVWI 	FSR0++ 		//04F1 	101A
		DECRSZ 	7AH, 1H 		//04F2 	1BFA
		LJUMP 	4F0H 			//04F3 	3CF0

		//;uart.c: 128: unsigned char i = 0, j = 0;
		CLRF 	27H 			//04F4 	11A7
		CLRF 	26H 			//04F5 	11A6

		//;uart.c: 129: if(val == 0) { buf[0] = '0'; buf[1] = '\0'; return 1; }
		LDR 	77H, 0H 			//04F6 	1877
		IORWR 	78H, 0H 		//04F7 	1478
		BTSS 	3H, 2H 			//04F8 	2D03
		LJUMP 	521H 			//04F9 	3D21
		LDR 	79H, 0H 			//04FA 	1879
		STR 	6H 			//04FB 	1086
		LDWI 	30H 			//04FC 	0030
		CLRF 	7H 			//04FD 	1187
		STR 	1H 			//04FE 	1081
		INCR 	79H, 0H 		//04FF 	1A79
		STR 	6H 			//0500 	1086
		CLRF 	1H 			//0501 	1181
		RET 					//0502 	1008
		LDR 	27H, 0H 			//0503 	1827
		ADDWI 	20H 			//0504 	0E20
		STR 	6H 			//0505 	1086
		LDWI 	AH 			//0506 	000A
		CLRF 	7H 			//0507 	1187
		STR 	70H 			//0508 	10F0
		CLRF 	71H 			//0509 	11F1
		LDR 	78H, 0H 			//050A 	1878
		STR 	73H 			//050B 	10F3
		LDR 	77H, 0H 			//050C 	1877
		STR 	72H 			//050D 	10F2
		LCALL 	55BH 			//050E 	355B
		MOVLP 	3H 			//050F 	0183
		LDR 	70H, 0H 			//0510 	1870
		ADDWI 	30H 			//0511 	0E30
		STR 	1H 			//0512 	1081
		LDWI 	AH 			//0513 	000A
		INCR 	27H, 1H 		//0514 	1AA7
		STR 	70H 			//0515 	10F0
		CLRF 	71H 			//0516 	11F1
		LDR 	78H, 0H 			//0517 	1878
		STR 	73H 			//0518 	10F3
		LDR 	77H, 0H 			//0519 	1877
		STR 	72H 			//051A 	10F2
		LCALL 	536H 			//051B 	3536
		MOVLP 	3H 			//051C 	0183
		LDR 	71H, 0H 			//051D 	1871
		STR 	78H 			//051E 	10F8
		LDR 	70H, 0H 			//051F 	1870
		STR 	77H 			//0520 	10F7
		LDR 	77H, 0H 			//0521 	1877
		IORWR 	78H, 0H 		//0522 	1478
		BTSC 	3H, 2H 			//0523 	2903
		LJUMP 	530H 			//0524 	3D30
		LJUMP 	503H 			//0525 	3D03
		LCALL 	5BCH 			//0526 	35BC
		MOVLP 	3H 			//0527 	0183
		DECR 	27H, 1H 		//0528 	13A7
		LDR 	27H, 0H 			//0529 	1827
		ADDWI 	20H 			//052A 	0E20
		STR 	4H 			//052B 	1084
		CLRF 	5H 			//052C 	1185
		LDR 	0H, 0H 			//052D 	1800
		STR 	1H 			//052E 	1081
		INCR 	26H, 1H 		//052F 	1AA6
		LDR 	27H, 0H 			//0530 	1827
		BTSS 	3H, 2H 			//0531 	2D03
		LJUMP 	526H 			//0532 	3D26

		//;uart.c: 132: buf[j] = '\0';
		LCALL 	5BCH 			//0533 	35BC
		CLRF 	1H 			//0534 	1181
		RET 					//0535 	1008
		CLRF 	74H 			//0536 	11F4
		CLRF 	75H 			//0537 	11F5
		LDR 	70H, 0H 			//0538 	1870
		IORWR 	71H, 0H 		//0539 	1471
		BTSC 	3H, 2H 			//053A 	2903
		LJUMP 	556H 			//053B 	3D56
		CLRF 	76H 			//053C 	11F6
		INCR 	76H, 1H 		//053D 	1AF6
		BTSC 	71H, 7H 		//053E 	2BF1
		LJUMP 	543H 			//053F 	3D43
		LSLF 	70H, 1H 		//0540 	05F0
		RLR 	71H, 1H 			//0541 	1DF1
		LJUMP 	53DH 			//0542 	3D3D
		LSLF 	74H, 1H 		//0543 	05F4
		RLR 	75H, 1H 			//0544 	1DF5
		LDR 	71H, 0H 			//0545 	1871
		SUBWR 	73H, 0H 		//0546 	1273
		BTSS 	3H, 2H 			//0547 	2D03
		LJUMP 	54BH 			//0548 	3D4B
		LDR 	70H, 0H 			//0549 	1870
		SUBWR 	72H, 0H 		//054A 	1272
		BTSS 	3H, 0H 			//054B 	2C03
		LJUMP 	552H 			//054C 	3D52
		LDR 	70H, 0H 			//054D 	1870
		SUBWR 	72H, 1H 		//054E 	12F2
		LDR 	71H, 0H 			//054F 	1871
		SUBWFB 	73H, 1H 		//0550 	0BF3
		BSR 	74H, 0H 			//0551 	2474
		LSRF 	71H, 1H 		//0552 	06F1
		RRR 	70H, 1H 			//0553 	1CF0
		DECRSZ 	76H, 1H 		//0554 	1BF6
		LJUMP 	543H 			//0555 	3D43
		LDR 	75H, 0H 			//0556 	1875
		STR 	71H 			//0557 	10F1
		LDR 	74H, 0H 			//0558 	1874
		STR 	70H 			//0559 	10F0
		RET 					//055A 	1008
		LDR 	70H, 0H 			//055B 	1870
		IORWR 	71H, 0H 		//055C 	1471
		BTSC 	3H, 2H 			//055D 	2903
		LJUMP 	576H 			//055E 	3D76
		CLRF 	74H 			//055F 	11F4
		INCR 	74H, 1H 		//0560 	1AF4
		BTSC 	71H, 7H 		//0561 	2BF1
		LJUMP 	566H 			//0562 	3D66
		LSLF 	70H, 1H 		//0563 	05F0
		RLR 	71H, 1H 			//0564 	1DF1
		LJUMP 	560H 			//0565 	3D60
		LDR 	71H, 0H 			//0566 	1871
		SUBWR 	73H, 0H 		//0567 	1273
		BTSS 	3H, 2H 			//0568 	2D03
		LJUMP 	56CH 			//0569 	3D6C
		LDR 	70H, 0H 			//056A 	1870
		SUBWR 	72H, 0H 		//056B 	1272
		BTSS 	3H, 0H 			//056C 	2C03
		LJUMP 	572H 			//056D 	3D72
		LDR 	70H, 0H 			//056E 	1870
		SUBWR 	72H, 1H 		//056F 	12F2
		LDR 	71H, 0H 			//0570 	1871
		SUBWFB 	73H, 1H 		//0571 	0BF3
		LSRF 	71H, 1H 		//0572 	06F1
		RRR 	70H, 1H 			//0573 	1CF0
		DECRSZ 	74H, 1H 		//0574 	1BF4
		LJUMP 	566H 			//0575 	3D66
		LDR 	73H, 0H 			//0576 	1873
		STR 	71H 			//0577 	10F1
		LDR 	72H, 0H 			//0578 	1872
		STR 	70H 			//0579 	10F0
		RET 					//057A 	1008
		CLRF 	74H 			//057B 	11F4
		CLRF 	75H 			//057C 	11F5
		BTSS 	70H, 0H 		//057D 	2C70
		LJUMP 	583H 			//057E 	3D83
		LDR 	72H, 0H 			//057F 	1872
		ADDWR 	74H, 1H 		//0580 	17F4
		LDR 	73H, 0H 			//0581 	1873
		ADDWFC 	75H, 1H 		//0582 	0DF5
		LSLF 	72H, 1H 		//0583 	05F2
		RLR 	73H, 1H 			//0584 	1DF3
		LSRF 	71H, 1H 		//0585 	06F1
		RRR 	70H, 1H 			//0586 	1CF0
		LDR 	70H, 0H 			//0587 	1870
		IORWR 	71H, 0H 		//0588 	1471
		BTSS 	3H, 2H 			//0589 	2D03
		LJUMP 	57DH 			//058A 	3D7D
		LDR 	75H, 0H 			//058B 	1875
		STR 	71H 			//058C 	10F1
		LDR 	74H, 0H 			//058D 	1874
		STR 	70H 			//058E 	10F0
		RET 					//058F 	1008

		//;timer.c: 32: unsigned char a,b;
		//;timer.c: 33: for(a=0;a<Time;a++)
		CLRF 	76H 			//0590 	11F6
		LDR 	76H, 0H 			//0591 	1876
		STR 	74H 			//0592 	10F4
		CLRF 	75H 			//0593 	11F5
		LDR 	73H, 0H 			//0594 	1873
		SUBWR 	75H, 0H 		//0595 	1275
		BTSS 	3H, 2H 			//0596 	2D03
		LJUMP 	59AH 			//0597 	3D9A
		LDR 	72H, 0H 			//0598 	1872
		SUBWR 	74H, 0H 		//0599 	1274
		BTSC 	3H, 0H 			//059A 	2803
		RET 					//059B 	1008

		//;timer.c: 34: {
		//;timer.c: 35: for(b=0;b<5;b++)
		CLRF 	77H 			//059C 	11F7

		//;timer.c: 36: {
		//;timer.c: 37: DelayUs(197);
		LDWI 	C5H 			//059D 	00C5
		LCALL 	5A7H 			//059E 	35A7
		MOVLP 	3H 			//059F 	0183
		LDWI 	5H 			//05A0 	0005
		INCR 	77H, 1H 		//05A1 	1AF7
		SUBWR 	77H, 0H 		//05A2 	1277
		BTSS 	3H, 0H 			//05A3 	2C03
		LJUMP 	59DH 			//05A4 	3D9D
		INCR 	76H, 1H 		//05A5 	1AF6
		LJUMP 	591H 			//05A6 	3D91
		STR 	70H 			//05A7 	10F0

		//;timer.c: 18: unsigned char a;
		//;timer.c: 19: for(a=0;a<Time;a++)
		CLRF 	71H 			//05A8 	11F1
		LDR 	70H, 0H 			//05A9 	1870
		SUBWR 	71H, 0H 		//05AA 	1271
		BTSC 	3H, 0H 			//05AB 	2803
		RET 					//05AC 	1008

		//;timer.c: 20: {
		//;timer.c: 21: __nop();
		NOP 					//05AD 	1000
		INCR 	71H, 1H 		//05AE 	1AF1
		LJUMP 	5A9H 			//05AF 	3DA9
		LDR 	72H, 0H 			//05B0 	1872
		STR 	74H 			//05B1 	10F4
		LDR 	71H, 0H 			//05B2 	1871
		STR 	73H 			//05B3 	10F3
		LDR 	76H, 0H 			//05B4 	1876
		ADDWR 	73H, 0H 		//05B5 	1773
		STR 	4H 			//05B6 	1084
		LDR 	74H, 0H 			//05B7 	1874
		BTSC 	3H, 0H 			//05B8 	2803
		INCR 	74H, 0H 		//05B9 	1A74
		STR 	5H 			//05BA 	1085
		RET 					//05BB 	1008
		LDR 	26H, 0H 			//05BC 	1826
		ADDWR 	79H, 0H 		//05BD 	1779
		STR 	7AH 			//05BE 	10FA
		STR 	6H 			//05BF 	1086
		CLRF 	7H 			//05C0 	1187
		RET 					//05C1 	1008
		RETW 	0H 			//05C2 	0400
		RETW 	1H 			//05C3 	0401
		RETW 	1H 			//05C4 	0401
		RETW 	94H 			//05C5 	0494
		RETW 	0H 			//05C6 	0400
		RETW 	1H 			//05C7 	0401
		RETW 	2H 			//05C8 	0402
		RETW 	0H 			//05C9 	0400
		RETW 	30H 			//05CA 	0430
		RETW 	0H 			//05CB 	0400
		RETW 	1H 			//05CC 	0401
		RETW 	3H 			//05CD 	0403
		RETW 	2H 			//05CE 	0402
		RETW 	35H 			//05CF 	0435
		RETW 	0H 			//05D0 	0400
		RETW 	1H 			//05D1 	0401
		RETW 	6H 			//05D2 	0406
		RETW 	3H 			//05D3 	0403
		RETW 	22H 			//05D4 	0422
		RETW 	0H 			//05D5 	0400
		RETW 	1H 			//05D6 	0401
		RETW 	7H 			//05D7 	0407
		RETW 	3H 			//05D8 	0403
		RETW 	1AH 			//05D9 	041A
		RETW 	0H 			//05DA 	0400
		RETW 	2H 			//05DB 	0402
		RETW 	4H 			//05DC 	0404
		RETW 	1H 			//05DD 	0401
		RETW 	43H 			//05DE 	0443
		RETW 	0H 			//05DF 	0400
		RETW 	1H 			//05E0 	0401
		RETW 	4H 			//05E1 	0404
		RETW 	1H 			//05E2 	0401
		RETW 	43H 			//05E3 	0443
		RETW 	0H 			//05E4 	0400
		RETW 	2H 			//05E5 	0402
		RETW 	2H 			//05E6 	0402
		RETW 	1H 			//05E7 	0401
		RETW 	19H 			//05E8 	0419
		RETW 	0H 			//05E9 	0400
		RETW 	3H 			//05EA 	0403
		RETW 	2H 			//05EB 	0402
		RETW 	1H 			//05EC 	0401
		RETW 	2BH 			//05ED 	042B
		RETW 	0H 			//05EE 	0400
		RETW 	3H 			//05EF 	0403
		RETW 	8H 			//05F0 	0408
		RETW 	1H 			//05F1 	0401
		RETW 	50H 			//05F2 	0450
		RETW 	3H 			//05F3 	0403
		RETW 	41H 			//05F4 	0441
		RETW 	54H 			//05F5 	0454
		RETW 	2BH 			//05F6 	042B
		RETW 	46H 			//05F7 	0446
		RETW 	45H 			//05F8 	0445
		RETW 	51H 			//05F9 	0451
		RETW 	3DH 			//05FA 	043D
		RETW 	34H 			//05FB 	0434
		RETW 	33H 			//05FC 	0433
		RETW 	34H 			//05FD 	0434
		RETW 	30H 			//05FE 	0430
		RETW 	30H 			//05FF 	0430
		RETW 	30H 			//0600 	0430
		RETW 	30H 			//0601 	0430
		RETW 	30H 			//0602 	0430
		RETW 	30H 			//0603 	0430
		RETW 	0H 			//0604 	0400
		RETW 	41H 			//0605 	0441
		RETW 	54H 			//0606 	0454
		RETW 	2BH 			//0607 	042B
		RETW 	41H 			//0608 	0441
		RETW 	44H 			//0609 	0444
		RETW 	52H 			//060A 	0452
		RETW 	3DH 			//060B 	043D
		RETW 	0H 			//060C 	0400
		RETW 	0H 			//060D 	0400
		RETW 	0H 			//060E 	0400
		RETW 	0H 			//060F 	0400
		RETW 	0H 			//0610 	0400
		RETW 	0H 			//0611 	0400
		RETW 	0H 			//0612 	0400
		RETW 	0H 			//0613 	0400
		RETW 	0H 			//0614 	0400
		RETW 	0H 			//0615 	0400
		RETW 	0H 			//0616 	0400
		RETW 	0H 			//0617 	0400
		RETW 	0H 			//0618 	0400
		RETW 	1H 			//0619 	0401
		RETW 	41H 			//061A 	0441
		RETW 	54H 			//061B 	0454
		RETW 	2BH 			//061C 	042B
		RETW 	55H 			//061D 	0455
		RETW 	41H 			//061E 	0441
		RETW 	52H 			//061F 	0452
		RETW 	54H 			//0620 	0454
		RETW 	3DH 			//0621 	043D
		RETW 	33H 			//0622 	0433
		RETW 	2CH 			//0623 	042C
		RETW 	30H 			//0624 	0430
		RETW 	0H 			//0625 	0400
		RETW 	41H 			//0626 	0441
		RETW 	54H 			//0627 	0454
		RETW 	2BH 			//0628 	042B
		RETW 	50H 			//0629 	0450
		RETW 	42H 			//062A 	0442
		RETW 	3DH 			//062B 	043D
		RETW 	32H 			//062C 	0432
		RETW 	35H 			//062D 	0435
		RETW 	30H 			//062E 	0430
		RETW 	30H 			//062F 	0430
		RETW 	0H 			//0630 	0400
		RETW 	41H 			//0631 	0441
		RETW 	54H 			//0632 	0454
		RETW 	2BH 			//0633 	042B
		RETW 	4DH 			//0634 	044D
		RETW 	4FH 			//0635 	044F
		RETW 	44H 			//0636 	0444
		RETW 	45H 			//0637 	0445
		RETW 	3DH 			//0638 	043D
		RETW 	31H 			//0639 	0431
		RETW 	0H 			//063A 	0400
		RETW 	41H 			//063B 	0441
		RETW 	54H 			//063C 	0454
		RETW 	2BH 			//063D 	042B
		RETW 	50H 			//063E 	0450
		RETW 	57H 			//063F 	0457
		RETW 	52H 			//0640 	0452
		RETW 	3DH 			//0641 	043D
		RETW 	32H 			//0642 	0432
		RETW 	39H 			//0643 	0439
		RETW 	0H 			//0644 	0400
		MOVLP 	3H 			//0645 	0183
		LJUMP 	3FEH 			//0646 	3BFE
		MOVLP 	4H 			//0647 	0184
		LJUMP 	403H 			//0648 	3C03
		MOVLP 	4H 			//0649 	0184
		LJUMP 	40FH 			//064A 	3C0F
		MOVLP 	4H 			//064B 	0184
		LJUMP 	423H 			//064C 	3C23
		MOVLP 	4H 			//064D 	0184
		LJUMP 	431H 			//064E 	3C31
		RETW 	41H 			//064F 	0441
		RETW 	54H 			//0650 	0454
		RETW 	2BH 			//0651 	042B
		RETW 	43H 			//0652 	0443
		RETW 	52H 			//0653 	0452
		RETW 	43H 			//0654 	0443
		RETW 	3DH 			//0655 	043D
		RETW 	31H 			//0656 	0431
		RETW 	0H 			//0657 	0400
		RETW 	41H 			//0658 	0441
		RETW 	54H 			//0659 	0454
		RETW 	2BH 			//065A 	042B
		RETW 	43H 			//065B 	0443
		RETW 	52H 			//065C 	0452
		RETW 	3DH 			//065D 	043D
		RETW 	31H 			//065E 	0431
		RETW 	0H 			//065F 	0400
		RETW 	41H 			//0660 	0441
		RETW 	54H 			//0661 	0454
		RETW 	2BH 			//0662 	042B
		RETW 	57H 			//0663 	0457
		RETW 	54H 			//0664 	0454
		RETW 	3DH 			//0665 	043D
		RETW 	32H 			//0666 	0432
		RETW 	0H 			//0667 	0400
		RETW 	41H 			//0668 	0441
		RETW 	54H 			//0669 	0454
		RETW 	2BH 			//066A 	042B
		RETW 	53H 			//066B 	0453
		RETW 	46H 			//066C 	0446
		RETW 	3DH 			//066D 	043D
		RETW 	37H 			//066E 	0437
		RETW 	0H 			//066F 	0400
		RETW 	41H 			//0670 	0441
		RETW 	54H 			//0671 	0454
		RETW 	2BH 			//0672 	042B
		RETW 	42H 			//0673 	0442
		RETW 	57H 			//0674 	0457
		RETW 	3DH 			//0675 	043D
		RETW 	39H 			//0676 	0439
		RETW 	0H 			//0677 	0400
		STR 	7EH 			//0678 	10FE
		MOVIW 	FSR0++ 		//0679 	1012
		MOVWI 	FSR1++ 		//067A 	101E
		DECRSZ 	7EH, 1H 		//067B 	1BFE
		LJUMP 	679H 			//067C 	3E79
		RETW 	0H 			//067D 	0400
		CLRWDT 			//067E 	1064
		CLRF 	0H 			//067F 	1180
		ADDFSR 	0H, 1H 		//0680 	0101
		DECRSZ 	9H, 1H 		//0681 	1B89
		LJUMP 	67FH 			//0682 	3E7F
		RETW 	0H 			//0683 	0400
		RETW 	41H 			//0684 	0441
		RETW 	54H 			//0685 	0454
		RETW 	57H 			//0686 	0457
		RETW 	0H 			//0687 	0400
			END
