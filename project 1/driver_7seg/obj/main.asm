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
	.globl _turn_to_CHAR
	.globl _calculate_OP
	.globl _read_curINPUT
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
	.globl _display_seg
	.globl _flag
	.globl _num2
	.globl _num1
	.globl _patt
	.globl _display
	.globl _prestate
	.globl _state
	.globl _curINPUT
	.globl _sendbyte
	.globl _Write7219
	.globl _Initial
	.globl _draw
	.globl _scan_row
	.globl _sequence
	.globl _turn_to_NUM
	.globl _func_call
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
_curINPUT::
	.ds 28
_state::
	.ds 28
_prestate::
	.ds 28
_display::
	.ds 8
_patt::
	.ds 1
_num1::
	.ds 2
_num2::
	.ds 2
_flag::
	.ds 2
_display_seg::
	.ds 11
_Write7219_PARM_2:
	.ds 1
_turn_to_NUM_num_65536_47:
	.ds 2
_turn_to_NUM_deg_65536_47:
	.ds 2
_turn_to_NUM_sloc0_1_0:
	.ds 2
_turn_to_NUM_sloc1_1_0:
	.ds 1
_turn_to_CHAR_n_65536_58:
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
;	./src/main.c:56: unsigned char patt = 0x08; // led value
	mov	_patt,#0x08
;	./src/main.c:58: unsigned char display_seg[] = {
	mov	_display_seg,#0x30
	mov	(_display_seg + 0x0001),#0x6d
	mov	(_display_seg + 0x0002),#0x79
	mov	(_display_seg + 0x0003),#0x33
	mov	(_display_seg + 0x0004),#0x5b
	mov	(_display_seg + 0x0005),#0x5f
	mov	(_display_seg + 0x0006),#0x70
	mov	(_display_seg + 0x0007),#0x7f
	mov	(_display_seg + 0x0008),#0x7b
	mov	(_display_seg + 0x0009),#0x7e
	mov	(_display_seg + 0x000a),#0x4f
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
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:74: void sendbyte(unsigned char address,unsigned char dat){
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
;	./src/main.c:76: for (i=0;i<8;i++)        //get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/main.c:78: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:79: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:80: address <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/main.c:81: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:76: for (i=0;i<8;i++)        //get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00103$
;	./src/main.c:83: for (i=0;i<8;i++)      //get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/main.c:85: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:86: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:87: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:88: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:83: for (i=0;i<8;i++)      //get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/main.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:93: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:96: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:98: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/main.c:100: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:98: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/main.c:103: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:107: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:110: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:111: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:112: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:113: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:114: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:115: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:116: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:115: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:121: void draw(void){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	./src/main.c:123: for(i=1; i<=8; i++) {
	mov	r7,#0x01
00102$:
;	./src/main.c:124: Write7219(i, display[i-1]);
	mov	ar6,r7
	mov	a,r6
	dec	a
	add	a,#_display
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:123: for(i=1; i<=8; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'scan_row'
;------------------------------------------------------------
;row                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:129: void scan_row(unsigned int row)
;	-----------------------------------------
;	 function scan_row
;	-----------------------------------------
_scan_row:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:131: switch (row)
	clr	c
	mov	a,#0x03
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00107$
	mov	a,r6
	add	a,r6
;	./src/main.c:133: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	./src/main.c:134: OUTPUT1 = 0; // row1 output 0
;	assignBit
	clr	_P0_6
;	./src/main.c:135: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:136: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:137: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:138: break;
;	./src/main.c:139: case 1:
	ret
00102$:
;	./src/main.c:140: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:141: OUTPUT2 = 0; // row2 output 0
;	assignBit
	clr	_P0_5
;	./src/main.c:142: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:143: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:144: break;
;	./src/main.c:145: case 2:
	ret
00103$:
;	./src/main.c:146: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:147: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:148: OUTPUT3 = 0; // row3 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:149: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:150: break;
;	./src/main.c:151: case 3:
	ret
00104$:
;	./src/main.c:152: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:153: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:154: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:155: OUTPUT0 = 0; // row0 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:159: }
00107$:
;	./src/main.c:160: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_curINPUT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:163: void read_curINPUT(void)
;	-----------------------------------------
;	 function read_curINPUT
;	-----------------------------------------
_read_curINPUT:
;	./src/main.c:165: for (unsigned int i = 0; i < 4; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00104$
;	./src/main.c:167: scan_row(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_scan_row
	pop	ar6
	pop	ar7
;	./src/main.c:168: if(i==3)
	cjne	r6,#0x03,00102$
	cjne	r7,#0x00,00102$
;	./src/main.c:169: curINPUT[9] = INPUT2;
	mov	c,_P0_1
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	mov	((_curINPUT + 0x0012) + 0),r4
	mov	((_curINPUT + 0x0012) + 1),r5
	sjmp	00107$
00102$:
;	./src/main.c:171: curINPUT[i * 3 + 0] = INPUT1;
	mov	ar5,r6
	mov	a,r5
	mov	b,#0x03
	mul	ab
	mov	r5,a
	add	a,acc
	add	a,#_curINPUT
	mov	r1,a
	mov	c,_P0_0
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	dec	r1
;	./src/main.c:172: curINPUT[i * 3 + 1] = INPUT2;
	mov	a,r5
	inc	a
	add	a,acc
	add	a,#_curINPUT
	mov	r1,a
	mov	c,_P0_1
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	dec	r1
;	./src/main.c:173: curINPUT[i * 3 + 2] = INPUT3;
	inc	r5
	inc	r5
	mov	a,r5
	add	a,r5
	add	a,#_curINPUT
	mov	r1,a
	mov	c,_P0_2
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
00107$:
;	./src/main.c:165: for (unsigned int i = 0; i < 4; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00104$:
;	./src/main.c:176: curINPUT[10] = but1;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	((_curINPUT + 0x0014) + 0),r6
	mov	((_curINPUT + 0x0014) + 1),r7
;	./src/main.c:177: curINPUT[11] = but2;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	((_curINPUT + 0x0016) + 0),r6
	mov	((_curINPUT + 0x0016) + 1),r7
;	./src/main.c:178: curINPUT[12] = but3;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	((_curINPUT + 0x0018) + 0),r6
	mov	((_curINPUT + 0x0018) + 1),r7
;	./src/main.c:179: curINPUT[13] = but4;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	((_curINPUT + 0x001a) + 0),r6
	mov	((_curINPUT + 0x001a) + 1),r7
;	./src/main.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sequence'
;------------------------------------------------------------
;op                        Allocated to registers r6 r7 
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:183: void sequence(unsigned int op){
;	-----------------------------------------
;	 function sequence
;	-----------------------------------------
_sequence:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:185: if(op){
	mov	a,r6
	orl	a,r7
	jz	00117$
;	./src/main.c:186: for(a = 7; a > 0; a--){
	mov	r6,#0x07
	mov	r7,#0x00
00106$:
;	./src/main.c:187: display[a] = display[a-1];
	mov	a,r6
	add	a,#_display
	mov	r1,a
	mov	ar5,r6
	mov	a,r5
	dec	a
	add	a,#_display
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
;	./src/main.c:186: for(a = 7; a > 0; a--){
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	mov	a,r6
	orl	a,r7
	jnz	00106$
;	./src/main.c:190: for(a = 0; a < 7; a++){
	ret
00117$:
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
;	./src/main.c:191: display[a] = display[a+1];
	mov	a,r6
	add	a,#_display
	mov	r1,a
	mov	ar5,r6
	mov	a,r5
	inc	a
	add	a,#_display
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
;	./src/main.c:192: display[a+1] = 0x00;
	mov	@r0,#0x00
;	./src/main.c:190: for(a = 0; a < 7; a++){
	inc	r6
	cjne	r6,#0x00,00135$
	inc	r7
00135$:
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r7
	subb	a,#0x00
	jc	00108$
;	./src/main.c:195: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_to_NUM'
;------------------------------------------------------------
;num                       Allocated with name '_turn_to_NUM_num_65536_47'
;deg                       Allocated with name '_turn_to_NUM_deg_65536_47'
;i                         Allocated to registers r2 r3 
;a                         Allocated with name '_turn_to_NUM_sloc0_1_0'
;sloc0                     Allocated with name '_turn_to_NUM_sloc0_1_0'
;sloc1                     Allocated with name '_turn_to_NUM_sloc1_1_0'
;------------------------------------------------------------
;	./src/main.c:198: unsigned int turn_to_NUM(void){
;	-----------------------------------------
;	 function turn_to_NUM
;	-----------------------------------------
_turn_to_NUM:
;	./src/main.c:199: unsigned int num = 0,deg = 1,i,a;
	clr	a
	mov	_turn_to_NUM_num_65536_47,a
	mov	(_turn_to_NUM_num_65536_47 + 1),a
	mov	_turn_to_NUM_deg_65536_47,#0x01
;	1-genFromRTrack replaced	mov	(_turn_to_NUM_deg_65536_47 + 1),#0x00
	mov	(_turn_to_NUM_deg_65536_47 + 1),a
;	./src/main.c:200: for(i=0;i<8;i++){
	mov	r2,#0x00
	mov	r3,#0x00
00113$:
;	./src/main.c:201: if(display[i] == 0x00){
	mov	a,r2
	add	a,#_display
	mov	r1,a
	mov	a,@r1
	jnz	00141$
	ljmp	00109$
00141$:
;	./src/main.c:204: for(a=0;a<9;a++){
	clr	a
	mov	_turn_to_NUM_sloc0_1_0,a
	mov	(_turn_to_NUM_sloc0_1_0 + 1),a
	mov	r4,#0x00
	mov	r5,#0x00
00111$:
;	./src/main.c:205: if(display[i] == display_seg[a]){
	mov	_turn_to_NUM_sloc1_1_0,@r1
	mov	a,r4
	add	a,#_display_seg
	mov	r0,a
	mov	a,@r0
	mov	r7,a
	cjne	a,_turn_to_NUM_sloc1_1_0,00112$
;	./src/main.c:206: num = num + (a+1)*deg;
	mov	dpl,_turn_to_NUM_sloc0_1_0
	mov	dph,(_turn_to_NUM_sloc0_1_0 + 1)
	inc	dptr
	mov	__mulint_PARM_2,_turn_to_NUM_deg_65536_47
	mov	(__mulint_PARM_2 + 1),(_turn_to_NUM_deg_65536_47 + 1)
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	mov	a,r6
	add	a,_turn_to_NUM_num_65536_47
	mov	_turn_to_NUM_num_65536_47,a
	mov	a,r7
	addc	a,(_turn_to_NUM_num_65536_47 + 1)
	mov	(_turn_to_NUM_num_65536_47 + 1),a
;	./src/main.c:207: break;
	sjmp	00103$
00112$:
;	./src/main.c:204: for(a=0;a<9;a++){
	inc	r4
	cjne	r4,#0x00,00144$
	inc	r5
00144$:
	mov	_turn_to_NUM_sloc0_1_0,r4
	mov	(_turn_to_NUM_sloc0_1_0 + 1),r5
	clr	c
	mov	a,r4
	subb	a,#0x09
	mov	a,r5
	subb	a,#0x00
	jc	00111$
00103$:
;	./src/main.c:210: if(display[i] == display_seg[9])
	mov	a,(_display_seg + 0x0009)
	cjne	a,_turn_to_NUM_sloc1_1_0,00105$
;	./src/main.c:211: num = num*10;
	mov	__mulint_PARM_2,_turn_to_NUM_num_65536_47
	mov	(__mulint_PARM_2 + 1),(_turn_to_NUM_num_65536_47 + 1)
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	_turn_to_NUM_num_65536_47,dpl
	mov	(_turn_to_NUM_num_65536_47 + 1),dph
	pop	ar2
	pop	ar3
00105$:
;	./src/main.c:212: deg = deg *10;
	mov	__mulint_PARM_2,_turn_to_NUM_deg_65536_47
	mov	(__mulint_PARM_2 + 1),(_turn_to_NUM_deg_65536_47 + 1)
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	_turn_to_NUM_deg_65536_47,dpl
	mov	(_turn_to_NUM_deg_65536_47 + 1),dph
	pop	ar2
	pop	ar3
00109$:
;	./src/main.c:200: for(i=0;i<8;i++){
	inc	r2
	cjne	r2,#0x00,00148$
	inc	r3
00148$:
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	subb	a,#0x00
	jnc	00149$
	ljmp	00113$
00149$:
;	./src/main.c:215: Clean();
	lcall	_Clean
;	./src/main.c:216: return num;
	mov	dpl,_turn_to_NUM_num_65536_47
	mov	dph,(_turn_to_NUM_num_65536_47 + 1)
;	./src/main.c:217: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_OP'
;------------------------------------------------------------
;op                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:220: void calculate_OP(unsigned char op){
;	-----------------------------------------
;	 function calculate_OP
;	-----------------------------------------
_calculate_OP:
	mov	r7,dpl
;	./src/main.c:221: switch (op)
	cjne	r7,#0x08,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x10,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x20,00127$
	sjmp	00103$
00127$:
;	./src/main.c:223: case 0x08:
	cjne	r7,#0x40,00107$
	sjmp	00104$
00101$:
;	./src/main.c:224: num1 = num1 + num2;
	mov	a,_num2
	add	a,_num1
	mov	_num1,a
	mov	a,(_num2 + 1)
	addc	a,(_num1 + 1)
	mov	(_num1 + 1),a
;	./src/main.c:225: break;
;	./src/main.c:226: case 0x10:
	ret
00102$:
;	./src/main.c:227: num1 = num1 - num2;
	mov	a,_num1
	clr	c
	subb	a,_num2
	mov	_num1,a
	mov	a,(_num1 + 1)
	subb	a,(_num2 + 1)
	mov	(_num1 + 1),a
;	./src/main.c:228: break;
;	./src/main.c:229: case 0x20:
	ret
00103$:
;	./src/main.c:230: num1 = num1 * num2;
	mov	__mulint_PARM_2,_num2
	mov	(__mulint_PARM_2 + 1),(_num2 + 1)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	__mulint
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:231: break;
;	./src/main.c:232: case 0x40:
	ret
00104$:
;	./src/main.c:233: num1 = num1 / num2;
	mov	__divuint_PARM_2,_num2
	mov	(__divuint_PARM_2 + 1),(_num2 + 1)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	__divuint
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:237: }
00107$:
;	./src/main.c:238: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_to_CHAR'
;------------------------------------------------------------
;n                         Allocated with name '_turn_to_CHAR_n_65536_58'
;c                         Allocated to registers r2 r3 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:241: void turn_to_CHAR(int n){
;	-----------------------------------------
;	 function turn_to_CHAR
;	-----------------------------------------
_turn_to_CHAR:
	mov	_turn_to_CHAR_n_65536_58,dpl
	mov	(_turn_to_CHAR_n_65536_58 + 1),dph
;	./src/main.c:243: for(i=0;i<8;i++){
	mov	r4,#0x00
	mov	r5,#0x00
00109$:
;	./src/main.c:244: c = n % 10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_turn_to_CHAR_n_65536_58
	mov	dph,(_turn_to_CHAR_n_65536_58 + 1)
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
;	./src/main.c:245: if(c>0)
	mov	a,r2
	orl	a,r3
	jz	00104$
;	./src/main.c:246: display[i] = display_seg[c];
	mov	a,r4
	add	a,#_display
	mov	r1,a
	mov	a,r2
	add	a,#_display_seg
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
	sjmp	00105$
00104$:
;	./src/main.c:247: else if (c == 0)
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	./src/main.c:248: display[i] = display_seg[9];
	mov	a,r4
	add	a,#_display
	mov	r1,a
	mov	r7,(_display_seg + 0x0009)
	mov	@r1,ar7
00105$:
;	./src/main.c:249: n = n/10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_turn_to_CHAR_n_65536_58
	mov	dph,(_turn_to_CHAR_n_65536_58 + 1)
	push	ar5
	push	ar4
	lcall	__divsint
	mov	_turn_to_CHAR_n_65536_58,dpl
	mov	(_turn_to_CHAR_n_65536_58 + 1),dph
	pop	ar4
	pop	ar5
;	./src/main.c:250: if(n == 0)
	mov	a,_turn_to_CHAR_n_65536_58
	orl	a,(_turn_to_CHAR_n_65536_58 + 1)
	jz	00111$
;	./src/main.c:243: for(i=0;i<8;i++){
	inc	r4
	cjne	r4,#0x00,00133$
	inc	r5
00133$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	subb	a,#0x00
	jc	00109$
00111$:
;	./src/main.c:253: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'func_call'
;------------------------------------------------------------
;cmd                       Allocated to registers r6 r7 
;op                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:256: void func_call(unsigned int cmd){
;	-----------------------------------------
;	 function func_call
;	-----------------------------------------
_func_call:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:257: switch (cmd)
	cjne	r6,#0x0a,00151$
	cjne	r7,#0x00,00151$
	sjmp	00101$
00151$:
	cjne	r6,#0x0b,00152$
	cjne	r7,#0x00,00152$
	ljmp	00112$
00152$:
	cjne	r6,#0x0c,00153$
	cjne	r7,#0x00,00153$
	ljmp	00113$
00153$:
	cjne	r6,#0x0d,00154$
	cjne	r7,#0x00,00154$
	ljmp	00114$
00154$:
	ret
;	./src/main.c:259: case 10:	//op
00101$:
;	./src/main.c:262: if(patt == 0x80)
	mov	a,#0x80
	cjne	a,_patt,00105$
;	./src/main.c:263: patt = 0x08;
	mov	_patt,#0x08
	sjmp	00106$
00105$:
;	./src/main.c:264: else if (patt == 0x00)
	mov	a,_patt
	jnz	00106$
;	./src/main.c:265: patt = 0x08;
	mov	_patt,#0x08
00106$:
;	./src/main.c:266: patt = patt << 1;
	mov	a,_patt
	add	a,acc
;	./src/main.c:267: led = ~patt;
	mov	_patt,a
	cpl	a
	mov	_P1,a
;	./src/main.c:268: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:271: if(flag){
	mov	a,_flag
	orl	a,(_flag + 1)
	jz	00110$
;	./src/main.c:272: num1 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:273: flag = 0;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
	ret
00110$:
;	./src/main.c:275: num2 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num2,dpl
	mov	(_num2 + 1),dph
;	./src/main.c:276: op = patt >> 1;
	mov	a,_patt
	clr	c
	rrc	a
	mov	r7,a
;	./src/main.c:277: if(op == 0x04)
	cjne	r7,#0x04,00108$
;	./src/main.c:278: op = 0x40;
	mov	r7,#0x40
00108$:
;	./src/main.c:279: calculate_OP(op);
	mov	dpl,r7
	lcall	_calculate_OP
;	./src/main.c:280: turn_to_CHAR(num1);
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	_turn_to_CHAR
;	./src/main.c:281: draw();
;	./src/main.c:283: break;
;	./src/main.c:284: case 11:	//back <-
	ljmp	_draw
00112$:
;	./src/main.c:285: sequence(0);
	mov	dptr,#0x0000
	lcall	_sequence
;	./src/main.c:286: draw();
;	./src/main.c:287: break;
;	./src/main.c:288: case 12:	//AC
	ljmp	_draw
00113$:
;	./src/main.c:289: Clean();
;	./src/main.c:290: break;
;	./src/main.c:291: case 13:	//equal=
	ljmp	_Clean
00114$:
;	./src/main.c:292: num2 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num2,dpl
	mov	(_num2 + 1),dph
;	./src/main.c:293: calculate_OP(patt);
	mov	dpl,_patt
	lcall	_calculate_OP
;	./src/main.c:294: turn_to_CHAR(num1);
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	_turn_to_CHAR
;	./src/main.c:295: draw();
;	./src/main.c:299: }
;	./src/main.c:300: }
	ljmp	_draw
;------------------------------------------------------------
;Allocation info for local variables in function 'Clean'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:303: void Clean(void){
;	-----------------------------------------
;	 function Clean
;	-----------------------------------------
_Clean:
;	./src/main.c:304: for(unsigned int a = 0; a < 8; a++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:305: display[a] = 0x00;
	mov	a,r6
	add	a,#_display
	mov	r0,a
	mov	@r0,#0x00
;	./src/main.c:306: Write7219(a+1,0x00);
	mov	ar5,r6
	mov	a,r5
	inc	a
	mov	dpl,a
	mov	_Write7219_PARM_2,#0x00
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:304: for(unsigned int a = 0; a < 8; a++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/main.c:308: Write7219(0x01,0x08);
	mov	_Write7219_PARM_2,#0x08
	mov	dpl,#0x01
	lcall	_Write7219
;	./src/main.c:309: flag = 1;
	mov	_flag,#0x01
	mov	(_flag + 1),#0x00
;	./src/main.c:310: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:313: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:316: Initial();
	lcall	_Initial
;	./src/main.c:317: for (int i = 0; i < 14; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x0e
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	./src/main.c:319: curINPUT[i] = LEVEL_HIGH;
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:320: state[i] = BTN_RELEASED;
	mov	a,r4
	add	a,#_state
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:321: prestate[i] = BTN_RELEASED;
	mov	a,r4
	add	a,#_prestate
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:317: for (int i = 0; i < 14; i++)
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
	sjmp	00127$
00101$:
;	./src/main.c:323: Clean();
	lcall	_Clean
;	./src/main.c:325: while(1)
00124$:
;	./src/main.c:327: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:329: read_curINPUT();
	lcall	_read_curINPUT
;	./src/main.c:330: for (int i = 0; i < 14; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00130$:
	clr	c
	mov	a,r6
	subb	a,#0x0e
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00124$
;	./src/main.c:333: switch (state[i])
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_state
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	cjne	r2,#0x00,00194$
	cjne	r3,#0x00,00194$
	sjmp	00102$
00194$:
	cjne	r2,#0x01,00195$
	cjne	r3,#0x00,00195$
	sjmp	00106$
00195$:
;	./src/main.c:335: case BTN_RELEASED:
	cjne	r2,#0x02,00115$
	cjne	r3,#0x00,00115$
	sjmp	00110$
00102$:
;	./src/main.c:336: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	a,r2
	orl	a,r3
	jnz	00104$
;	./src/main.c:337: state[i] = BTN_DEBOUNCED;
	mov	@r1,#0x01
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00115$
00104$:
;	./src/main.c:339: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:340: break;
;	./src/main.c:341: case BTN_DEBOUNCED:
	sjmp	00115$
00106$:
;	./src/main.c:342: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	a,r2
	orl	a,r3
	jnz	00108$
;	./src/main.c:343: state[i] = BTN_PRESSED;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00115$
00108$:
;	./src/main.c:345: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:346: break;
;	./src/main.c:347: case BTN_PRESSED:
	sjmp	00115$
00110$:
;	./src/main.c:348: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	mov	a,r4
	orl	a,r5
	jnz	00112$
;	./src/main.c:349: state[i] = BTN_PRESSED;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00115$
00112$:
;	./src/main.c:351: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:355: }
00115$:
;	./src/main.c:357: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_state
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,r2
	orl	a,r3
	jnz	00120$
	mov	a,r4
	add	a,#_prestate
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	cjne	r4,#0x02,00120$
	cjne	r5,#0x00,00120$
;	./src/main.c:358: if (i < 10){
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00117$
;	./src/main.c:359: sequence(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_sequence
	pop	ar6
	pop	ar7
;	./src/main.c:360: display[0] = display_seg[i];
	mov	a,r6
	add	a,#_display_seg
	mov	r1,a
	mov	ar5,@r1
	mov	_display,r5
;	./src/main.c:361: draw();
	push	ar7
	push	ar6
	lcall	_draw
	pop	ar6
	pop	ar7
	sjmp	00120$
00117$:
;	./src/main.c:363: func_call(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_func_call
	pop	ar6
	pop	ar7
00120$:
;	./src/main.c:366: prestate[i] = state[i];
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	a,r4
	add	a,#_prestate
	mov	r1,a
	mov	a,r4
	add	a,#_state
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
;	./src/main.c:330: for (int i = 0; i < 14; i++)
	inc	r6
	cjne	r6,#0x00,00204$
	inc	r7
00204$:
;	./src/main.c:369: }
	ljmp	00130$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
