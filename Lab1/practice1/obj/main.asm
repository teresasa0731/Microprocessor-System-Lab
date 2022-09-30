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
	.globl _row3
	.globl _row2
	.globl _row1
	.globl _light_up
	.globl _shift_right
	.globl _shift_left
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
_main_patt_65536_17:
	.ds 1
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 2
_main_sloc3_1_0:
	.ds 2
_main_sloc4_1_0:
	.ds 2
_main_sloc5_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'shift_left'
;------------------------------------------------------------
;patt                      Allocated with name '_shift_left_PARM_2'
;bit                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:13: unsigned char shift_left(unsigned int bit, unsigned char patt)
;	-----------------------------------------
;	 function shift_left
;	-----------------------------------------
_shift_left:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
;	./src/main.c:15: patt = patt >> bit;
	mov	b,r6
	inc	b
	mov	a,_shift_left_PARM_2
	sjmp	00110$
00109$:
	clr	c
	rrc	a
00110$:
	djnz	b,00109$
;	./src/main.c:16: if (patt == 0x00)
	mov	_shift_left_PARM_2,a
	jnz	00102$
;	./src/main.c:17: patt = 0x80;
	mov	_shift_left_PARM_2,#0x80
00102$:
;	./src/main.c:19: led = ~patt;
	mov	a,_shift_left_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:20: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:21: return patt;
	mov	dpl,_shift_left_PARM_2
;	./src/main.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shift_right'
;------------------------------------------------------------
;patt                      Allocated with name '_shift_right_PARM_2'
;bit                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:23: unsigned char shift_right(unsigned int bit, unsigned char patt)
;	-----------------------------------------
;	 function shift_right
;	-----------------------------------------
_shift_right:
	mov	r6,dpl
;	./src/main.c:25: if (patt == 0x80)
	mov	a,#0x80
	cjne	a,_shift_right_PARM_2,00102$
;	./src/main.c:26: patt = 0x00 + 1;
	mov	_shift_right_PARM_2,#0x01
	sjmp	00103$
00102$:
;	./src/main.c:28: patt = patt << bit;
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
;	./src/main.c:30: led = ~patt;
	mov	a,_shift_right_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:31: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:32: return patt;
	mov	dpl,_shift_right_PARM_2
;	./src/main.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'light_up'
;------------------------------------------------------------
;patt                      Allocated with name '_light_up_PARM_2'
;idx                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:34: unsigned char light_up(unsigned int idx, unsigned char patt)
;	-----------------------------------------
;	 function light_up
;	-----------------------------------------
_light_up:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:36: switch (idx)
	cjne	r6,#0x09,00110$
	cjne	r7,#0x00,00110$
	sjmp	00103$
00110$:
;	./src/main.c:42: patt = (0x00 + 1) << idx;
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00113$
00111$:
	add	a,acc
00113$:
	djnz	b,00111$
	mov	_light_up_PARM_2,a
;	./src/main.c:44: }
00103$:
;	./src/main.c:46: led = ~patt;
	mov	a,_light_up_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:47: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:48: return patt;
	mov	dpl,_light_up_PARM_2
;	./src/main.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'row1'
;------------------------------------------------------------
;	./src/main.c:51: void row1(void)
;	-----------------------------------------
;	 function row1
;	-----------------------------------------
_row1:
;	./src/main.c:53: OUTPUT1 = 0; // row1 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:54: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:55: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_2
;	./src/main.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'row2'
;------------------------------------------------------------
;	./src/main.c:57: void row2(void)
;	-----------------------------------------
;	 function row2
;	-----------------------------------------
_row2:
;	./src/main.c:59: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:60: OUTPUT2 = 0; // row2 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:61: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_2
;	./src/main.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'row3'
;------------------------------------------------------------
;	./src/main.c:63: void row3(void)
;	-----------------------------------------
;	 function row3
;	-----------------------------------------
_row3:
;	./src/main.c:65: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:66: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:67: OUTPUT3 = 0; // row3 output 0
;	assignBit
	clr	_P0_2
;	./src/main.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;preINPUT1                 Allocated to registers r6 r7 
;preINPUT2                 Allocated to registers r4 r5 
;preINPUT3                 Allocated to registers r2 r3 
;preINPUT4                 Allocated with name '_main_sloc5_1_0'
;preINPUT5                 Allocated with name '_main_sloc0_1_0'
;preINPUT6                 Allocated with name '_main_sloc1_1_0'
;preINPUT7                 Allocated with name '_main_sloc2_1_0'
;preINPUT8                 Allocated with name '_main_sloc3_1_0'
;preINPUT9                 Allocated with name '_main_sloc4_1_0'
;preINPUT0                 Allocated to registers 
;prebut1                   Allocated to registers 
;prebut2                   Allocated to registers 
;prebut3                   Allocated to registers 
;prebut4                   Allocated to registers 
;patt                      Allocated with name '_main_patt_65536_17'
;cnt                       Allocated to registers r0 r1 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;sloc5                     Allocated with name '_main_sloc5_1_0'
;------------------------------------------------------------
;	./src/main.c:70: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:73: unsigned int preINPUT1 = 1, preINPUT2 = 1, preINPUT3 = 1, preINPUT4 = 1, preINPUT5 = 1, preINPUT6 = 1, preINPUT7 = 1, preINPUT8 = 1, preINPUT9 = 1, preINPUT0 = 1;
	mov	r6,#0x01
	mov	r7,#0x00
	mov	r4,#0x01
	mov	r5,#0x00
	mov	r2,#0x01
	mov	r3,#0x00
;	1-genFromRTrack replaced	mov	_main_sloc5_1_0,#0x01
	mov	_main_sloc5_1_0,r6
;	1-genFromRTrack replaced	mov	(_main_sloc5_1_0 + 1),#0x00
	mov	(_main_sloc5_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	_main_sloc0_1_0,#0x01
	mov	_main_sloc0_1_0,r6
;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	(_main_sloc0_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	_main_sloc1_1_0,#0x01
	mov	_main_sloc1_1_0,r6
;	1-genFromRTrack replaced	mov	(_main_sloc1_1_0 + 1),#0x00
	mov	(_main_sloc1_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	_main_sloc2_1_0,#0x01
	mov	_main_sloc2_1_0,r6
;	1-genFromRTrack replaced	mov	(_main_sloc2_1_0 + 1),#0x00
	mov	(_main_sloc2_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	_main_sloc3_1_0,#0x01
	mov	_main_sloc3_1_0,r6
;	1-genFromRTrack replaced	mov	(_main_sloc3_1_0 + 1),#0x00
	mov	(_main_sloc3_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	_main_sloc4_1_0,#0x01
	mov	_main_sloc4_1_0,r6
;	1-genFromRTrack replaced	mov	(_main_sloc4_1_0 + 1),#0x00
	mov	(_main_sloc4_1_0 + 1),r7
;	./src/main.c:75: unsigned char patt = 0x80; // led value
	mov	_main_patt_65536_17,#0x80
;	./src/main.c:76: unsigned int cnt = 0;
	mov	r0,#0x00
	mov	r1,#0x00
;	./src/main.c:78: while (1)
00162$:
;	./src/main.c:81: row1();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_row1
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:84: if ((INPUT1 == 0) && (preINPUT1 == 1))
	jnb	_P0_7,00302$
	ljmp	00107$
00302$:
	cjne	r6,#0x01,00303$
	cjne	r7,#0x00,00303$
	sjmp	00304$
00303$:
	ljmp	00107$
00304$:
;	./src/main.c:86: delay_ms(20);
	mov	dptr,#0x0014
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	./src/main.c:87: if (INPUT1 == 0)
	jb	_P0_7,00107$
;	./src/main.c:89: delay_ms(1500);
	mov	dptr,#0x05dc
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	./src/main.c:90: if (INPUT1 != 0)
	jnb	_P0_7,00102$
;	./src/main.c:91: patt = shift_left(1, patt);
	mov	_shift_left_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_shift_left
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	sjmp	00107$
00102$:
;	./src/main.c:93: patt = light_up(9, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0009
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00107$:
;	./src/main.c:96: preINPUT1 = INPUT1;
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
;	./src/main.c:99: if ((INPUT2 == 0) && (preINPUT2 == 1))
	jb	_P0_6,00112$
	cjne	r4,#0x01,00112$
	cjne	r5,#0x00,00112$
;	./src/main.c:101: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:102: if (INPUT2 == 0)
	jb	_P0_6,00112$
;	./src/main.c:103: patt = light_up(0, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
00112$:
;	./src/main.c:105: preINPUT2 = INPUT2;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
;	./src/main.c:108: if ((INPUT3 == 0) && (preINPUT3 == 1))
	jb	_P0_5,00117$
	cjne	r2,#0x01,00117$
	cjne	r3,#0x00,00117$
;	./src/main.c:110: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:111: if (INPUT3 == 0)
	jb	_P0_5,00117$
;	./src/main.c:112: patt = light_up(1, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00117$:
;	./src/main.c:114: preINPUT3 = INPUT3;
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
;	./src/main.c:117: row2();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_row2
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:120: if ((INPUT1 == 0) && (preINPUT4 == 1))
	jb	_P0_7,00122$
	mov	a,#0x01
	cjne	a,_main_sloc5_1_0,00316$
	dec	a
	cjne	a,(_main_sloc5_1_0 + 1),00316$
	sjmp	00317$
00316$:
	sjmp	00122$
00317$:
;	./src/main.c:122: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:123: if (INPUT1 == 0)
	jb	_P0_7,00122$
;	./src/main.c:124: patt = light_up(2, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00122$:
;	./src/main.c:126: preINPUT4 = INPUT1;
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	_main_sloc5_1_0,a
	mov	(_main_sloc5_1_0 + 1),#0x00
;	./src/main.c:129: if ((INPUT2 == 0) && (preINPUT5 == 1))
	jnb	_P0_6,00319$
	ljmp	00129$
00319$:
	mov	a,#0x01
	cjne	a,_main_sloc0_1_0,00320$
	dec	a
	cjne	a,(_main_sloc0_1_0 + 1),00320$
	sjmp	00321$
00320$:
	ljmp	00129$
00321$:
;	./src/main.c:131: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:132: if (INPUT2 == 0)
	jb	_P0_6,00129$
;	./src/main.c:134: delay_ms(1500);
	mov	dptr,#0x05dc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:135: if (INPUT1 != 0)
	jnb	_P0_7,00129$
;	./src/main.c:137: patt = shift_right(1, patt);
	mov	_shift_right_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_shift_right
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:138: cnt++;
	inc	r0
	cjne	r0,#0x00,00324$
	inc	r1
00324$:
00129$:
;	./src/main.c:143: if ((INPUT2 == 0) && cnt)
	jb	_P0_6,00132$
	mov	a,r0
	orl	a,r1
	jz	00132$
;	./src/main.c:145: patt = shift_right(1, patt);
	mov	_shift_right_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_shift_right
	mov	_main_patt_65536_17,dpl
;	./src/main.c:146: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00133$
00132$:
;	./src/main.c:150: cnt = 0;
	mov	r0,#0x00
	mov	r1,#0x00
00133$:
;	./src/main.c:152: preINPUT5 = INPUT2;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	_main_sloc0_1_0,a
	mov	(_main_sloc0_1_0 + 1),#0x00
;	./src/main.c:155: if ((INPUT3 == 0) && (preINPUT6 == 1))
	jb	_P0_5,00138$
	mov	a,#0x01
	cjne	a,_main_sloc1_1_0,00328$
	dec	a
	cjne	a,(_main_sloc1_1_0 + 1),00328$
	sjmp	00329$
00328$:
	sjmp	00138$
00329$:
;	./src/main.c:157: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:158: if (INPUT3 == 0)
	jb	_P0_5,00138$
;	./src/main.c:159: patt = light_up(4, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0004
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00138$:
;	./src/main.c:161: preINPUT6 = INPUT3;
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	_main_sloc1_1_0,a
	mov	(_main_sloc1_1_0 + 1),#0x00
;	./src/main.c:164: row3();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_row3
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:167: if ((INPUT1 == 0) && (preINPUT7 == 1))
	jb	_P0_7,00143$
	mov	a,#0x01
	cjne	a,_main_sloc2_1_0,00332$
	dec	a
	cjne	a,(_main_sloc2_1_0 + 1),00332$
	sjmp	00333$
00332$:
	sjmp	00143$
00333$:
;	./src/main.c:169: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:170: if (INPUT1 == 0)
	jb	_P0_7,00143$
;	./src/main.c:171: patt = light_up(5, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00143$:
;	./src/main.c:173: preINPUT7 = INPUT1;
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	_main_sloc2_1_0,a
	mov	(_main_sloc2_1_0 + 1),#0x00
;	./src/main.c:176: if ((INPUT2 == 0) && (preINPUT8 == 1))
	jb	_P0_6,00148$
	mov	a,#0x01
	cjne	a,_main_sloc3_1_0,00336$
	dec	a
	cjne	a,(_main_sloc3_1_0 + 1),00336$
	sjmp	00337$
00336$:
	sjmp	00148$
00337$:
;	./src/main.c:178: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:179: if (INPUT2 == 0)
	jb	_P0_6,00148$
;	./src/main.c:180: patt = light_up(6, patt);
	mov	_light_up_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0006
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_light_up
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00148$:
;	./src/main.c:182: preINPUT8 = INPUT2;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	_main_sloc3_1_0,a
	mov	(_main_sloc3_1_0 + 1),#0x00
;	./src/main.c:185: if ((INPUT3 == 0) && (preINPUT9 == 1))
	jnb	_P0_5,00339$
	ljmp	00159$
00339$:
	mov	a,#0x01
	cjne	a,_main_sloc4_1_0,00340$
	dec	a
	cjne	a,(_main_sloc4_1_0 + 1),00340$
	sjmp	00341$
00340$:
	ljmp	00159$
00341$:
;	./src/main.c:187: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:188: if (INPUT3 == 0)
	jnb	_P0_5,00342$
	ljmp	00159$
00342$:
;	./src/main.c:190: delay_ms(1500);
	mov	dptr,#0x05dc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:191: if (INPUT1 != 0)
	jb	_P0_7,00343$
	ljmp	00154$
00343$:
;	./src/main.c:193: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:194: if (INPUT1 == 0)
	jb	_P0_7,00151$
;	./src/main.c:195: patt = shift_left(3, patt);
	mov	_shift_left_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_shift_left
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00159$
00151$:
;	./src/main.c:197: patt = shift_left(1, patt);
	mov	_shift_left_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_shift_left
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00159$
00154$:
;	./src/main.c:200: patt = shift_right(2, patt);
	mov	_shift_right_PARM_2,_main_patt_65536_17
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_shift_right
	mov	_main_patt_65536_17,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00159$:
;	./src/main.c:203: preINPUT9 = INPUT3;
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	_main_sloc4_1_0,a
	mov	(_main_sloc4_1_0 + 1),#0x00
;	./src/main.c:205: }
	ljmp	00162$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
