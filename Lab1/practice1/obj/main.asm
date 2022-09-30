;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _light_up
	.globl _shift_right
	.globl _shift_left
	.globl _scan_row
	.globl _delay_ms
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _light_up_PARM_2
	.globl _shift_right_PARM_2
	.globl _shift_left_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_shift_left_PARM_2:
	.ds 1
_shift_right_PARM_2:
	.ds 1
_light_up_PARM_2:
	.ds 1
_main_preINPUT_65536_16:
	.ds 20
_main_i_131072_17:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'scan_row'
;------------------------------------------------------------
;row                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:13: void scan_row(unsigned int row)
;	-----------------------------------------
;	 function scan_row
;	-----------------------------------------
_scan_row:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:15: switch (row)
	cjne	r6,#0x01,00120$
	cjne	r7,#0x00,00120$
	sjmp	00101$
00120$:
	cjne	r6,#0x02,00121$
	cjne	r7,#0x00,00121$
	sjmp	00102$
00121$:
;	./src/main.c:17: case 1:
	cjne	r6,#0x03,00106$
	cjne	r7,#0x00,00106$
	sjmp	00103$
00101$:
;	./src/main.c:19: OUTPUT1 = 0; // row1 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:20: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:21: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_2
;	./src/main.c:22: break;
;	./src/main.c:24: case 2:
	ret
00102$:
;	./src/main.c:25: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:26: OUTPUT2 = 0; // row2 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:27: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_2
;	./src/main.c:28: break;
;	./src/main.c:30: case 3:
	ret
00103$:
;	./src/main.c:31: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:32: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:33: OUTPUT3 = 0; // row3 output 0
;	assignBit
	clr	_P0_2
;	./src/main.c:38: }
00106$:
;	./src/main.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shift_left'
;------------------------------------------------------------
;patt                      Allocated with name '_shift_left_PARM_2'
;bit                       Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:40: unsigned char shift_left(unsigned int bit, unsigned char patt)
;	-----------------------------------------
;	 function shift_left
;	-----------------------------------------
_shift_left:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:42: for (int i = 0; i < bit; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00103$
;	./src/main.c:44: patt = patt >> 1;
	mov	a,_shift_left_PARM_2
	clr	c
	rrc	a
;	./src/main.c:45: if (patt == 0x00)
	mov	_shift_left_PARM_2,a
	jnz	00106$
;	./src/main.c:46: patt = 0x80;
	mov	_shift_left_PARM_2,#0x80
00106$:
;	./src/main.c:42: for (int i = 0; i < bit; i++)
	inc	r4
	cjne	r4,#0x00,00105$
	inc	r5
	sjmp	00105$
00103$:
;	./src/main.c:49: led = ~patt;
	mov	a,_shift_left_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:50: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:51: return patt;
	mov	dpl,_shift_left_PARM_2
;	./src/main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shift_right'
;------------------------------------------------------------
;patt                      Allocated with name '_shift_right_PARM_2'
;bit                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:53: unsigned char shift_right(unsigned int bit, unsigned char patt)
;	-----------------------------------------
;	 function shift_right
;	-----------------------------------------
_shift_right:
	mov	r6,dpl
;	./src/main.c:55: if (patt == 0x80)
	mov	a,#0x80
	cjne	a,_shift_right_PARM_2,00102$
;	./src/main.c:56: patt = 0x00 + 1;
	mov	_shift_right_PARM_2,#0x01
	sjmp	00103$
00102$:
;	./src/main.c:58: patt = patt << bit;
	mov	b,r6
	inc	b
	mov	a,_shift_right_PARM_2
	sjmp	00114$
00112$:
	add	a,acc
00114$:
	djnz	b,00112$
	mov	_shift_right_PARM_2,a
00103$:
;	./src/main.c:60: led = ~patt;
	mov	a,_shift_right_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:61: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:62: return patt;
	mov	dpl,_shift_right_PARM_2
;	./src/main.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'light_up'
;------------------------------------------------------------
;patt                      Allocated with name '_light_up_PARM_2'
;idx                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:64: unsigned char light_up(unsigned int idx, unsigned char patt)
;	-----------------------------------------
;	 function light_up
;	-----------------------------------------
_light_up:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:66: switch (idx)
	cjne	r6,#0x09,00110$
	cjne	r7,#0x00,00110$
	sjmp	00103$
00110$:
;	./src/main.c:72: patt = (0x00 + 1) << idx;
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00113$
00111$:
	add	a,acc
00113$:
	djnz	b,00111$
	mov	_light_up_PARM_2,a
;	./src/main.c:74: }
00103$:
;	./src/main.c:76: led = ~patt;
	mov	a,_light_up_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:77: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:78: return patt;
	mov	dpl,_light_up_PARM_2
;	./src/main.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;preINPUT                  Allocated with name '_main_preINPUT_65536_16'
;patt                      Allocated to registers r7 
;cnt                       Allocated to registers r5 r6 
;i                         Allocated with name '_main_i_131072_17'
;------------------------------------------------------------
;	./src/main.c:81: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:85: unsigned char patt = 0x80; // led value
	mov	r7,#0x80
;	./src/main.c:86: unsigned int cnt = 0;
;	./src/main.c:89: for (int i = 0; i < 10; i++)
	clr	a
	mov	r5,a
	mov	r6,a
	mov	_main_i_131072_17,a
	mov	(_main_i_131072_17 + 1),a
00168$:
	clr	c
	mov	a,_main_i_131072_17
	subb	a,#0x0a
	mov	a,(_main_i_131072_17 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00165$
;	./src/main.c:91: preINPUT[i] = 1;
	mov	a,_main_i_131072_17
	add	a,_main_i_131072_17
	mov	r2,a
	mov	a,(_main_i_131072_17 + 1)
	rlc	a
	mov	r4,a
	mov	a,r2
	add	a,#_main_preINPUT_65536_16
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:89: for (int i = 0; i < 10; i++)
	inc	_main_i_131072_17
	clr	a
;	./src/main.c:94: while (1)
	cjne	a,_main_i_131072_17,00168$
	inc	(_main_i_131072_17 + 1)
	sjmp	00168$
00165$:
;	./src/main.c:96: scan_row(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_scan_row
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:99: if ((INPUT1 == 0) && (preINPUT[1] == 1))
	jb	_P0_7,00108$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x0002),00324$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x0002) + 1),00324$
	sjmp	00325$
00324$:
	sjmp	00108$
00325$:
;	./src/main.c:101: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:102: if (INPUT1 == 0)
	jb	_P0_7,00108$
;	./src/main.c:104: delay_ms(1500);
	mov	dptr,#0x05dc
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:105: if (INPUT1 != 0)
	jnb	_P0_7,00103$
;	./src/main.c:106: patt = shift_left(1, patt);
	mov	_shift_left_PARM_2,r7
	mov	dptr,#0x0001
	push	ar6
	push	ar5
	lcall	_shift_left
	mov	r7,dpl
	pop	ar5
	pop	ar6
	sjmp	00108$
00103$:
;	./src/main.c:108: patt = light_up(9, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0009
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00108$:
;	./src/main.c:111: preINPUT[1] = INPUT1;
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x0002) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x0002) + 1),r4
;	./src/main.c:114: if ((INPUT2 == 0) && (preINPUT[2] == 1))
	jb	_P0_6,00113$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x0004),00329$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x0004) + 1),00329$
	sjmp	00330$
00329$:
	sjmp	00113$
00330$:
;	./src/main.c:116: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:117: if (INPUT2 == 0)
	jb	_P0_6,00113$
;	./src/main.c:118: patt = light_up(0, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00113$:
;	./src/main.c:120: preINPUT[2] = INPUT2;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x0004) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x0004) + 1),r4
;	./src/main.c:123: if ((INPUT3 == 0) && (preINPUT[3] == 1))
	jb	_P0_5,00118$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x0006),00333$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x0006) + 1),00333$
	sjmp	00334$
00333$:
	sjmp	00118$
00334$:
;	./src/main.c:125: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:126: if (INPUT3 == 0)
	jb	_P0_5,00118$
;	./src/main.c:127: patt = light_up(1, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0001
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00118$:
;	./src/main.c:129: preINPUT[3] = INPUT3;
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x0006) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x0006) + 1),r4
;	./src/main.c:132: scan_row(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_scan_row
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:135: if ((INPUT1 == 0) && (preINPUT[4] == 1))
	jb	_P0_7,00123$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x0008),00337$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x0008) + 1),00337$
	sjmp	00338$
00337$:
	sjmp	00123$
00338$:
;	./src/main.c:137: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:138: if (INPUT1 == 0)
	jb	_P0_7,00123$
;	./src/main.c:139: patt = light_up(2, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0002
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00123$:
;	./src/main.c:141: preINPUT[4] = INPUT1;
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x0008) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x0008) + 1),r4
;	./src/main.c:144: if ((INPUT2 == 0) && (preINPUT[5] == 1))
	jb	_P0_6,00134$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x000a),00341$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x000a) + 1),00341$
	sjmp	00342$
00341$:
	sjmp	00134$
00342$:
;	./src/main.c:146: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:147: if (INPUT2 == 0)
	jb	_P0_6,00135$
;	./src/main.c:149: delay_ms(1500);
	mov	dptr,#0x05dc
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:150: if (INPUT1 != 0)
	jnb	_P0_7,00135$
;	./src/main.c:152: patt = shift_right(1, patt);
	mov	_shift_right_PARM_2,r7
	mov	dptr,#0x0001
	push	ar6
	push	ar5
	lcall	_shift_right
	mov	r7,dpl
	pop	ar5
	pop	ar6
;	./src/main.c:153: cnt++;
	inc	r5
	cjne	r5,#0x00,00135$
	inc	r6
	sjmp	00135$
00134$:
;	./src/main.c:158: else if ((INPUT2 == 0) && cnt)
	jb	_P0_6,00130$
	mov	a,r5
	orl	a,r6
	jz	00130$
;	./src/main.c:160: patt = shift_right(1, patt);
	mov	_shift_right_PARM_2,r7
	mov	dptr,#0x0001
	push	ar6
	push	ar5
	lcall	_shift_right
	mov	r7,dpl
	pop	ar5
	pop	ar6
;	./src/main.c:161: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00135$
00130$:
;	./src/main.c:165: cnt = 0;
	mov	r5,#0x00
	mov	r6,#0x00
00135$:
;	./src/main.c:167: preINPUT[5] = INPUT2;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x000a) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x000a) + 1),r4
;	./src/main.c:170: if ((INPUT3 == 0) && (preINPUT[6] == 1))
	jb	_P0_5,00140$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x000c),00349$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x000c) + 1),00349$
	sjmp	00350$
00349$:
	sjmp	00140$
00350$:
;	./src/main.c:172: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:173: if (INPUT3 == 0)
	jb	_P0_5,00140$
;	./src/main.c:174: patt = light_up(4, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0004
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00140$:
;	./src/main.c:176: preINPUT[6] = INPUT3;
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x000c) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x000c) + 1),r4
;	./src/main.c:178: scan_row(3);
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	lcall	_scan_row
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:181: if ((INPUT1 == 0) && (preINPUT[7] == 1))
	jb	_P0_7,00145$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x000e),00353$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x000e) + 1),00353$
	sjmp	00354$
00353$:
	sjmp	00145$
00354$:
;	./src/main.c:183: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:184: if (INPUT1 == 0)
	jb	_P0_7,00145$
;	./src/main.c:185: patt = light_up(5, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0005
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00145$:
;	./src/main.c:187: preINPUT[7] = INPUT1;
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x000e) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x000e) + 1),r4
;	./src/main.c:190: if ((INPUT2 == 0) && (preINPUT[8] == 1))
	jb	_P0_6,00150$
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x0010),00357$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x0010) + 1),00357$
	sjmp	00358$
00357$:
	sjmp	00150$
00358$:
;	./src/main.c:192: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:193: if (INPUT2 == 0)
	jb	_P0_6,00150$
;	./src/main.c:194: patt = light_up(6, patt);
	mov	_light_up_PARM_2,r7
	mov	dptr,#0x0006
	push	ar6
	push	ar5
	lcall	_light_up
	mov	r7,dpl
	pop	ar5
	pop	ar6
00150$:
;	./src/main.c:196: preINPUT[8] = INPUT2;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x0010) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x0010) + 1),r4
;	./src/main.c:199: if ((INPUT3 == 0) && (preINPUT[9] == 1) && (cnt == 0))
	jnb	_P0_5,00360$
	ljmp	00161$
00360$:
	mov	a,#0x01
	cjne	a,(_main_preINPUT_65536_16 + 0x0012),00361$
	dec	a
	cjne	a,((_main_preINPUT_65536_16 + 0x0012) + 1),00361$
	sjmp	00362$
00361$:
	ljmp	00161$
00362$:
	mov	a,r5
	orl	a,r6
	jnz	00161$
;	./src/main.c:201: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:202: if (INPUT3 == 0)
	jb	_P0_5,00161$
;	./src/main.c:204: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:205: if (INPUT3 != 0)
	jnb	_P0_5,00156$
;	./src/main.c:206: patt = shift_left(1, patt);
	mov	_shift_left_PARM_2,r7
	mov	dptr,#0x0001
	push	ar6
	push	ar5
	lcall	_shift_left
	mov	r7,dpl
	pop	ar5
	pop	ar6
	sjmp	00161$
00156$:
;	./src/main.c:209: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:210: if (INPUT3 != 0)
	jnb	_P0_5,00153$
;	./src/main.c:211: patt = shift_left(3, patt);
	mov	_shift_left_PARM_2,r7
	mov	dptr,#0x0003
	push	ar6
	push	ar5
	lcall	_shift_left
	mov	r7,dpl
	pop	ar5
	pop	ar6
	sjmp	00161$
00153$:
;	./src/main.c:213: patt = shift_left(2, patt);
	mov	_shift_left_PARM_2,r7
	mov	dptr,#0x0002
	push	ar6
	push	ar5
	lcall	_shift_left
	mov	r7,dpl
	pop	ar5
	pop	ar6
00161$:
;	./src/main.c:217: preINPUT[9] = INPUT3;
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	((_main_preINPUT_65536_16 + 0x0012) + 0),r3
	mov	((_main_preINPUT_65536_16 + 0x0012) + 1),r4
;	./src/main.c:219: }
	ljmp	00165$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
