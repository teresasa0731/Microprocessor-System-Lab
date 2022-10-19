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
	.globl _T0_isr
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
	.globl _hall_last_state
	.globl _hall_cnt
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
_hall_cnt::
	.ds 1
_hall_last_state::
	.ds 1
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
	reti
	.ds	7
	ljmp	_T0_isr
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
;	./src/main.c:8: char hall_cnt = 0x00;								// Count the # of Hall sensor activations
	mov	_hall_cnt,#0x00
;	./src/main.c:9: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
	mov	_hall_last_state,#0x00
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
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:11: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	ar7
	push	psw
	mov	psw,#0x00
;	./src/main.c:14: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:15: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:17: if((Hall_In == 0) && (hall_last_state == 1))	// Falling edge of hall sensor signal (activated)
	jb	_P2_4,00102$
	mov	a,#0x01
	cjne	a,_hall_last_state,00102$
;	./src/main.c:19: hall_cnt = hall_cnt + 1;					// Count 1 activation
	mov	a,_hall_cnt
	mov	r7,a
	inc	a
	mov	_hall_cnt,a
00102$:
;	./src/main.c:22: hall_last_state = Hall_In;						// Update last Hall sensor state
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	_hall_last_state,a
;	./src/main.c:23: }
	pop	psw
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;pre_btn                   Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:25: int main(void) {		
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:27: unsigned int pre_btn=0; 
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/main.c:30: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:31: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:32: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:33: ET0 = 1;										// Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:34: EA = 1;											// Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:35: TR0 = 1;										// Start Timer 0
;	assignBit
	setb	_TR0
;	./src/main.c:37: Hall_In = 1;									// Initialize Hall sensor signal (deactivated)
;	assignBit
	setb	_P2_4
;	./src/main.c:39: while(1) 
00107$:
;	./src/main.c:41: if((BTN == 0) && (pre_btn == 1))			// Debounce
	jb	_P2_1,00104$
	cjne	r6,#0x01,00104$
	cjne	r7,#0x00,00104$
;	./src/main.c:43: delay_ms(10);							// Wait until button signal stable
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:44: if(BTN == 0)
	jb	_P2_1,00104$
;	./src/main.c:46: hall_cnt = 0;						// Reset counter
	mov	_hall_cnt,#0x00
00104$:
;	./src/main.c:49: LED = ~hall_cnt;							// Display counted number on LED in binary format
	mov	a,_hall_cnt
	cpl	a
	mov	_P1,a
;	./src/main.c:50: pre_btn = BTN;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
;	./src/main.c:51: delay_ms(1);								// Delay 1 ms
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:53: }
	sjmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
