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
	.globl _uart_isr
	.globl _main
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
	.globl _Write7219_PARM_2
	.globl _patt1
	.globl _patt
	.globl _received_flag
	.globl _received_data
	.globl _send_flag
	.globl _send_data
	.globl _ans_patt
	.globl _ANS
	.globl _sendbyte
	.globl _Write7219
	.globl _Initial
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
	.ds 8
_ans_patt::
	.ds 8
_send_data::
	.ds 1
_send_flag::
	.ds 1
_received_data::
	.ds 1
_received_flag::
	.ds 1
_patt::
	.ds 1
_patt1::
	.ds 1
_Write7219_PARM_2:
	.ds 1
_main_display_seg_65536_21:
	.ds 5
_main_cnt3_65536_21:
	.ds 1
_main_cnt4_65536_21:
	.ds 1
_main_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
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
;	./src/main.c:28: unsigned char ANS[8] = {4,4,2,2,2,2,2};
	mov	_ANS,#0x04
	mov	(_ANS + 0x0001),#0x04
	mov	(_ANS + 0x0002),#0x02
	mov	(_ANS + 0x0003),#0x02
	mov	(_ANS + 0x0004),#0x02
	mov	(_ANS + 0x0005),#0x02
	mov	(_ANS + 0x0006),#0x02
;	./src/main.c:29: unsigned char ans_patt[8] = {0x33,0x33,0x6D,0x6D,0x6D,0x6D,0x6D};
	mov	_ans_patt,#0x33
	mov	(_ans_patt + 0x0001),#0x33
	mov	(_ans_patt + 0x0002),#0x6d
	mov	(_ans_patt + 0x0003),#0x6d
	mov	(_ans_patt + 0x0004),#0x6d
	mov	(_ans_patt + 0x0005),#0x6d
	mov	(_ans_patt + 0x0006),#0x6d
;	./src/main.c:31: unsigned char send_flag = 0;
	mov	_send_flag,#0x00
;	./src/main.c:33: unsigned char received_flag = 0;
	mov	_received_flag,#0x00
;	./src/main.c:34: unsigned char patt = 0x01, patt1;
	mov	_patt,#0x01
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
;a                         Allocated to registers r5 r6 
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:44: void sendbyte(unsigned char address,unsigned char dat){
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
;	./src/main.c:45: for (unsigned int a=0;a<8;a++)        //get last 8 bits(address)
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:47: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:48: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:49: address <<= 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	./src/main.c:50: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:45: for (unsigned int a=0;a<8;a++)        //get last 8 bits(address)
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00101$:
;	./src/main.c:52: for (unsigned int a=0;a<8;a++)      //get first 8 bits(data)
	mov	r6,#0x00
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00109$
;	./src/main.c:54: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:55: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:56: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:57: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:52: for (unsigned int a=0;a<8;a++)      //get first 8 bits(data)
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00109$:
;	./src/main.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:62: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:65: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:67: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/main.c:69: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:67: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/main.c:72: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;	./src/main.c:76: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:78: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:79: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:80: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:81: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:82: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
;	./src/main.c:84: }
	ljmp	_Write7219
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;display_seg               Allocated with name '_main_display_seg_65536_21'
;cnt1                      Allocated to registers r7 
;cnt2                      Allocated to registers r6 
;cnt3                      Allocated with name '_main_cnt3_65536_21'
;cnt4                      Allocated with name '_main_cnt4_65536_21'
;a                         Allocated to registers 
;ans                       Allocated to registers r2 r3 
;i                         Allocated to registers r4 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	./src/main.c:87: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:89: unsigned char display_seg[] = {
	mov	_main_display_seg_65536_21,#0x7e
	mov	(_main_display_seg_65536_21 + 0x0001),#0x30
	mov	(_main_display_seg_65536_21 + 0x0002),#0x6d
	mov	(_main_display_seg_65536_21 + 0x0003),#0x79
	mov	(_main_display_seg_65536_21 + 0x0004),#0x33
;	./src/main.c:96: unsigned char cnt1 = 0;
	mov	r7,#0x00
;	./src/main.c:97: unsigned char cnt2 = 0;
	mov	r6,#0x00
;	./src/main.c:98: unsigned char cnt3 = 0;
;	1-genFromRTrack replaced	mov	_main_cnt3_65536_21,#0x00
	mov	_main_cnt3_65536_21,r7
;	./src/main.c:99: unsigned char cnt4 = 0;
;	1-genFromRTrack replaced	mov	_main_cnt4_65536_21,#0x00
	mov	_main_cnt4_65536_21,r7
;	./src/main.c:100: int a = 0, ans = ANS[0];
	mov	r2,_ANS
	mov	r3,#0x00
;	./src/main.c:102: Initial();
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_Initial
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:103: for(unsigned char i=1;i<=8;i++){
	mov	r4,#0x01
00141$:
	mov	a,r4
	add	a,#0xff - 0x08
	jc	00101$
;	./src/main.c:104: Write7219(i,display_seg[0]);   //turn off all LED
	mov	_Write7219_PARM_2,_main_display_seg_65536_21
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_Write7219
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:103: for(unsigned char i=1;i<=8;i++){
	inc	r4
	sjmp	00141$
00101$:
;	./src/main.c:107: TMOD = 0x20;			// set timer1 to mode2 
	mov	_TMOD,#0x20
;	./src/main.c:108: SCON = 0x50;       		// set serial mode1
	mov	_SCON,#0x50
;	./src/main.c:109: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
	mov	_TH1,#0xfa
;	./src/main.c:110: TR1 = 1;				// enable timer = 1
;	assignBit
	setb	_TR1
;	./src/main.c:111: IE = 0x90;				// enable serial port interrupt
	mov	_IE,#0x90
;	./src/main.c:112: while(1)
	clr	a
	mov	_main_sloc0_1_0,a
	mov	(_main_sloc0_1_0 + 1),a
00138$:
;	./src/main.c:115: if (but1 == 0) {
	jb	_P3_2,00107$
;	./src/main.c:116: if (cnt1 < 3) {
	cjne	r7,#0x03,00220$
00220$:
	jnc	00108$
;	./src/main.c:117: cnt1++;
	inc	r7
;	./src/main.c:118: if (cnt1 == 3) {
	cjne	r7,#0x03,00108$
;	./src/main.c:119: send_data = 1;
	mov	_send_data,#0x01
;	./src/main.c:120: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00108$
00107$:
;	./src/main.c:124: else { cnt1 = 0; }
	mov	r7,#0x00
00108$:
;	./src/main.c:126: if (but2 == 0) {
	jb	_P3_3,00114$
;	./src/main.c:127: if (cnt2 < 3) {
	cjne	r6,#0x03,00225$
00225$:
	jnc	00115$
;	./src/main.c:128: cnt2++;
	inc	r6
;	./src/main.c:129: if (cnt2 == 3) {
	cjne	r6,#0x03,00115$
;	./src/main.c:130: send_data = 2;
	mov	_send_data,#0x02
;	./src/main.c:131: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00115$
00114$:
;	./src/main.c:135: else { cnt2 = 0; }
	mov	r6,#0x00
00115$:
;	./src/main.c:137: if (but3 == 0) {
	jb	_P2_0,00121$
;	./src/main.c:138: delay_ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main.c:139: if (cnt3 < 3) {
	mov	a,#0x100 - 0x03
	add	a,_main_cnt3_65536_21
	jc	00122$
;	./src/main.c:140: cnt3++;
	inc	_main_cnt3_65536_21
;	./src/main.c:141: if (cnt3 == 3) {
	mov	a,#0x03
	cjne	a,_main_cnt3_65536_21,00122$
;	./src/main.c:142: send_data = 3;
	mov	_send_data,#0x03
;	./src/main.c:143: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00122$
00121$:
;	./src/main.c:147: else { cnt3 = 0; }
	mov	_main_cnt3_65536_21,#0x00
00122$:
;	./src/main.c:149: if (but4 == 0) {
	jb	_P2_1,00128$
;	./src/main.c:150: if (cnt4 < 3) {
	mov	a,#0x100 - 0x03
	add	a,_main_cnt4_65536_21
	jc	00129$
;	./src/main.c:151: cnt4++;
	inc	_main_cnt4_65536_21
;	./src/main.c:152: if (cnt4 == 3) {
	mov	a,#0x03
	cjne	a,_main_cnt4_65536_21,00129$
;	./src/main.c:153: send_data = 4;
	mov	_send_data,#0x04
;	./src/main.c:154: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00129$
00128$:
;	./src/main.c:158: else { cnt4 = 0; }
	mov	_main_cnt4_65536_21,#0x00
00129$:
;	./src/main.c:161: if(send_flag == 1)
	mov	a,#0x01
	cjne	a,_send_flag,00131$
;	./src/main.c:163: SBUF = send_data;	
	mov	_SBUF,_send_data
;	./src/main.c:164: send_flag = 0;
	mov	_send_flag,#0x00
00131$:
;	./src/main.c:168: if(received_flag==1){
	mov	a,#0x01
	cjne	a,_received_flag,00239$
	sjmp	00240$
00239$:
	ljmp	00138$
00240$:
;	./src/main.c:169: if(received_data == ANS[a]){
	mov	a,_main_sloc0_1_0
	add	a,#_ANS
	mov	r1,a
	mov	a,@r1
	cjne	a,_received_data,00133$
;	./src/main.c:170: patt1 = patt << ans;
	mov	r4,_patt
	mov	ar5,r2
	mov	b,r5
	inc	b
	mov	a,r4
	sjmp	00245$
00243$:
	add	a,acc
00245$:
	djnz	b,00243$
;	./src/main.c:171: led = ~patt1;
	mov	_patt1,a
	cpl	a
	mov	_P1,a
;	./src/main.c:172: Write7219(7-a, ans_patt[a]);
	mov	r5,_main_sloc0_1_0
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	dpl,a
	mov	a,_main_sloc0_1_0
	add	a,#_ans_patt
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:173: Write7219(8, display_seg[1]);
	mov	_Write7219_PARM_2,(_main_display_seg_65536_21 + 0x0001)
	mov	dpl,#0x08
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:174: a+=1;
	inc	_main_sloc0_1_0
	clr	a
	cjne	a,_main_sloc0_1_0,00246$
	inc	(_main_sloc0_1_0 + 1)
00246$:
;	./src/main.c:175: ans = ANS[a];
	mov	a,_main_sloc0_1_0
	add	a,#_ANS
	mov	r1,a
	mov	ar5,@r1
	mov	ar2,r5
	mov	r3,#0x00
	sjmp	00134$
00133$:
;	./src/main.c:177: Write7219(8, display_seg[0]);
	mov	_Write7219_PARM_2,_main_display_seg_65536_21
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_Write7219
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
00134$:
;	./src/main.c:179: received_flag = 0;
	mov	_received_flag,#0x00
;	./src/main.c:182: }
	ljmp	00138$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_isr'
;------------------------------------------------------------
;	./src/main.c:185: void uart_isr(void) __interrupt (4) 
;	-----------------------------------------
;	 function uart_isr
;	-----------------------------------------
_uart_isr:
;	./src/main.c:187: if (TI == 1)
;	./src/main.c:188: TI = 0;
;	assignBit
	jbc	_TI,00115$
	sjmp	00102$
00115$:
00102$:
;	./src/main.c:189: if( RI == 1) {
;	./src/main.c:190: RI = 0;                  // refresh RI
;	assignBit
	jbc	_RI,00116$
	sjmp	00105$
00116$:
;	./src/main.c:191: received_data = SBUF;    // receive data from SBUF
	mov	_received_data,_SBUF
;	./src/main.c:192: received_flag = 1;       // receiving finished
	mov	_received_flag,#0x01
00105$:
;	./src/main.c:194: }
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
