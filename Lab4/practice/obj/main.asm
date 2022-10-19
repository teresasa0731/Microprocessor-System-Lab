;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sendbyte_PARM_2
	.globl _main
	.globl _T0_isr
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
	.globl _Write7219_PARM_2
	.globl _a
	.globl _time
	.globl _hall_last_state
	.globl _hall_cnt
	.globl _deg
	.globl _count
	.globl _print
	.globl _sendbyte
	.globl _Write7219
	.globl _Initial
	.globl _draw
	.globl _countTime
	.globl _Clean
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
_display_seg:
	.ds 11
_print::
	.ds 8
_count::
	.ds 2
_deg::
	.ds 2
_hall_cnt::
	.ds 1
_hall_last_state::
	.ds 1
_time::
	.ds 4
_a::
	.ds 2
_Write7219_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
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
;	./src/main.c:30: static unsigned char display_seg[] = {
	mov	_display_seg,#0x7e
	mov	(_display_seg + 0x0001),#0x30
	mov	(_display_seg + 0x0002),#0x6d
	mov	(_display_seg + 0x0003),#0x79
	mov	(_display_seg + 0x0004),#0x33
	mov	(_display_seg + 0x0005),#0x5b
	mov	(_display_seg + 0x0006),#0x5f
	mov	(_display_seg + 0x0007),#0x70
	mov	(_display_seg + 0x0008),#0x7f
	mov	(_display_seg + 0x0009),#0x7b
	mov	(_display_seg + 0x000a),#0x00
;	./src/main.c:45: int count = 0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	./src/main.c:46: int deg = 0;
	mov	_deg,a
	mov	(_deg + 1),a
;	./src/main.c:47: char hall_cnt = 0x00;	// Count the # of Hall sensor activations
;	1-genFromRTrack replaced	mov	_hall_cnt,#0x00
	mov	_hall_cnt,a
;	./src/main.c:48: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
	mov	_hall_last_state,a
;	./src/main.c:49: unsigned long int time = 0;
	mov	_time,a
	mov	(_time + 1),a
	mov	(_time + 2),a
	mov	(_time + 3),a
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
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated with name '_sendbyte_PARM_2'
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:54: void sendbyte(unsigned char address,unsigned char dat){
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/main.c:55: for (a=0;a<8;a++)        //get last 8 bits(address)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00103$:
;	./src/main.c:57: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:58: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:59: address <<= 1;
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
;	./src/main.c:60: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:55: for (a=0;a<8;a++)        //get last 8 bits(address)
	inc	_a
	clr	a
	cjne	a,_a,00121$
	inc	(_a + 1)
00121$:
	clr	c
	mov	a,_a
	subb	a,#0x08
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00103$
;	./src/main.c:62: for (a=0;a<8;a++)      //get first 8 bits(data)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00105$:
;	./src/main.c:64: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:65: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:66: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:67: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:62: for (a=0;a<8;a++)      //get first 8 bits(data)
	inc	_a
	clr	a
	cjne	a,_a,00123$
	inc	(_a + 1)
00123$:
	clr	c
	mov	a,_a
	subb	a,#0x08
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00105$
;	./src/main.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:72: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:75: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:77: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/main.c:79: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:77: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/main.c:82: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:86: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:89: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:90: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:91: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:92: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:93: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:94: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:95: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:94: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:97: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:100: void draw(void){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	./src/main.c:101: for(unsigned int i = 1;i < 9;i++){
	mov	r6,#0x01
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	subb	a,#0x00
	jnc	00105$
;	./src/main.c:102: Write7219(i, print[i-1]);
	mov	ar5,r6
	mov	ar4,r5
	mov	a,r4
	dec	a
	add	a,#_print
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:101: for(unsigned int i = 1;i < 9;i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	./src/main.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'countTime'
;------------------------------------------------------------
;num                       Allocated to registers r2 r3 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:107: void countTime(void){
;	-----------------------------------------
;	 function countTime
;	-----------------------------------------
_countTime:
;	./src/main.c:109: if(time < 10000)
	clr	c
	mov	a,_time
	subb	a,#0x10
	mov	a,(_time + 1)
	subb	a,#0x27
	mov	a,(_time + 2)
	subb	a,#0x00
	mov	a,(_time + 3)
	subb	a,#0x00
	jnc	00110$
;	./src/main.c:110: deg = 4;
	mov	_deg,#0x04
	mov	(_deg + 1),#0x00
	sjmp	00123$
00110$:
;	./src/main.c:111: else if(time < 100000)
	clr	c
	mov	a,_time
	subb	a,#0xa0
	mov	a,(_time + 1)
	subb	a,#0x86
	mov	a,(_time + 2)
	subb	a,#0x01
	mov	a,(_time + 3)
	subb	a,#0x00
	jnc	00107$
;	./src/main.c:112: deg = 5;
	mov	_deg,#0x05
	mov	(_deg + 1),#0x00
	sjmp	00123$
00107$:
;	./src/main.c:113: else if(time < 1000000)
	clr	c
	mov	a,_time
	subb	a,#0x40
	mov	a,(_time + 1)
	subb	a,#0x42
	mov	a,(_time + 2)
	subb	a,#0x0f
	mov	a,(_time + 3)
	subb	a,#0x00
	jnc	00104$
;	./src/main.c:114: deg = 6;
	mov	_deg,#0x06
	mov	(_deg + 1),#0x00
	sjmp	00123$
00104$:
;	./src/main.c:115: else if(time < 10000000)
	clr	c
	mov	a,_time
	subb	a,#0x80
	mov	a,(_time + 1)
	subb	a,#0x96
	mov	a,(_time + 2)
	subb	a,#0x98
	mov	a,(_time + 3)
	subb	a,#0x00
	jnc	00123$
;	./src/main.c:116: deg = 7;
	mov	_deg,#0x07
	mov	(_deg + 1),#0x00
;	./src/main.c:118: for(unsigned int i = 0; i < deg; i++){
00123$:
	mov	r6,#0x00
	mov	r7,#0x00
00114$:
	mov	r4,_deg
	mov	r5,(_deg + 1)
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00116$
;	./src/main.c:119: num = time % 10;
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_time
	mov	dph,(_time + 1)
	mov	b,(_time + 2)
	mov	a,(_time + 3)
	push	ar7
	push	ar6
	lcall	__modulong
	mov	r2,dpl
	pop	ar6
	pop	ar7
;	./src/main.c:120: print[i] = display_seg[num];
	mov	a,r6
	add	a,#_print
	mov	r1,a
	mov	a,r2
	add	a,#_display_seg
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
;	./src/main.c:121: time = time / 10;
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_time
	mov	dph,(_time + 1)
	mov	b,(_time + 2)
	mov	a,(_time + 3)
	push	ar7
	push	ar6
	lcall	__divulong
	mov	_time,dpl
	mov	(_time + 1),dph
	mov	(_time + 2),b
	mov	(_time + 3),a
	pop	ar6
	pop	ar7
;	./src/main.c:118: for(unsigned int i = 0; i < deg; i++){
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
	sjmp	00114$
00116$:
;	./src/main.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:126: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	push	acc
	push	ar7
	push	psw
	mov	psw,#0x00
;	./src/main.c:129: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:130: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:132: time = time + 1;
	inc	_time
	clr	a
	cjne	a,_time,00114$
	inc	(_time + 1)
	cjne	a,(_time + 1),00114$
	inc	(_time + 2)
	cjne	a,(_time + 2),00114$
	inc	(_time + 3)
00114$:
;	./src/main.c:133: if((Hall_In == 0) && (hall_last_state == 1))	// Falling edge of hall sensor signal (activated)
	jb	_P2_4,00102$
	mov	a,#0x01
	cjne	a,_hall_last_state,00102$
;	./src/main.c:135: hall_cnt = hall_cnt + 1;					// Count 1 activation
	mov	a,_hall_cnt
	mov	r7,a
	inc	a
	mov	_hall_cnt,a
00102$:
;	./src/main.c:138: hall_last_state = Hall_In;						// Update last Hall sensor state
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	_hall_last_state,a
;	./src/main.c:139: }
	pop	psw
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Clean'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:142: void Clean(void){
;	-----------------------------------------
;	 function Clean
;	-----------------------------------------
_Clean:
;	./src/main.c:143: for(unsigned int i = 0; i < 8; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:144: print[i] = 0x00;
	mov	a,r6
	add	a,#_print
	mov	r0,a
	mov	@r0,#0x00
;	./src/main.c:143: for(unsigned int i = 0; i < 8; i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/main.c:146: time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
	mov	(_time + 2),a
	mov	(_time + 3),a
;	./src/main.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./src/main.c:150: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:153: Initial();
	lcall	_Initial
;	./src/main.c:155: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:156: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:157: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:158: ET0 = 1;										// Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:159: EA = 1;											// Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:160: TR0 = 1;										// Start Timer 0
;	assignBit
	setb	_TR0
;	./src/main.c:162: Hall_In = 1;
;	assignBit
	setb	_P2_4
;	./src/main.c:164: while(1)
00105$:
;	./src/main.c:166: if((Hall_In == 0) && (hall_last_state == 1)){
	jb	_P2_4,00105$
	mov	a,#0x01
	cjne	a,_hall_last_state,00105$
;	./src/main.c:167: countTime();
	lcall	_countTime
;	./src/main.c:168: print[3] = print[3] + 0x80;
	mov	r7,(_print + 0x0003)
	mov	a,#0x80
	add	a,r7
	mov	(_print + 0x0003),a
;	./src/main.c:169: draw();
	lcall	_draw
;	./src/main.c:170: Clean();
	lcall	_Clean
;	./src/main.c:174: }
	sjmp	00105$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
