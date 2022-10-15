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
	.globl _Write7219_PARM_2
	.globl _c
	.globl _a
	.globl _flag
	.globl _num2
	.globl _num1
	.globl _patt
	.globl _input
	.globl _states
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
_states::
	.ds 14
_input::
	.ds 16
_patt::
	.ds 1
_num1::
	.ds 2
_num2::
	.ds 2
_flag::
	.ds 2
_a::
	.ds 2
_c::
	.ds 2
_display_seg:
	.ds 12
_Write7219_PARM_2:
	.ds 1
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
;	./src/main.c:63: unsigned char patt = 0x08; // led value
	mov	_patt,#0x08
;	./src/main.c:66: static unsigned char display_seg[] = {
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
	mov	(_display_seg + 0x000a),#0x4f
	mov	(_display_seg + 0x000b),#0x00
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
;	./src/main.c:83: void sendbyte(unsigned char address,unsigned char dat){
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
;	./src/main.c:84: for (a=0;a<8;a++)        //get last 8 bits(address)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00103$:
;	./src/main.c:86: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:87: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:88: address <<= 1;
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
;	./src/main.c:89: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:84: for (a=0;a<8;a++)        //get last 8 bits(address)
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
;	./src/main.c:91: for (a=0;a<8;a++)      //get first 8 bits(data)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00105$:
;	./src/main.c:93: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:94: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:95: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:96: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:91: for (a=0;a<8;a++)      //get first 8 bits(data)
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
;	./src/main.c:98: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:101: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:104: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:106: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/main.c:108: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:106: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/main.c:111: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:115: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:118: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:119: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:120: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:121: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:122: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:123: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:124: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:123: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:129: void draw(void){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	./src/main.c:131: for(i = 1;i < 9;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:132: Write7219(i, display_seg[input[i-1]]);
	mov	ar6,r7
	dec	r6
	mov	a,r6
	add	a,r6
	add	a,#_input
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	dec	r1
	mov	a,r5
	add	a,#_display_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:131: for(i = 1;i < 9;i++){
	inc	r7
	cjne	r7,#0x09,00111$
00111$:
	jc	00102$
;	./src/main.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'scan_row'
;------------------------------------------------------------
;row                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:137: void scan_row(unsigned int row)
;	-----------------------------------------
;	 function scan_row
;	-----------------------------------------
_scan_row:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:139: switch (row)
	clr	c
	mov	a,#0x03
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00107$
	mov	a,r6
	add	a,r6
;	./src/main.c:141: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	./src/main.c:142: OUTPUT1 = 0; // row1 output 0
;	assignBit
	clr	_P0_6
;	./src/main.c:143: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:144: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:145: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:146: break;
;	./src/main.c:147: case 1:
	ret
00102$:
;	./src/main.c:148: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:149: OUTPUT2 = 0; // row2 output 0
;	assignBit
	clr	_P0_5
;	./src/main.c:150: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:151: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:152: break;
;	./src/main.c:153: case 2:
	ret
00103$:
;	./src/main.c:154: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:155: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:156: OUTPUT3 = 0; // row3 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:157: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:158: break;
;	./src/main.c:159: case 3:
	ret
00104$:
;	./src/main.c:160: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:161: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:162: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:163: OUTPUT0 = 0; // row0 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:167: }
00107$:
;	./src/main.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_currINPUT'
;------------------------------------------------------------
;	./src/main.c:171: void read_currINPUT(void)
;	-----------------------------------------
;	 function read_currINPUT
;	-----------------------------------------
_read_currINPUT:
;	./src/main.c:173: for (a = 0; a < 4; a++)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00105$:
;	./src/main.c:175: scan_row(a);
	mov	dpl,_a
	mov	dph,(_a + 1)
	lcall	_scan_row
;	./src/main.c:176: if(a==3)
	mov	a,#0x03
	cjne	a,_a,00121$
	clr	a
	cjne	a,(_a + 1),00121$
	sjmp	00122$
00121$:
	sjmp	00102$
00122$:
;	./src/main.c:177: states[0].currINPUT= INPUT2;
	mov	c,_P0_1
	clr	a
	rlc	a
	mov	r7,a
	mov	r0,#_states
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
	sjmp	00106$
00102$:
;	./src/main.c:179: states[a * 3 + 1].currINPUT = INPUT1;
	mov	a,_a
	mov	b,#0x03
	mul	ab
	inc	a
	add	a,#_states
	mov	r1,a
	mov	c,_P0_0
	clr	a
	rlc	a
	rrc	a
	mov	a,@r1
	mov	acc.0,c
	mov	@r1,a
;	./src/main.c:180: states[a * 3 + 2].currINPUT = INPUT2;
	mov	a,_a
	mov	b,#0x03
	mul	ab
	add	a,#0x02
	add	a,#_states
	mov	r1,a
	mov	c,_P0_1
	clr	a
	rlc	a
	rrc	a
	mov	a,@r1
	mov	acc.0,c
	mov	@r1,a
;	./src/main.c:181: states[a * 3 + 3].currINPUT = INPUT3;
	mov	a,_a
	mov	b,#0x03
	mul	ab
	add	a,#0x03
	add	a,#_states
	mov	r1,a
	mov	c,_P0_2
	clr	a
	rlc	a
	mov	r7,a
	rrc	a
	mov	a,@r1
	mov	acc.0,c
	mov	@r1,a
00106$:
;	./src/main.c:173: for (a = 0; a < 4; a++)
	inc	_a
	clr	a
	cjne	a,_a,00123$
	inc	(_a + 1)
00123$:
	clr	c
	mov	a,_a
	subb	a,#0x04
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00105$
;	./src/main.c:184: states[10].currINPUT = but1;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000a)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:185: states[11].currINPUT = but2;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000b)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:186: states[12].currINPUT = but3;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000c)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:187: states[13].currINPUT = but4;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000d)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:188: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sequence'
;------------------------------------------------------------
;op                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:191: void sequence(unsigned int op){
;	-----------------------------------------
;	 function sequence
;	-----------------------------------------
_sequence:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:192: if(op){
	mov	a,r6
	orl	a,r7
	jz	00104$
;	./src/main.c:193: for(a = 7; a > 0; a--){
	mov	_a,#0x07
	mov	(_a + 1),#0x00
00106$:
;	./src/main.c:194: input[a] = input[a-1];
	mov	a,_a
	add	a,_a
	mov	r6,a
	mov	a,(_a + 1)
	rlc	a
	mov	a,r6
	add	a,#_input
	mov	r1,a
	mov	r7,_a
	dec	r7
	mov	a,r7
	add	a,r7
	add	a,#_input
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
;	./src/main.c:193: for(a = 7; a > 0; a--){
	dec	_a
	mov	a,#0xff
	cjne	a,_a,00131$
	dec	(_a + 1)
00131$:
	mov	a,_a
	orl	a,(_a + 1)
	jnz	00106$
	ret
00104$:
;	./src/main.c:197: for(a = 0; a < 7; a++){
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00108$:
;	./src/main.c:198: input[a] = input[a+1];
	mov	a,_a
	add	a,_a
	mov	r6,a
	mov	a,(_a + 1)
	rlc	a
	mov	a,r6
	add	a,#_input
	mov	r1,a
	mov	r7,_a
	inc	r7
	mov	a,r7
	add	a,r7
	add	a,#_input
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
;	./src/main.c:199: input[a+1] = 11;
	mov	r7,_a
	inc	r7
	mov	a,r7
	add	a,r7
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x0b
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:197: for(a = 0; a < 7; a++){
	inc	_a
	clr	a
	cjne	a,_a,00133$
	inc	(_a + 1)
00133$:
	clr	c
	mov	a,_a
	subb	a,#0x07
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00108$
;	./src/main.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_to_NUM'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;deg                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:205: unsigned int turn_to_NUM(void){
;	-----------------------------------------
;	 function turn_to_NUM
;	-----------------------------------------
_turn_to_NUM:
;	./src/main.c:206: unsigned int num = 0,deg = 1;
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x01
;	./src/main.c:207: for(a=0;a<8;a++){
	clr	a
	mov	r5,a
	mov	_a,a
	mov	(_a + 1),a
00102$:
;	./src/main.c:208: num = num + input[a]*deg;
	mov	a,_a
	add	a,_a
	mov	r2,a
	mov	a,(_a + 1)
	rlc	a
	mov	a,r2
	add	a,#_input
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	dec	r1
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	./src/main.c:209: deg = deg *10;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	./src/main.c:207: for(a=0;a<8;a++){
	inc	_a
	clr	a
	cjne	a,_a,00114$
	inc	(_a + 1)
00114$:
	clr	c
	mov	a,_a
	subb	a,#0x08
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00102$
;	./src/main.c:211: return num;
	mov	dpl,r6
	mov	dph,r7
;	./src/main.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_OP'
;------------------------------------------------------------
;op                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:215: void calculate_OP(unsigned char op){
;	-----------------------------------------
;	 function calculate_OP
;	-----------------------------------------
_calculate_OP:
	mov	r7,dpl
;	./src/main.c:216: switch (op)
	cjne	r7,#0x08,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x10,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x20,00127$
	sjmp	00103$
00127$:
;	./src/main.c:218: case 0x08:
	cjne	r7,#0x40,00107$
	sjmp	00104$
00101$:
;	./src/main.c:219: num1 = num1 + num2;
	mov	a,_num2
	add	a,_num1
	mov	_num1,a
	mov	a,(_num2 + 1)
	addc	a,(_num1 + 1)
	mov	(_num1 + 1),a
;	./src/main.c:220: break;
;	./src/main.c:221: case 0x10:
	ret
00102$:
;	./src/main.c:222: num1 = num1 - num2;
	mov	a,_num1
	clr	c
	subb	a,_num2
	mov	_num1,a
	mov	a,(_num1 + 1)
	subb	a,(_num2 + 1)
	mov	(_num1 + 1),a
;	./src/main.c:223: break;
;	./src/main.c:224: case 0x20:
	ret
00103$:
;	./src/main.c:225: num1 = num1 * num2;
	mov	__mulint_PARM_2,_num2
	mov	(__mulint_PARM_2 + 1),(_num2 + 1)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	__mulint
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:226: break;
;	./src/main.c:227: case 0x40:
	ret
00104$:
;	./src/main.c:228: num1 = num1 / num2;
	mov	__divuint_PARM_2,_num2
	mov	(__divuint_PARM_2 + 1),(_num2 + 1)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	__divuint
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:232: }
00107$:
;	./src/main.c:233: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_to_CHAR'
;------------------------------------------------------------
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:236: void turn_to_CHAR(int n){
;	-----------------------------------------
;	 function turn_to_CHAR
;	-----------------------------------------
_turn_to_CHAR:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:237: for(a=0;a<8;a++){
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00104$:
;	./src/main.c:238: input[a] = n%10;
	mov	a,_a
	add	a,_a
	mov	r4,a
	mov	a,(_a + 1)
	rlc	a
	mov	a,r4
	add	a,#_input
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar1
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar6
	pop	ar7
	mov	@r1,a
	inc	r1
	mov	@r1,b
	dec	r1
;	./src/main.c:239: n = n/10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:240: if(n == 0)
	mov	a,r6
	orl	a,r7
	jz	00106$
;	./src/main.c:237: for(a=0;a<8;a++){
	inc	_a
	clr	a
	cjne	a,_a,00117$
	inc	(_a + 1)
00117$:
	clr	c
	mov	a,_a
	subb	a,#0x08
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00104$
00106$:
;	./src/main.c:243: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'func_call'
;------------------------------------------------------------
;cmd                       Allocated to registers r6 r7 
;op                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:246: void func_call(unsigned int cmd){
;	-----------------------------------------
;	 function func_call
;	-----------------------------------------
_func_call:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:247: switch (cmd)
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
;	./src/main.c:249: case 10:	//op
00101$:
;	./src/main.c:252: if(patt == 0x80)
	mov	a,#0x80
	cjne	a,_patt,00105$
;	./src/main.c:253: patt = 0x08;
	mov	_patt,#0x08
	sjmp	00106$
00105$:
;	./src/main.c:254: else if (patt == 0x00)
	mov	a,_patt
	jnz	00106$
;	./src/main.c:255: patt = 0x08;
	mov	_patt,#0x08
00106$:
;	./src/main.c:256: patt = patt << 1;
	mov	a,_patt
	add	a,acc
;	./src/main.c:257: led = ~patt;
	mov	_patt,a
	cpl	a
	mov	_P1,a
;	./src/main.c:258: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:261: if(flag){
	mov	a,_flag
	orl	a,(_flag + 1)
	jz	00110$
;	./src/main.c:262: num1 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:263: flag = 0;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
	ret
00110$:
;	./src/main.c:265: num2 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num2,dpl
	mov	(_num2 + 1),dph
;	./src/main.c:266: op = patt >> 1;
	mov	a,_patt
	clr	c
	rrc	a
	mov	r7,a
;	./src/main.c:267: if(op == 0x04)
	cjne	r7,#0x04,00108$
;	./src/main.c:268: op = 0x40;
	mov	r7,#0x40
00108$:
;	./src/main.c:269: calculate_OP(op);
	mov	dpl,r7
	lcall	_calculate_OP
;	./src/main.c:270: turn_to_CHAR(num1);
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	_turn_to_CHAR
;	./src/main.c:271: draw();
;	./src/main.c:273: break;
;	./src/main.c:274: case 11:	//back <-
	ljmp	_draw
00112$:
;	./src/main.c:275: sequence(0);
	mov	dptr,#0x0000
	lcall	_sequence
;	./src/main.c:276: draw();
;	./src/main.c:277: break;
;	./src/main.c:278: case 12:	//AC
	ljmp	_draw
00113$:
;	./src/main.c:279: Clean();
;	./src/main.c:280: break;
;	./src/main.c:281: case 13:	//equal=
	ljmp	_Clean
00114$:
;	./src/main.c:282: num2 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num2,dpl
	mov	(_num2 + 1),dph
;	./src/main.c:283: calculate_OP(patt);
	mov	dpl,_patt
	lcall	_calculate_OP
;	./src/main.c:284: turn_to_CHAR(num1);
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	_turn_to_CHAR
;	./src/main.c:285: draw();
;	./src/main.c:289: }
;	./src/main.c:290: }
	ljmp	_draw
;------------------------------------------------------------
;Allocation info for local variables in function 'Clean'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:293: void Clean(void){
;	-----------------------------------------
;	 function Clean
;	-----------------------------------------
_Clean:
;	./src/main.c:295: for(i = 1; i < 9; i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:296: input[i-1] = 11;
	mov	ar6,r7
	dec	r6
	mov	a,r6
	add	a,r6
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x0b
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:297: Write7219(i,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:295: for(i = 1; i < 9; i++){
	inc	r7
	cjne	r7,#0x09,00115$
00115$:
	jc	00102$
;	./src/main.c:299: Write7219(0x01,0x08);
	mov	_Write7219_PARM_2,#0x08
	mov	dpl,#0x01
	lcall	_Write7219
;	./src/main.c:300: flag = 1;
	mov	_flag,#0x01
	mov	(_flag + 1),#0x00
;	./src/main.c:301: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:304: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:307: Initial();
	lcall	_Initial
;	./src/main.c:308: for (a = 0; a < 14; a++)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00126$:
;	./src/main.c:310: states[a].currINPUT = LEVEL_HIGH;
	mov	a,_a
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	./src/main.c:311: states[a].currState = BTN_RELEASED;
	mov	a,_a
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:312: states[a].prevState = BTN_RELEASED;
	mov	a,_a
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xe7
	mov	@r0,a
;	./src/main.c:308: for (a = 0; a < 14; a++)
	inc	_a
	clr	a
	cjne	a,_a,00189$
	inc	(_a + 1)
00189$:
	clr	c
	mov	a,_a
	subb	a,#0x0e
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00126$
;	./src/main.c:314: Clean();
	lcall	_Clean
;	./src/main.c:316: while(1)
00124$:
;	./src/main.c:318: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:320: read_currINPUT();
	lcall	_read_currINPUT
;	./src/main.c:321: for (unsigned int i = 0; i < 14; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x0e
	mov	a,r7
	subb	a,#0x00
	jnc	00124$
;	./src/main.c:324: switch (states[i].currState)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	rr	a
	anl	a,#0x03
	mov	r5,a
	jz	00102$
	cjne	r5,#0x01,00193$
	sjmp	00106$
00193$:
;	./src/main.c:326: case BTN_RELEASED:
	cjne	r5,#0x02,00115$
	sjmp	00110$
00102$:
;	./src/main.c:327: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00104$
;	./src/main.c:328: states[i].currState = BTN_DEBOUNCED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x02
	mov	@r0,a
	sjmp	00115$
00104$:
;	./src/main.c:330: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:331: break;
;	./src/main.c:332: case BTN_DEBOUNCED:
	sjmp	00115$
00106$:
;	./src/main.c:333: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00108$
;	./src/main.c:334: states[i].currState = BTN_PRESSED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x04
	mov	@r0,a
	sjmp	00115$
00108$:
;	./src/main.c:336: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:337: break;
;	./src/main.c:338: case BTN_PRESSED:
	sjmp	00115$
00110$:
;	./src/main.c:339: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00112$
;	./src/main.c:340: states[i].currState = BTN_PRESSED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x04
	mov	@r0,a
	sjmp	00115$
00112$:
;	./src/main.c:342: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:346: }
00115$:
;	./src/main.c:348: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED)){
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	anl	a,#0x06
	jnz	00120$
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	swap	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	cjne	r5,#0x02,00120$
;	./src/main.c:349: if (i < 10){
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	subb	a,#0x00
	jnc	00117$
;	./src/main.c:350: sequence(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_sequence
	pop	ar6
	pop	ar7
;	./src/main.c:351: input[0] = i;
	mov	(_input + 0),r6
	mov	(_input + 1),r7
;	./src/main.c:354: draw();
	push	ar7
	push	ar6
	lcall	_draw
	pop	ar6
	pop	ar7
	sjmp	00120$
00117$:
;	./src/main.c:356: func_call(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_func_call
	pop	ar6
	pop	ar7
00120$:
;	./src/main.c:359: states[i].prevState = states[i].currState;
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
;	./src/main.c:321: for (unsigned int i = 0; i < 14; i++)
	inc	r6
	cjne	r6,#0x00,00202$
	inc	r7
00202$:
;	./src/main.c:362: }
	ljmp	00129$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
