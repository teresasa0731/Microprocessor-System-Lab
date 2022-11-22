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
	.globl _shiftRight
	.globl _shiftLeft
	.globl _read_currINPUT
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
	.globl _patt
	.globl _states
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
	.ds 4
_patt::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;	./src/main.c:28: unsigned char patt = 0x80;
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
;Allocation info for local variables in function 'read_currINPUT'
;------------------------------------------------------------
;	./src/main.c:31: void read_currINPUT(void)
;	-----------------------------------------
;	 function read_currINPUT
;	-----------------------------------------
_read_currINPUT:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:33: states[0].currINPUT = PB1;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r0,#_states
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:34: states[1].currINPUT = PB2;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x0001)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:35: states[2].currINPUT = PB3;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r0,#(_states + 0x0002)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:36: states[3].currINPUT = PB4;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x0003)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftLeft'
;------------------------------------------------------------
;mode                      Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:39: void shiftLeft(int mode){
;	-----------------------------------------
;	 function shiftLeft
;	-----------------------------------------
_shiftLeft:
;	./src/main.c:40: patt = patt >> 1;
	mov	a,_patt
	clr	c
	rrc	a
;	./src/main.c:41: if (patt == 0x00)
	mov	_patt,a
	jnz	00102$
;	./src/main.c:42: patt = 0x80;
	mov	_patt,#0x80
00102$:
;	./src/main.c:43: led = ~patt;
	mov	a,_patt
	cpl	a
	mov	_P1,a
;	./src/main.c:46: return;
;	./src/main.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftRight'
;------------------------------------------------------------
;mode                      Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:49: void shiftRight(int mode){
;	-----------------------------------------
;	 function shiftRight
;	-----------------------------------------
_shiftRight:
;	./src/main.c:50: if (patt == 0x80)
	mov	a,#0x80
	cjne	a,_patt,00102$
;	./src/main.c:51: patt = 0x00 + 1;
	mov	_patt,#0x01
	sjmp	00103$
00102$:
;	./src/main.c:53: patt = patt << 1;
	mov	a,_patt
	mov	r7,a
	add	a,acc
	mov	_patt,a
00103$:
;	./src/main.c:54: led = ~patt;
	mov	a,_patt
	cpl	a
	mov	_P1,a
;	./src/main.c:57: return;
;	./src/main.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:60: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:62: for (unsigned int a = 0; a < 4; a++)
	mov	r6,#0x00
	mov	r7,#0x00
00139$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:64: states[a].currINPUT = LEVEL_HIGH;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	./src/main.c:65: states[a].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:66: states[a].prevState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xe7
	mov	@r0,a
;	./src/main.c:62: for (unsigned int a = 0; a < 4; a++)
	inc	r6
	cjne	r6,#0x00,00139$
	inc	r7
	sjmp	00139$
00101$:
;	./src/main.c:68: led = ~patt;
	mov	a,_patt
	cpl	a
	mov	_P1,a
;	./src/main.c:70: while(1) {
00136$:
;	./src/main.c:71: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:73: read_currINPUT();
	lcall	_read_currINPUT
;	./src/main.c:74: for (unsigned int i = 0; i < 4; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00142$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00136$
;	./src/main.c:77: switch (states[i].currState)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	rr	a
	anl	a,#0x03
	mov	r5,a
	jz	00102$
	cjne	r5,#0x01,00231$
	sjmp	00106$
00231$:
;	./src/main.c:79: case BTN_RELEASED:
	cjne	r5,#0x02,00115$
	sjmp	00110$
00102$:
;	./src/main.c:80: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00104$
;	./src/main.c:81: states[i].currState = BTN_DEBOUNCED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x02
	mov	@r0,a
	sjmp	00115$
00104$:
;	./src/main.c:83: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:84: break;
;	./src/main.c:85: case BTN_DEBOUNCED:
	sjmp	00115$
00106$:
;	./src/main.c:86: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00108$
;	./src/main.c:87: states[i].currState = BTN_PRESSED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x04
	mov	@r0,a
	sjmp	00115$
00108$:
;	./src/main.c:89: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:90: break;
;	./src/main.c:91: case BTN_PRESSED:
	sjmp	00115$
00110$:
;	./src/main.c:92: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00112$
;	./src/main.c:93: states[i].currState = BTN_PRESSED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x04
	mov	@r0,a
	sjmp	00115$
00112$:
;	./src/main.c:95: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:99: }
00115$:
;	./src/main.c:100: switch (i)
	clr	c
	mov	a,#0x03
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00236$
	ljmp	00133$
00236$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00237$
	jmp	@a+dptr
00237$:
	ljmp	00116$
	ljmp	00120$
	ljmp	00124$
	ljmp	00128$
;	./src/main.c:102: case 0:
00116$:
;	./src/main.c:103: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED))
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	anl	a,#0x06
	jz	00238$
	ljmp	00133$
00238$:
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	swap	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00239$
	sjmp	00240$
00239$:
	ljmp	00133$
00240$:
;	./src/main.c:104: shiftLeft(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_shiftLeft
	pop	ar6
	pop	ar7
;	./src/main.c:105: break;
	ljmp	00133$
;	./src/main.c:106: case 1:
00120$:
;	./src/main.c:107: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED))
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	anl	a,#0x06
	jz	00241$
	ljmp	00133$
00241$:
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	swap	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00242$
	sjmp	00243$
00242$:
	ljmp	00133$
00243$:
;	./src/main.c:108: shiftRight(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_shiftRight
	pop	ar6
	pop	ar7
;	./src/main.c:109: break;
;	./src/main.c:110: case 2:
	sjmp	00133$
00124$:
;	./src/main.c:111: if ((states[i].currState == BTN_PRESSED) && (states[i].prevState == BTN_PRESSED))
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	rr	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00133$
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	swap	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00133$
;	./src/main.c:112: shiftLeft(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_shiftLeft
	pop	ar6
	pop	ar7
;	./src/main.c:113: break;
;	./src/main.c:114: case 3:
	sjmp	00133$
00128$:
;	./src/main.c:115: if ((states[i].currState == BTN_PRESSED) && (states[i].prevState == BTN_PRESSED))
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	rr	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00133$
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	swap	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00133$
;	./src/main.c:116: shiftRight(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_shiftRight
	pop	ar6
	pop	ar7
;	./src/main.c:120: }
00133$:
;	./src/main.c:121: states[i].prevState = states[i].currState;
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	rr	a
	anl	a,#0x03
	mov	r5,a
	swap	a
	rr	a
	anl	a,#(0xf8&0x18)
	mov	b,a
	mov	a,@r1
	anl	a,#0xe7
	orl	a,b
	mov	@r1,a
;	./src/main.c:74: for (unsigned int i = 0; i < 4; i++)
	inc	r6
	cjne	r6,#0x00,00252$
	inc	r7
00252$:
;	./src/main.c:124: }
	ljmp	00142$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
