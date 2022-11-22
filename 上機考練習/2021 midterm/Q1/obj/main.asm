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
	.globl _input
	.globl _a
	.globl _time
	.globl _hall_last_state
	.globl _hall_cnt
	.globl _print
	.globl _sendbyte
	.globl _Write7219
	.globl _Initial
	.globl _draw
	.globl _Clean
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
_display_seg:
	.ds 11
_print::
	.ds 8
_hall_cnt::
	.ds 2
_hall_last_state::
	.ds 1
_time::
	.ds 4
_a::
	.ds 2
_input::
	.ds 50
_Write7219_PARM_2:
	.ds 1
_main_data_65536_31:
	.ds 2
_main_START_65536_31:
	.ds 2
_main_FINISH_65536_31:
	.ds 2
_main_idx_262145_43:
	.ds 2
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
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
;	./src/main.c:28: static unsigned char display_seg[] = {
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
;	./src/main.c:43: int hall_cnt = 0;	// Count the # of Hall sensor activations
	clr	a
	mov	_hall_cnt,a
	mov	(_hall_cnt + 1),a
;	./src/main.c:44: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
	mov	_hall_last_state,a
;	./src/main.c:45: unsigned long int time = 0;
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
;	./src/main.c:51: void sendbyte(unsigned char address,unsigned char dat){
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
;	./src/main.c:52: for (a=0;a<8;a++)        //get last 8 bits(address)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00103$:
;	./src/main.c:54: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:55: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:56: address <<= 1;
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
;	./src/main.c:57: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:52: for (a=0;a<8;a++)        //get last 8 bits(address)
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
;	./src/main.c:59: for (a=0;a<8;a++)      //get first 8 bits(data)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00105$:
;	./src/main.c:61: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:62: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:63: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:64: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:59: for (a=0;a<8;a++)      //get first 8 bits(data)
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
;	./src/main.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:69: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
;	./src/main.c:71: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:72: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	lcall	_sendbyte
;	./src/main.c:73: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:77: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:80: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:81: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:82: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:83: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:84: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:85: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:86: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:85: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:91: void draw(void){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	./src/main.c:92: for(unsigned int i = 1;i < 9;i++){
	mov	r6,#0x01
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	subb	a,#0x00
	jnc	00105$
;	./src/main.c:93: Write7219(i, print[i-1]);
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
;	./src/main.c:92: for(unsigned int i = 1;i < 9;i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	./src/main.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:99: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	push	acc
	push	psw
;	./src/main.c:102: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:103: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:105: if((Hall_In == 0) && (hall_last_state == 0))	// Falling edge of hall sensor signal (activated)
	jb	_P2_4,00102$
	mov	a,_hall_last_state
	jnz	00102$
;	./src/main.c:107: hall_cnt = hall_cnt + 1;					// Count 1 activation
	inc	_hall_cnt
	clr	a
	cjne	a,_hall_cnt,00116$
	inc	(_hall_cnt + 1)
00116$:
00102$:
;	./src/main.c:110: hall_last_state = Hall_In;						// Update last Hall sensor state
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	_hall_last_state,a
;	./src/main.c:111: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Clean'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:114: void Clean(void){
;	-----------------------------------------
;	 function Clean
;	-----------------------------------------
_Clean:
;	./src/main.c:115: for(unsigned int i = 0; i < 8; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:116: print[i] = 0x00;
	mov	a,r6
	add	a,#_print
	mov	r0,a
	mov	@r0,#0x00
;	./src/main.c:115: for(unsigned int i = 0; i < 8; i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/main.c:118: hall_cnt = 0;
	clr	a
	mov	_hall_cnt,a
	mov	(_hall_cnt + 1),a
;	./src/main.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;data                      Allocated with name '_main_data_65536_31'
;pre_PB1                   Allocated to registers 
;START                     Allocated with name '_main_START_65536_31'
;FINISH                    Allocated with name '_main_FINISH_65536_31'
;patt1                     Allocated to registers 
;buf                       Allocated to registers r7 r6 
;idx                       Allocated with name '_main_idx_262145_43'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;------------------------------------------------------------
;	./src/main.c:122: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:124: unsigned int data = 0;
	clr	a
	mov	_main_data_65536_31,a
	mov	(_main_data_65536_31 + 1),a
;	./src/main.c:125: unsigned int pre_PB1 = 1,START = 0,FINISH = 0;
	mov	_main_START_65536_31,a
	mov	(_main_START_65536_31 + 1),a
	mov	_main_FINISH_65536_31,a
	mov	(_main_FINISH_65536_31 + 1),a
;	./src/main.c:128: Initial();
	lcall	_Initial
;	./src/main.c:129: Clean();
	lcall	_Clean
;	./src/main.c:130: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:131: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:132: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:133: ET0 = 1;										// Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:134: EA = 1;											// Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:135: TR0 = 1;										// Start Timer 0
;	assignBit
	setb	_TR0
;	./src/main.c:139: while (START == 0)
00106$:
	mov	a,_main_START_65536_31
	orl	a,(_main_START_65536_31 + 1)
	jnz	00108$
;	./src/main.c:141: if((PB1 == 0) && (pre_PB1 == 1))
	jb	_INT0,00106$
;	./src/main.c:143: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:144: if(PB1 == 0){
	jb	_INT0,00106$
;	./src/main.c:145: START = 1;
	mov	_main_START_65536_31,#0x01
;	./src/main.c:146: FINISH = 0;
	clr	a
	mov	(_main_START_65536_31 + 1),a
	mov	_main_FINISH_65536_31,a
	mov	(_main_FINISH_65536_31 + 1),a
;	./src/main.c:147: hall_cnt = 0;
	mov	_hall_cnt,a
	mov	(_hall_cnt + 1),a
;	./src/main.c:148: data = 0;
	mov	_main_data_65536_31,a
	mov	(_main_data_65536_31 + 1),a
	sjmp	00106$
00108$:
;	./src/main.c:153: led = ~0xFF;
	mov	_P1,#0x00
;	./src/main.c:154: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/main.c:155: led = ~0x00;
	mov	_P1,#0xff
;	./src/main.c:156: while ((FINISH == 0) && (START == 1))
	mov	a,#0x01
	cjne	a,_main_START_65536_31,00200$
	dec	a
	cjne	a,(_main_START_65536_31 + 1),00200$
	mov	a,#0x01
	sjmp	00201$
00200$:
	clr	a
00201$:
	mov	r7,a
	mov	_main_sloc0_1_0,_main_data_65536_31
	mov	(_main_sloc0_1_0 + 1),(_main_data_65536_31 + 1)
00118$:
	mov	a,_main_FINISH_65536_31
	orl	a,(_main_FINISH_65536_31 + 1)
	jz	00202$
	ljmp	00151$
00202$:
	mov	a,r7
	jnz	00203$
	ljmp	00151$
00203$:
;	./src/main.c:158: if((Hall_In == 1) && (hall_last_state == 0))
	jnb	_P2_4,00118$
	mov	a,_hall_last_state
	jnz	00118$
;	./src/main.c:160: if(hall_cnt > 2000){
	clr	c
	mov	a,#0xd0
	subb	a,_hall_cnt
	mov	a,#(0x07 ^ 0x80)
	mov	b,(_hall_cnt + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	./src/main.c:161: input[data] = 1;
	mov	a,_main_sloc0_1_0
	add	a,_main_sloc0_1_0
	mov	r5,a
	mov	a,(_main_sloc0_1_0 + 1)
	rlc	a
	mov	a,r5
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:162: led = ~0x00;
	mov	_P1,#0xff
;	./src/main.c:163: led = ~((patt1 << (data%5)) | 0xE0);
	mov	__moduint_PARM_2,#0x05
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	push	ar7
	lcall	__moduint
	mov	r5,dpl
	pop	ar7
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00209$
00207$:
	add	a,acc
00209$:
	djnz	b,00207$
	orl	a,#0xe0
	cpl	a
	mov	_P1,a
;	./src/main.c:164: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	lcall	_delay_ms
	pop	ar7
	sjmp	00111$
00110$:
;	./src/main.c:166: input[data] = 1;
	mov	a,_main_sloc0_1_0
	add	a,_main_sloc0_1_0
	mov	r5,a
	mov	a,(_main_sloc0_1_0 + 1)
	rlc	a
	mov	a,r5
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:167: led = ~0x00;
	mov	_P1,#0xff
;	./src/main.c:168: led = ~((patt1 << (data%5)) | 0x80);
	mov	__moduint_PARM_2,#0x05
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	push	ar7
	lcall	__moduint
	mov	r5,dpl
	pop	ar7
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00212$
00210$:
	add	a,acc
00212$:
	djnz	b,00210$
	orl	a,#0x80
	cpl	a
	mov	_P1,a
;	./src/main.c:169: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	lcall	_delay_ms
	pop	ar7
00111$:
;	./src/main.c:171: data ++ ;
	inc	_main_sloc0_1_0
	clr	a
	cjne	a,_main_sloc0_1_0,00213$
	inc	(_main_sloc0_1_0 + 1)
00213$:
;	./src/main.c:172: hall_cnt = 0;
	clr	a
	mov	_hall_cnt,a
	mov	(_hall_cnt + 1),a
;	./src/main.c:173: if(data == 25){
	mov	a,#0x19
	cjne	a,_main_sloc0_1_0,00214$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00214$
	sjmp	00215$
00214$:
	ljmp	00118$
00215$:
;	./src/main.c:174: FINISH = 1;
	mov	_main_FINISH_65536_31,#0x01
	mov	(_main_FINISH_65536_31 + 1),#0x00
	ljmp	00118$
00151$:
	mov	_main_data_65536_31,_main_sloc0_1_0
	mov	(_main_data_65536_31 + 1),(_main_sloc0_1_0 + 1)
;	./src/main.c:182: if(FINISH == 1){
	mov	a,#0x01
	cjne	a,_main_FINISH_65536_31,00216$
	dec	a
	cjne	a,(_main_FINISH_65536_31 + 1),00216$
	sjmp	00217$
00216$:
	ljmp	00106$
00217$:
;	./src/main.c:183: led = ~0x80;
	mov	_P1,#0x7f
;	./src/main.c:184: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/main.c:186: for(unsigned int idx = 0; idx < 5; idx++){
	clr	a
	mov	_main_idx_262145_43,a
	mov	(_main_idx_262145_43 + 1),a
00131$:
	clr	c
	mov	a,_main_idx_262145_43
	subb	a,#0x05
	mov	a,(_main_idx_262145_43 + 1)
	subb	a,#0x00
	jc	00218$
	ljmp	00106$
00218$:
;	./src/main.c:187: buf = input[idx*5] + input[idx*5+1] + input[idx*5+2] + input[idx*5+2] +input[idx*5+4];
	mov	a,_main_idx_262145_43
	mov	b,#0x05
	mul	ab
	mov	r5,a
	add	a,acc
	add	a,#_input
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	mov	a,r5
	inc	a
	add	a,acc
	add	a,#_input
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	mov	a,r2
	add	a,r3
	mov	_main_sloc0_1_0,a
	mov	a,r7
	addc	a,r4
	mov	(_main_sloc0_1_0 + 1),a
	mov	a,#0x02
	add	a,r5
	add	a,acc
	add	a,#_input
	mov	r1,a
	mov	_main_sloc1_1_0,@r1
	inc	r1
	mov	(_main_sloc1_1_0 + 1),@r1
	dec	r1
	mov	a,_main_sloc1_1_0
	add	a,_main_sloc0_1_0
	mov	r7,a
	mov	a,(_main_sloc1_1_0 + 1)
	addc	a,(_main_sloc0_1_0 + 1)
	mov	r2,a
	mov	a,_main_sloc1_1_0
	add	a,r7
	mov	r7,a
	mov	a,(_main_sloc1_1_0 + 1)
	addc	a,r2
	mov	r2,a
	mov	a,r5
	add	a,#0x04
	add	a,acc
	add	a,#_input
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
;	./src/main.c:188: if(input[idx*5] == 0)
	mov	a,r3
	orl	a,r4
	jnz	00122$
;	./src/main.c:189: print[idx] = (5-buf)%10;
	mov	a,_main_idx_262145_43
	add	a,#_print
	mov	r1,a
	mov	a,#0x05
	clr	c
	subb	a,r7
	mov	dpl,a
	clr	a
	subb	a,r6
	mov	dph,a
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar1
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	pop	ar1
	mov	@r1,ar4
	sjmp	00132$
00122$:
;	./src/main.c:191: print[idx] = (5+buf)%10;
	mov	a,_main_idx_262145_43
	add	a,#_print
	mov	r1,a
	mov	dpl,r7
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar1
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	mov	@r1,ar6
00132$:
;	./src/main.c:186: for(unsigned int idx = 0; idx < 5; idx++){
	inc	_main_idx_262145_43
	clr	a
	cjne	a,_main_idx_262145_43,00220$
	inc	(_main_idx_262145_43 + 1)
00220$:
;	./src/main.c:196: }
	ljmp	00131$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;input_ms                  Allocated to registers r6 r7 
;cnt1                      Allocated to registers r4 r5 
;cnt2                      Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:198: void delay_ms(unsigned int input_ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:203: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	./src/main.c:205: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
	mov	r3,#0x5a
00105$:
	djnz	r3,00105$
;	./src/main.c:203: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	./src/main.c:207: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
