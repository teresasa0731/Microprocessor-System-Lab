;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_isr
	.globl _main
	.globl _Initial
	.globl _Write7219
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
	.globl _a
	.globl _received_flag
	.globl _received_data
	.globl _send_flag
	.globl _send_data
	.globl _ANS
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
_ANS::
	.ds 7
_send_data::
	.ds 1
_send_flag::
	.ds 1
_received_data::
	.ds 1
_received_flag::
	.ds 1
_a::
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_isr
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
;	./src/main.c:5: unsigned char ANS[] = {3,2,1,2,1,2,1};
	mov	_ANS,#0x03
	mov	(_ANS + 0x0001),#0x02
	mov	(_ANS + 0x0002),#0x01
	mov	(_ANS + 0x0003),#0x02
	mov	(_ANS + 0x0004),#0x01
	mov	(_ANS + 0x0005),#0x02
	mov	(_ANS + 0x0006),#0x01
;	./src/main.c:7: unsigned char send_flag = 0;
	mov	_send_flag,#0x00
;	./src/main.c:9: unsigned char received_flag = 0;
	mov	_received_flag,#0x00
;	./src/main.c:10: unsigned int a = 1;
	mov	_a,#0x01
	mov	(_a + 1),#0x00
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cnt1                      Allocated to registers r7 
;cnt2                      Allocated to registers r6 
;cnt3                      Allocated to registers r5 
;cnt4                      Allocated to registers r4 
;------------------------------------------------------------
;	./src/main.c:17: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:19: unsigned char cnt1 = 0;
	mov	r7,#0x00
;	./src/main.c:20: unsigned char cnt2 = 0;
	mov	r6,#0x00
;	./src/main.c:21: unsigned char cnt3 = 0;
	mov	r5,#0x00
;	./src/main.c:22: unsigned char cnt4 = 0;
	mov	r4,#0x00
;	./src/main.c:24: Initial();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Initial
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:26: TMOD = 0x20;			// set timer1 to mode2 
	mov	_TMOD,#0x20
;	./src/main.c:27: SCON = 0x50;       		// set serial mode1
	mov	_SCON,#0x50
;	./src/main.c:28: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
	mov	_TH1,#0xfa
;	./src/main.c:29: TR1 = 1;				// enable timer = 1
;	assignBit
	setb	_TR1
;	./src/main.c:30: IE = 0x90;				// enable serial port interrupt
	mov	_IE,#0x90
;	./src/main.c:32: while(1)
00139$:
;	./src/main.c:36: if (but1 == 0) {
	jb	_P3_2,00106$
;	./src/main.c:37: if (cnt1 < 3) {
	cjne	r7,#0x03,00212$
00212$:
	jnc	00107$
;	./src/main.c:38: cnt1++;
	inc	r7
;	./src/main.c:39: if (cnt1 == 3) {
	cjne	r7,#0x03,00107$
;	./src/main.c:40: send_data = 1;
	mov	_send_data,#0x01
;	./src/main.c:41: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00107$
00106$:
;	./src/main.c:45: else { cnt1 = 0; }
	mov	r7,#0x00
00107$:
;	./src/main.c:47: if (but2 == 0) {
	jb	_P3_3,00113$
;	./src/main.c:48: if (cnt2 < 3) {
	cjne	r6,#0x03,00217$
00217$:
	jnc	00114$
;	./src/main.c:49: cnt2++;
	inc	r6
;	./src/main.c:50: if (cnt2 == 3) {
	cjne	r6,#0x03,00114$
;	./src/main.c:51: send_data = 2;
	mov	_send_data,#0x02
;	./src/main.c:52: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00114$
00113$:
;	./src/main.c:56: else { cnt2 = 0; }
	mov	r6,#0x00
00114$:
;	./src/main.c:58: if (but3 == 0) {
	jb	_P2_0,00120$
;	./src/main.c:59: if (cnt3 < 3) {
	cjne	r5,#0x03,00222$
00222$:
	jnc	00121$
;	./src/main.c:60: cnt3++;
	inc	r5
;	./src/main.c:61: if (cnt3 == 3) {
	cjne	r5,#0x03,00121$
;	./src/main.c:62: send_data = 3;
	mov	_send_data,#0x03
;	./src/main.c:63: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00121$
00120$:
;	./src/main.c:67: else { cnt3 = 0; }
	mov	r5,#0x00
00121$:
;	./src/main.c:69: if (but4 == 0) {
	jb	_P2_1,00127$
;	./src/main.c:70: if (cnt4 < 3) {
	cjne	r4,#0x03,00227$
00227$:
	jnc	00128$
;	./src/main.c:71: cnt4++;
	inc	r4
;	./src/main.c:72: if (cnt4 == 3) {
	cjne	r4,#0x03,00128$
;	./src/main.c:73: send_data = 4;
	mov	_send_data,#0x04
;	./src/main.c:74: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00128$
00127$:
;	./src/main.c:78: else { cnt4 = 0; }
	mov	r4,#0x00
00128$:
;	./src/main.c:81: if(send_flag == 1)
	mov	a,#0x01
	cjne	a,_send_flag,00130$
;	./src/main.c:83: SBUF = send_data;	
	mov	_SBUF,_send_data
;	./src/main.c:84: send_flag = 0;
	mov	_send_flag,#0x00
00130$:
;	./src/main.c:88: if(received_flag==1){
	mov	a,#0x01
	cjne	a,_received_flag,00139$
;	./src/main.c:89: if(received_data == ANS[a-1]){
	mov	a,_a
	mov	r3,a
	dec	a
	add	a,#_ANS
	mov	r1,a
	mov	a,@r1
	mov	r2,a
	cjne	a,_received_data,00134$
;	./src/main.c:90: Write7219(8-a, received_data);
	mov	a,#0x08
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	_Write7219_PARM_2,_received_data
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Write7219
;	./src/main.c:91: Write7219(8, 1);
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x08
	lcall	_Write7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:92: a+=1;
	inc	_a
	clr	a
	cjne	a,_a,00135$
	inc	(_a + 1)
	sjmp	00135$
00134$:
;	./src/main.c:93: }else if (received_flag != 1)
	mov	a,#0x01
	cjne	a,_received_flag,00238$
	sjmp	00135$
00238$:
;	./src/main.c:94: Write7219(8, 0);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Write7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00135$:
;	./src/main.c:96: received_flag = 0;
	mov	_received_flag,#0x00
;	./src/main.c:99: }
	ljmp	00139$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_isr'
;------------------------------------------------------------
;	./src/main.c:102: void uart_isr(void) __interrupt (4) 
;	-----------------------------------------
;	 function uart_isr
;	-----------------------------------------
_uart_isr:
;	./src/main.c:104: if (TI == 1)
;	./src/main.c:105: TI = 0;
;	assignBit
	jbc	_TI,00115$
	sjmp	00102$
00115$:
00102$:
;	./src/main.c:106: if( RI == 1) {
;	./src/main.c:107: RI = 0;                  // refresh RI
;	assignBit
	jbc	_RI,00116$
	sjmp	00105$
00116$:
;	./src/main.c:108: received_data = SBUF;    // receive data from SBUF
	mov	_received_data,_SBUF
;	./src/main.c:109: received_flag = 1;       // receiving finished
	mov	_received_flag,#0x01
00105$:
;	./src/main.c:111: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
