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
	.globl _patt
	.globl _states
	.globl _read_curINPUT
	.globl _shiftLeft
	.globl _shiftRight
	.globl _inversedLight
	.globl _delay_ms
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
_states::
	.ds 6
_patt::
	.ds 1
_main_double_flag_65537_16:
	.ds 2
_main_i_196609_20:
	.ds 2
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'read_curINPUT'
;------------------------------------------------------------
;	./src/main.c:39: void read_curINPUT(void)
;	-----------------------------------------
;	 function read_curINPUT
;	-----------------------------------------
_read_curINPUT:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:41: states[0].currINPUT = PB1;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r0,#_states
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:42: states[1].currINPUT = PB2;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x0003)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftLeft'
;------------------------------------------------------------
;buf                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:45: void shiftLeft(void){
;	-----------------------------------------
;	 function shiftLeft
;	-----------------------------------------
_shiftLeft:
;	./src/main.c:46: unsigned char buf = patt & 0x01;
	mov	a,_patt
	anl	a,#0x01
	mov	r7,a
;	./src/main.c:48: patt = (patt >> 1) | buf << 7;
	mov	a,_patt
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r7
	rr	a
	anl	a,#0x80
	orl	a,r6
	mov	_patt,a
;	./src/main.c:49: return;
;	./src/main.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftRight'
;------------------------------------------------------------
;buf                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:52: void shiftRight(void){
;	-----------------------------------------
;	 function shiftRight
;	-----------------------------------------
_shiftRight:
;	./src/main.c:53: unsigned char buf = patt & 0x80;
	mov	a,_patt
	anl	a,#0x80
	mov	r7,a
;	./src/main.c:54: patt = (patt << 1) | buf >> 7;
	mov	a,_patt
	add	a,_patt
	mov	r6,a
	mov	a,r7
	rl	a
	anl	a,#0x01
	orl	a,r6
	mov	_patt,a
;	./src/main.c:55: return;
;	./src/main.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inversedLight'
;------------------------------------------------------------
;mode                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:58: void inversedLight(unsigned int mode){
;	-----------------------------------------
;	 function inversedLight
;	-----------------------------------------
_inversedLight:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:59: if(mode == 0)
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	./src/main.c:60: patt = ~patt;
	mov	a,_patt
	cpl	a
	mov	_patt,a
	ret
00102$:
;	./src/main.c:62: patt = patt ^0x80;
	xrl	_patt,#0x80
;	./src/main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;long_flag                 Allocated to registers 
;double_cnt                Allocated to registers r6 r7 
;double_flag               Allocated with name '_main_double_flag_65537_16'
;i                         Allocated to registers r2 r3 
;i                         Allocated with name '_main_i_196609_20'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;------------------------------------------------------------
;	./src/main.c:66: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:69: led = SW;
	mov	_P1,_P0
;	./src/main.c:70: patt = led;
	mov	_patt,_P1
;	./src/main.c:71: int long_flag = 0, double_cnt = 0, double_flag = 0;
;	./src/main.c:74: for (int i = 0; i < 2; i++)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	_main_double_flag_65537_16,a
	mov	(_main_double_flag_65537_16 + 1),a
	mov	r2,a
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
00155$:
	clr	c
	mov	a,r2
	subb	a,#0x02
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00152$
;	./src/main.c:76: states[i].currINPUT = LEVEL_HIGH;
	mov	a,r4
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	./src/main.c:77: states[i].currState = BTN_RELEASED;
	mov	a,r4
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	mov	@r0,a
;	./src/main.c:78: states[i].prevState = BTN_RELEASED;
	mov	a,r4
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0x8f
	mov	@r0,a
;	./src/main.c:79: states[i].count = 0;
	mov	a,r4
	add	a,#_states
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:74: for (int i = 0; i < 2; i++)
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r2
;	./src/main.c:82: while (1)
	cjne	r2,#0x00,00155$
	inc	r3
	sjmp	00155$
00152$:
;	./src/main.c:84: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	lcall	_delay_ms
;	./src/main.c:85: read_curINPUT();
	lcall	_read_curINPUT
	pop	ar6
	pop	ar7
;	./src/main.c:86: for (unsigned int i = 0; i < 2; i++)
	mov	ar4,r6
	mov	ar5,r7
	clr	a
	mov	_main_i_196609_20,a
	mov	(_main_i_196609_20 + 1),a
	mov	_main_sloc0_1_0,a
	mov	(_main_sloc0_1_0 + 1),a
00158$:
	clr	c
	mov	a,_main_i_196609_20
	subb	a,#0x02
	mov	a,(_main_i_196609_20 + 1)
	subb	a,#0x00
	jc	00254$
	ljmp	00185$
00254$:
;	./src/main.c:89: switch (states[i].currState)
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	rr	a
	anl	a,#0x07
	mov  _main_sloc1_1_0,a
	add	a,#0xff - 0x03
	jnc	00255$
	ljmp	00159$
00255$:
	mov	a,_main_sloc1_1_0
	mov	b,#0x03
	mul	ab
	mov	dptr,#00256$
	jmp	@a+dptr
00256$:
	ljmp	00102$
	ljmp	00106$
	ljmp	00110$
	ljmp	00125$
;	./src/main.c:91: case BTN_RELEASED:
00102$:
;	./src/main.c:92: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00104$
;	./src/main.c:93: states[i].currState = BTN_DEBOUNCED;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x02
	mov	@r0,a
	ljmp	00159$
00104$:
;	./src/main.c:95: double_cnt++;
	inc	r4
	cjne	r4,#0x00,00258$
	inc	r5
00258$:
;	./src/main.c:97: break;
	ljmp	00159$
;	./src/main.c:98: case BTN_DEBOUNCED:
00106$:
;	./src/main.c:99: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00108$
;	./src/main.c:100: states[i].currState = BTN_PRESSED;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x04
	mov	@r0,a
	ljmp	00159$
00108$:
;	./src/main.c:102: states[i].currState = BTN_RELEASED;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	mov	@r0,a
;	./src/main.c:103: break;
	ljmp	00159$
;	./src/main.c:104: case BTN_PRESSED:
00110$:
;	./src/main.c:105: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00123$
;	./src/main.c:107: states[i].count++;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	_main_sloc1_1_0,a
	inc	a
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	inc	r2
	cjne	r2,#0x00,00261$
	inc	r3
00261$:
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	dec	r1
;	./src/main.c:108: if(i == 0){
	mov	a,_main_i_196609_20
	orl	a,(_main_i_196609_20 + 1)
	jnz	00120$
;	./src/main.c:109: if (states[i].count > 50)
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	clr	c
	mov	a,#0x32
	subb	a,r2
	clr	a
	subb	a,r3
	jnc	00112$
;	./src/main.c:111: states[i].currState = BTN_LONG_PRESSED;
	mov	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x06
	mov	@r0,a
;	./src/main.c:112: long_flag = 1;
	sjmp	00159$
00112$:
;	./src/main.c:115: states[i].currState = BTN_PRESSED;
	mov	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x04
	mov	@r0,a
	sjmp	00159$
00120$:
;	./src/main.c:116: }else if (i == 1)
	mov	a,#0x01
	cjne	a,_main_i_196609_20,00264$
	dec	a
	cjne	a,(_main_i_196609_20 + 1),00264$
	sjmp	00265$
00264$:
	sjmp	00159$
00265$:
;	./src/main.c:118: if (states[i].count > 100)
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	clr	c
	mov	a,#0x64
	subb	a,r2
	clr	a
	subb	a,r3
	jnc	00115$
;	./src/main.c:120: states[i].currState = BTN_LONG_PRESSED;
	mov	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x06
	mov	@r0,a
;	./src/main.c:121: long_flag = 1;
	sjmp	00159$
00115$:
;	./src/main.c:124: states[i].currState = BTN_PRESSED;
	mov	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x04
	mov	@r0,a
	sjmp	00159$
00123$:
;	./src/main.c:128: states[i].currState = BTN_RELEASED;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	mov	@r0,a
;	./src/main.c:129: break;
;	./src/main.c:130: case BTN_LONG_PRESSED:
	sjmp	00159$
00125$:
;	./src/main.c:131: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00127$
;	./src/main.c:132: states[i].currState = BTN_LONG_PRESSED;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	orl	a,#0x06
	mov	@r0,a
	sjmp	00159$
00127$:
;	./src/main.c:135: states[i].currState = BTN_RELEASED;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf1
	mov	@r0,a
;	./src/main.c:136: states[i].count = 0;
	mov	a,_main_sloc0_1_0
	add	a,#_states
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:141: }
00159$:
;	./src/main.c:86: for (unsigned int i = 0; i < 2; i++)
	mov	a,#0x03
	add	a,_main_sloc0_1_0
	mov	_main_sloc0_1_0,a
	clr	a
	addc	a,(_main_sloc0_1_0 + 1)
	mov	(_main_sloc0_1_0 + 1),a
	inc	_main_i_196609_20
	clr	a
	cjne	a,_main_i_196609_20,00268$
	inc	(_main_i_196609_20 + 1)
00268$:
	ljmp	00158$
00185$:
	mov	ar6,r4
	mov	ar7,r5
;	./src/main.c:146: if (((states[0].currState == BTN_RELEASED) && (states[0].prevState == BTN_PRESSED)) || double_flag && (double_cnt > 100))
	mov	r0,#_states
	mov	a,@r0
	anl	a,#0x0e
	jnz	00150$
	mov	r0,#_states
	mov	a,@r0
	swap	a
	anl	a,#0x07
	mov	r5,a
	cjne	r5,#0x02,00270$
	sjmp	00145$
00270$:
00150$:
	mov	a,_main_double_flag_65537_16
	orl	a,(_main_double_flag_65537_16 + 1)
	jz	00146$
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00146$
00145$:
;	./src/main.c:148: if (double_flag)
	mov	a,_main_double_flag_65537_16
	orl	a,(_main_double_flag_65537_16 + 1)
	jz	00136$
;	./src/main.c:150: if (double_cnt < 100)
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00133$
;	./src/main.c:151: shiftLeft();
	push	ar7
	push	ar6
	lcall	_shiftLeft
	pop	ar6
	pop	ar7
	sjmp	00134$
00133$:
;	./src/main.c:153: shiftRight();
	push	ar7
	push	ar6
	lcall	_shiftRight
	pop	ar6
	pop	ar7
00134$:
;	./src/main.c:156: double_flag = 0;
	clr	a
	mov	_main_double_flag_65537_16,a
	mov	(_main_double_flag_65537_16 + 1),a
	sjmp	00137$
00136$:
;	./src/main.c:159: double_flag = 1;
	mov	_main_double_flag_65537_16,#0x01
	mov	(_main_double_flag_65537_16 + 1),#0x00
;	./src/main.c:160: double_cnt = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00137$:
;	./src/main.c:162: states[0].count = 0;
	clr	a
	mov	((_states + 0x0001) + 0),a
	mov	((_states + 0x0001) + 1),a
	sjmp	00147$
00146$:
;	./src/main.c:165: else if((states[0].currState == BTN_RELEASED) && (states[0].prevState == BTN_LONG_PRESSED)){
	mov	r0,#_states
	mov	a,@r0
	anl	a,#0x0e
	jnz	00142$
	mov	r0,#_states
	mov	a,@r0
	swap	a
	anl	a,#0x07
	mov	r5,a
	cjne	r5,#0x03,00142$
;	./src/main.c:166: inversedLight(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_inversedLight
	pop	ar6
	pop	ar7
;	./src/main.c:167: double_flag = 0;
	clr	a
	mov	_main_double_flag_65537_16,a
	mov	(_main_double_flag_65537_16 + 1),a
	sjmp	00147$
00142$:
;	./src/main.c:169: else if((states[1].currState == BTN_RELEASED) && (states[1].prevState == BTN_LONG_PRESSED)){
	mov	r0,#(_states + 0x0003)
	mov	a,@r0
	anl	a,#0x0e
	jnz	00147$
	mov	r0,#(_states + 0x0003)
	mov	a,@r0
	swap	a
	anl	a,#0x07
	mov	r5,a
	cjne	r5,#0x03,00147$
;	./src/main.c:170: inversedLight(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_inversedLight
	pop	ar6
	pop	ar7
;	./src/main.c:171: double_flag = 0;
	clr	a
	mov	_main_double_flag_65537_16,a
	mov	(_main_double_flag_65537_16 + 1),a
00147$:
;	./src/main.c:173: states[0].prevState = states[0].currState;
	mov	r0,#_states
	mov	a,@r0
	rr	a
	anl	a,#0x07
	mov	r0,#_states
	swap	a
	anl	a,#(0xf0&0x70)
	mov	b,a
	mov	a,@r0
	anl	a,#0x8f
	orl	a,b
	mov	@r0,a
;	./src/main.c:174: states[1].prevState = states[1].currState;
	mov	r0,#(_states + 0x0003)
	mov	a,@r0
	rr	a
	anl	a,#0x07
	mov	r5,a
	mov	r0,#(_states + 0x0003)
	swap	a
	anl	a,#(0xf0&0x70)
	mov	b,a
	mov	a,@r0
	anl	a,#0x8f
	orl	a,b
	mov	@r0,a
;	./src/main.c:175: led = patt;
	mov	_P1,_patt
;	./src/main.c:177: }
	ljmp	00152$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;input_ms                  Allocated to registers r6 r7 
;cnt1                      Allocated to registers r4 r5 
;cnt2                      Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:179: void delay_ms(unsigned int input_ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:184: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	./src/main.c:186: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
	mov	r3,#0x5a
00105$:
	djnz	r3,00105$
;	./src/main.c:184: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	./src/main.c:188: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
