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
	.globl _read_curINPUT
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
	.globl _patt
	.globl _count
	.globl _prestate
	.globl _state
	.globl _curINPUT
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
_curINPUT::
	.ds 18
_state::
	.ds 18
_prestate::
	.ds 18
_count::
	.ds 18
_patt::
	.ds 1
_shift_left_PARM_2:
	.ds 1
_shift_right_PARM_2:
	.ds 1
_light_up_PARM_2:
	.ds 1
_main_long_flag_65536_20:
	.ds 2
_main_sloc0_1_0:
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
;	./src/main.c:23: unsigned char patt = 0x80; // led value
	mov	_patt,#0x80
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
;	./src/main.c:26: void scan_row(unsigned int row)
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
;	./src/main.c:28: switch (row)
	cjne	r6,#0x00,00120$
	cjne	r7,#0x00,00120$
	sjmp	00101$
00120$:
	cjne	r6,#0x01,00121$
	cjne	r7,#0x00,00121$
	sjmp	00102$
00121$:
;	./src/main.c:30: case 0:
	cjne	r6,#0x02,00106$
	cjne	r7,#0x00,00106$
	sjmp	00103$
00101$:
;	./src/main.c:32: OUTPUT0 = 0; // row1 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:33: OUTPUT1 = 1; // row2 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:34: OUTPUT2 = 1; // row3 output 1
;	assignBit
	setb	_P0_2
;	./src/main.c:35: break;
;	./src/main.c:37: case 1:
	ret
00102$:
;	./src/main.c:38: OUTPUT0 = 1; // row1 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:39: OUTPUT1 = 0; // row2 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:40: OUTPUT2 = 1; // row3 output 1
;	assignBit
	setb	_P0_2
;	./src/main.c:41: break;
;	./src/main.c:43: case 2:
	ret
00103$:
;	./src/main.c:44: OUTPUT0 = 1; // row1 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:45: OUTPUT1 = 1; // row2 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:46: OUTPUT2 = 0; // row3 output 0
;	assignBit
	clr	_P0_2
;	./src/main.c:51: }
00106$:
;	./src/main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_curINPUT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:53: void read_curINPUT(void)
;	-----------------------------------------
;	 function read_curINPUT
;	-----------------------------------------
_read_curINPUT:
;	./src/main.c:55: for (int i = 0; i < 3; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	./src/main.c:57: scan_row(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_scan_row
	pop	ar6
	pop	ar7
;	./src/main.c:58: curINPUT[i * 3 + 0] = INPUT0;
	mov	ar5,r6
	mov	a,r5
	mov	b,#0x03
	mul	ab
	mov	r5,a
	add	a,acc
	add	a,#_curINPUT
	mov	r1,a
	mov	c,_P0_7
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	dec	r1
;	./src/main.c:59: curINPUT[i * 3 + 1] = INPUT1;
	mov	a,r5
	inc	a
	add	a,acc
	add	a,#_curINPUT
	mov	r1,a
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	dec	r1
;	./src/main.c:60: curINPUT[i * 3 + 2] = INPUT2;
	inc	r5
	inc	r5
	mov	a,r5
	add	a,r5
	add	a,#_curINPUT
	mov	r1,a
	mov	c,_P0_5
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
;	./src/main.c:55: for (int i = 0; i < 3; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	./src/main.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shift_left'
;------------------------------------------------------------
;patt                      Allocated with name '_shift_left_PARM_2'
;bit                       Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:63: unsigned char shift_left(unsigned int bit, unsigned char patt)
;	-----------------------------------------
;	 function shift_left
;	-----------------------------------------
_shift_left:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:65: for (int i = 0; i < bit; i++)
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
;	./src/main.c:67: patt = patt >> 1;
	mov	a,_shift_left_PARM_2
	clr	c
	rrc	a
;	./src/main.c:68: if (patt == 0x00)
	mov	_shift_left_PARM_2,a
	jnz	00106$
;	./src/main.c:69: patt = 0x80;
	mov	_shift_left_PARM_2,#0x80
00106$:
;	./src/main.c:65: for (int i = 0; i < bit; i++)
	inc	r4
	cjne	r4,#0x00,00105$
	inc	r5
	sjmp	00105$
00103$:
;	./src/main.c:72: led = ~patt;
	mov	a,_shift_left_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:73: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:74: return patt;
	mov	dpl,_shift_left_PARM_2
;	./src/main.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shift_right'
;------------------------------------------------------------
;patt                      Allocated with name '_shift_right_PARM_2'
;bit                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:76: unsigned char shift_right(unsigned int bit, unsigned char patt)
;	-----------------------------------------
;	 function shift_right
;	-----------------------------------------
_shift_right:
	mov	r6,dpl
;	./src/main.c:78: if (patt == 0x80)
	mov	a,#0x80
	cjne	a,_shift_right_PARM_2,00102$
;	./src/main.c:79: patt = 0x00 + 1;
	mov	_shift_right_PARM_2,#0x01
	sjmp	00103$
00102$:
;	./src/main.c:81: patt = patt << bit;
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
;	./src/main.c:83: led = ~patt;
	mov	a,_shift_right_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:84: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:85: return patt;
	mov	dpl,_shift_right_PARM_2
;	./src/main.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'light_up'
;------------------------------------------------------------
;patt                      Allocated with name '_light_up_PARM_2'
;idx                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:87: unsigned char light_up(unsigned int idx, unsigned char patt)
;	-----------------------------------------
;	 function light_up
;	-----------------------------------------
_light_up:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:89: switch (idx)
	cjne	r6,#0x09,00110$
	cjne	r7,#0x00,00110$
	sjmp	00103$
00110$:
;	./src/main.c:95: patt = (0x00 + 1) << idx;
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00113$
00111$:
	add	a,acc
00113$:
	djnz	b,00111$
	mov	_light_up_PARM_2,a
;	./src/main.c:97: }
00103$:
;	./src/main.c:99: led = ~patt;
	mov	a,_light_up_PARM_2
	cpl	a
	mov	_P1,a
;	./src/main.c:100: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:101: return patt;
	mov	dpl,_light_up_PARM_2
;	./src/main.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;long_flag                 Allocated with name '_main_long_flag_65536_20'
;i                         Allocated to registers r4 r5 
;i                         Allocated to registers r4 r5 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	./src/main.c:104: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:107: int long_flag = 0;
	clr	a
	mov	_main_long_flag_65536_20,a
	mov	(_main_long_flag_65536_20 + 1),a
;	./src/main.c:109: for (int i = 0; i < 9; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00151$:
	clr	c
	mov	a,r4
	subb	a,#0x09
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00148$
;	./src/main.c:111: curINPUT[i] = LEVEL_HIGH;
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_curINPUT
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:112: state[i] = BTN_RELEASED;
	mov	a,r2
	add	a,#_state
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:113: prestate[i] = BTN_RELEASED;
	mov	a,r2
	add	a,#_prestate
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:114: count[i] = 0;
	mov	a,r2
	add	a,#_count
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:109: for (int i = 0; i < 9; i++)
	inc	r4
;	./src/main.c:117: while (1)
	cjne	r4,#0x00,00151$
	inc	r5
	sjmp	00151$
00148$:
;	./src/main.c:119: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:120: read_curINPUT();
	lcall	_read_curINPUT
;	./src/main.c:123: for (int i = 0; i < 9; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00154$:
	clr	c
	mov	a,r4
	subb	a,#0x09
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00148$
;	./src/main.c:125: switch (state[i])
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_state
	mov	r1,a
	mov	_main_sloc0_1_0,@r1
	inc	r1
	mov	(_main_sloc0_1_0 + 1),@r1
	dec	r1
	clr	c
	mov	a,#0x03
	subb	a,_main_sloc0_1_0
	clr	a
	subb	a,(_main_sloc0_1_0 + 1)
	jnc	00242$
	ljmp	00121$
00242$:
	mov	a,_main_sloc0_1_0
	mov	b,#0x03
	mul	ab
	mov	dptr,#00243$
	jmp	@a+dptr
00243$:
	ljmp	00102$
	ljmp	00105$
	ljmp	00109$
	ljmp	00116$
;	./src/main.c:127: case BTN_RELEASED:
00102$:
;	./src/main.c:128: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r2
	add	a,#_curINPUT
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	a,r6
	orl	a,r7
	jz	00244$
	ljmp	00121$
00244$:
;	./src/main.c:129: state[i] = BTN_DEBOUNCED;
	mov	@r1,#0x01
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:130: break;
	ljmp	00121$
;	./src/main.c:131: case BTN_DEBOUNCED:
00105$:
;	./src/main.c:132: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r2
	add	a,#_curINPUT
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	./src/main.c:133: state[i] = BTN_PRESSED;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
	ljmp	00121$
00107$:
;	./src/main.c:135: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:136: break;
;	./src/main.c:137: case BTN_PRESSED:
	sjmp	00121$
00109$:
;	./src/main.c:138: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r2
	add	a,#_curINPUT
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	a,r6
	orl	a,r7
	jnz	00114$
;	./src/main.c:140: count[i]++;
	mov	a,r2
	add	a,#_count
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	inc	r6
	cjne	r6,#0x00,00247$
	inc	r7
00247$:
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	dec	r0
;	./src/main.c:141: if (count[i] > 50)
	clr	c
	mov	a,#0x32
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00111$
;	./src/main.c:143: state[i] = BTN_LONG_PRESSED;
	mov	@r1,#0x03
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:144: long_flag = 1;
	mov	_main_long_flag_65536_20,#0x01
	mov	(_main_long_flag_65536_20 + 1),#0x00
	sjmp	00121$
00111$:
;	./src/main.c:148: state[i] = BTN_PRESSED;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00121$
00114$:
;	./src/main.c:151: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:152: break;
;	./src/main.c:153: case BTN_LONG_PRESSED:
	sjmp	00121$
00116$:
;	./src/main.c:154: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r2
	add	a,#_curINPUT
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	a,r6
	orl	a,r7
	jnz	00118$
;	./src/main.c:155: state[i] = BTN_LONG_PRESSED;
	mov	@r1,#0x03
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00121$
00118$:
;	./src/main.c:158: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:159: count[i] = 0;
	mov	a,r2
	add	a,#_count
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:164: }
00121$:
;	./src/main.c:167: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED))
	mov	a,r4
	add	a,r4
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_state
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,r2
	orl	a,r3
	jz	00250$
	ljmp	00143$
00250$:
	mov	a,r6
	add	a,#_prestate
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	cjne	r6,#0x02,00251$
	cjne	r7,#0x00,00251$
	sjmp	00252$
00251$:
	ljmp	00143$
00252$:
;	./src/main.c:169: switch (i)
	mov	a,r5
	jnb	acc.7,00253$
	ljmp	00132$
00253$:
	clr	c
	mov	a,#0x08
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00254$
	ljmp	00132$
00254$:
	mov	a,r4
	add	a,#(00255$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(00256$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00255$:
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00126$
	.db	00127$
	.db	00128$
	.db	00129$
	.db	00130$
00256$:
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00127$>>8
	.db	00128$>>8
	.db	00129$>>8
	.db	00130$>>8
;	./src/main.c:171: case 0:
00122$:
;	./src/main.c:172: patt = shift_left(1, patt);
	mov	_shift_left_PARM_2,_patt
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	lcall	_shift_left
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:173: break;
	ljmp	00132$
;	./src/main.c:174: case 1:
00123$:
;	./src/main.c:175: patt = light_up(0, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0000
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:176: break;
	ljmp	00132$
;	./src/main.c:177: case 2:
00124$:
;	./src/main.c:178: patt = light_up(1, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:179: break;
	ljmp	00132$
;	./src/main.c:180: case 3:
00125$:
;	./src/main.c:181: patt = light_up(2, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0002
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:182: break;
	ljmp	00132$
;	./src/main.c:183: case 4:
00126$:
;	./src/main.c:184: patt = shift_right(1, patt);
	mov	_shift_right_PARM_2,_patt
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	lcall	_shift_right
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:185: break;
;	./src/main.c:186: case 5:
	sjmp	00132$
00127$:
;	./src/main.c:187: patt = light_up(4, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0004
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:188: break;
;	./src/main.c:189: case 6:
	sjmp	00132$
00128$:
;	./src/main.c:190: patt = light_up(5, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0005
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:191: break;
;	./src/main.c:192: case 7:
	sjmp	00132$
00129$:
;	./src/main.c:193: patt = light_up(6, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0006
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:194: break;
;	./src/main.c:195: case 8:
	sjmp	00132$
00130$:
;	./src/main.c:196: patt = shift_left(1, patt);
	mov	_shift_left_PARM_2,_patt
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	lcall	_shift_left
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:200: }
00132$:
;	./src/main.c:201: count[i] = 0;
	mov	a,r4
	add	a,r4
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_count
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	ljmp	00144$
00143$:
;	./src/main.c:203: else if (state[i] == BTN_LONG_PRESSED)
	mov	a,r4
	add	a,r4
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	a,r6
	add	a,#_state
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	cjne	r6,#0x03,00144$
	cjne	r7,#0x00,00144$
;	./src/main.c:205: switch (i)
	cjne	r4,#0x00,00259$
	cjne	r5,#0x00,00259$
	sjmp	00133$
00259$:
	cjne	r4,#0x04,00260$
	cjne	r5,#0x00,00260$
	sjmp	00134$
00260$:
;	./src/main.c:207: case 0:
	cjne	r4,#0x08,00144$
	cjne	r5,#0x00,00144$
	sjmp	00135$
00133$:
;	./src/main.c:208: patt = light_up(9, patt);
	mov	_light_up_PARM_2,_patt
	mov	dptr,#0x0009
	push	ar5
	push	ar4
	lcall	_light_up
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:209: break;
;	./src/main.c:210: case 4:
	sjmp	00144$
00134$:
;	./src/main.c:211: patt = shift_right(1, patt);
	mov	_shift_right_PARM_2,_patt
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	lcall	_shift_right
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:212: break;
;	./src/main.c:213: case 8:
	sjmp	00144$
00135$:
;	./src/main.c:214: if (long_flag)
	mov	a,_main_long_flag_65536_20
	orl	a,(_main_long_flag_65536_20 + 1)
	jz	00144$
;	./src/main.c:216: patt = shift_left(2, patt);
	mov	_shift_left_PARM_2,_patt
	mov	dptr,#0x0002
	push	ar5
	push	ar4
	lcall	_shift_left
	mov	_patt,dpl
	pop	ar4
	pop	ar5
;	./src/main.c:217: long_flag = 0;
	clr	a
	mov	_main_long_flag_65536_20,a
	mov	(_main_long_flag_65536_20 + 1),a
;	./src/main.c:222: }
00144$:
;	./src/main.c:225: prestate[i] = state[i];
	mov	a,r4
	add	a,r4
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	a,r6
	add	a,#_prestate
	mov	r1,a
	mov	a,r6
	add	a,#_state
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
;	./src/main.c:123: for (int i = 0; i < 9; i++)
	inc	r4
	cjne	r4,#0x00,00263$
	inc	r5
00263$:
;	./src/main.c:228: }
	ljmp	00154$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
