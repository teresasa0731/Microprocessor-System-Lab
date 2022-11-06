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
	.globl _patt1
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
_patt1::
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
	.ds 13
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
;	./src/main.c:63: unsigned char patt = 0x00,patt1 = 0x01; // led value
	mov	_patt,#0x00
;	./src/main.c:63: unsigned int num1,num2,flag = 0;
	mov	_patt1,#0x01
;	./src/main.c:64: unsigned int a,c;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
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
;	1-genFromRTrack replaced	mov	(_display_seg + 0x000b),#0x00
	mov	(_display_seg + 0x000b),a
	mov	(_display_seg + 0x000c),#0x01
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
;	./src/main.c:84: void sendbyte(unsigned char address,unsigned char dat){
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
;	./src/main.c:85: for (a=0;a<8;a++)        //get last 8 bits(address)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00103$:
;	./src/main.c:87: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:88: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:89: address <<= 1;
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
;	./src/main.c:90: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:85: for (a=0;a<8;a++)        //get last 8 bits(address)
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
;	./src/main.c:92: for (a=0;a<8;a++)      //get first 8 bits(data)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00105$:
;	./src/main.c:94: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:95: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:96: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:97: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:92: for (a=0;a<8;a++)      //get first 8 bits(data)
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
;	./src/main.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:102: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:105: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:107: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/main.c:109: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:107: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/main.c:112: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:116: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:119: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:120: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:121: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:122: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:123: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:124: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:125: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:124: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:130: void draw(void){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	./src/main.c:132: for(i = 1;i < 9;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:133: Write7219(i, display_seg[input[i-1]]);
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
;	./src/main.c:132: for(i = 1;i < 9;i++){
	inc	r7
	cjne	r7,#0x09,00111$
00111$:
	jc	00102$
;	./src/main.c:135: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'scan_row'
;------------------------------------------------------------
;row                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:138: void scan_row(unsigned int row)
;	-----------------------------------------
;	 function scan_row
;	-----------------------------------------
_scan_row:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:140: switch (row)
	clr	c
	mov	a,#0x03
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00107$
	mov	a,r6
	add	a,r6
;	./src/main.c:142: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	./src/main.c:143: OUTPUT1 = 0; // row1 output 0
;	assignBit
	clr	_P0_6
;	./src/main.c:144: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:145: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:146: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:147: break;
;	./src/main.c:148: case 1:
	ret
00102$:
;	./src/main.c:149: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:150: OUTPUT2 = 0; // row2 output 0
;	assignBit
	clr	_P0_5
;	./src/main.c:151: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:152: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:153: break;
;	./src/main.c:154: case 2:
	ret
00103$:
;	./src/main.c:155: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:156: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:157: OUTPUT3 = 0; // row3 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:158: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:159: break;
;	./src/main.c:160: case 3:
	ret
00104$:
;	./src/main.c:161: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:162: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:163: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:164: OUTPUT0 = 0; // row0 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:168: }
00107$:
;	./src/main.c:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_currINPUT'
;------------------------------------------------------------
;	./src/main.c:172: void read_currINPUT(void)
;	-----------------------------------------
;	 function read_currINPUT
;	-----------------------------------------
_read_currINPUT:
;	./src/main.c:174: for (a = 0; a < 4; a++)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00105$:
;	./src/main.c:176: scan_row(a);
	mov	dpl,_a
	mov	dph,(_a + 1)
	lcall	_scan_row
;	./src/main.c:177: if(a==3)
	mov	a,#0x03
	cjne	a,_a,00121$
	clr	a
	cjne	a,(_a + 1),00121$
	sjmp	00122$
00121$:
	sjmp	00102$
00122$:
;	./src/main.c:178: states[0].currINPUT= INPUT2;
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
;	./src/main.c:180: states[a * 3 + 1].currINPUT = INPUT1;
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
;	./src/main.c:181: states[a * 3 + 2].currINPUT = INPUT2;
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
;	./src/main.c:182: states[a * 3 + 3].currINPUT = INPUT3;
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
;	./src/main.c:174: for (a = 0; a < 4; a++)
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
;	./src/main.c:185: states[10].currINPUT = but1;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000a)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:186: states[11].currINPUT = but2;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000b)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:187: states[12].currINPUT = but3;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000c)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:188: states[13].currINPUT = but4;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r0,#(_states + 0x000d)
	rrc	a
	mov	a,@r0
	mov	acc.0,c
	mov	@r0,a
;	./src/main.c:189: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sequence'
;------------------------------------------------------------
;op                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:192: void sequence(unsigned int op){
;	-----------------------------------------
;	 function sequence
;	-----------------------------------------
_sequence:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:193: if(op){
	mov	a,r6
	orl	a,r7
	jz	00104$
;	./src/main.c:194: for(a = 7; a > 0; a--){
	mov	_a,#0x07
	mov	(_a + 1),#0x00
00106$:
;	./src/main.c:195: input[a] = input[a-1];
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
;	./src/main.c:194: for(a = 7; a > 0; a--){
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
;	./src/main.c:198: for(a = 0; a < 7; a++){
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00108$:
;	./src/main.c:199: input[a] = input[a+1];
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
;	./src/main.c:200: input[a+1] = 11;
	mov	r7,_a
	inc	r7
	mov	a,r7
	add	a,r7
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x0b
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:198: for(a = 0; a < 7; a++){
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
;	./src/main.c:203: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_to_NUM'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;deg                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:206: unsigned int turn_to_NUM(void){
;	-----------------------------------------
;	 function turn_to_NUM
;	-----------------------------------------
_turn_to_NUM:
;	./src/main.c:208: unsigned int num = 0,deg = 1;
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x01
;	./src/main.c:209: for(a=0;a<8;a++){
	clr	a
	mov	r5,a
	mov	_a,a
	mov	(_a + 1),a
00104$:
;	./src/main.c:210: if(input[a]<10){
	mov	a,_a
	add	a,_a
	mov	r2,a
	mov	a,(_a + 1)
	rlc	a
	mov	a,r2
	add	a,#_input
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	clr	c
	mov	a,r2
	subb	a,#0x0a
	mov	a,r3
	subb	a,#0x00
	jnc	00105$
;	./src/main.c:211: num = num + input[a]*deg;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
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
;	./src/main.c:212: deg = deg *10;
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
00105$:
;	./src/main.c:209: for(a=0;a<8;a++){
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
	jc	00104$
;	./src/main.c:215: return num;
	mov	dpl,r6
	mov	dph,r7
;	./src/main.c:216: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_OP'
;------------------------------------------------------------
;op                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:219: void calculate_OP(unsigned char op){
;	-----------------------------------------
;	 function calculate_OP
;	-----------------------------------------
_calculate_OP:
	mov	r7,dpl
;	./src/main.c:220: switch (op)
	cjne	r7,#0x10,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x20,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x40,00127$
	sjmp	00103$
00127$:
;	./src/main.c:222: case 0x10:
	cjne	r7,#0x80,00107$
	sjmp	00104$
00101$:
;	./src/main.c:223: num1 = num1 + num2;
	mov	a,_num2
	add	a,_num1
	mov	_num1,a
	mov	a,(_num2 + 1)
	addc	a,(_num1 + 1)
	mov	(_num1 + 1),a
;	./src/main.c:224: break;
;	./src/main.c:225: case 0x20:
	ret
00102$:
;	./src/main.c:226: num1 = num1 - num2;
	mov	a,_num1
	clr	c
	subb	a,_num2
	mov	_num1,a
	mov	a,(_num1 + 1)
	subb	a,(_num2 + 1)
	mov	(_num1 + 1),a
;	./src/main.c:227: break;
;	./src/main.c:228: case 0x40:
	ret
00103$:
;	./src/main.c:229: num1 = num1 * num2;
	mov	__mulint_PARM_2,_num2
	mov	(__mulint_PARM_2 + 1),(_num2 + 1)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	__mulint
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:230: break;
;	./src/main.c:231: case 0x80:
	ret
00104$:
;	./src/main.c:232: num1 = num1 / num2;
	mov	__divuint_PARM_2,_num2
	mov	(__divuint_PARM_2 + 1),(_num2 + 1)
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	__divuint
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:236: }
00107$:
;	./src/main.c:237: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_to_CHAR'
;------------------------------------------------------------
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:240: void turn_to_CHAR(int n){
;	-----------------------------------------
;	 function turn_to_CHAR
;	-----------------------------------------
_turn_to_CHAR:
	mov	r6,dpl
;	./src/main.c:241: if(n<0){
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
;	./src/main.c:242: c = 1;
	mov	_c,#0x01
	mov	(_c + 1),#0x00
;	./src/main.c:243: n = n*(-1);
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	sjmp	00103$
00102$:
;	./src/main.c:245: c = 0;
	clr	a
	mov	_c,a
	mov	(_c + 1),a
00103$:
;	./src/main.c:247: for(a = 0;a < 8; a++){
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00109$:
;	./src/main.c:248: input[a] = n % 10;
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
;	./src/main.c:249: n = n/10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:250: if(n == 0){
	mov	a,r6
	orl	a,r7
	jnz	00110$
;	./src/main.c:251: if(c)
	mov	a,_c
	orl	a,(_c + 1)
	jz	00111$
;	./src/main.c:252: input[a+1] = 12;
	mov	r5,_a
	inc	r5
	mov	a,r5
	add	a,r5
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x0c
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:253: break;
	ret
00110$:
;	./src/main.c:247: for(a = 0;a < 8; a++){
	inc	_a
	clr	a
	cjne	a,_a,00132$
	inc	(_a + 1)
00132$:
	clr	c
	mov	a,_a
	subb	a,#0x08
	mov	a,(_a + 1)
	subb	a,#0x00
	jc	00109$
00111$:
;	./src/main.c:257: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'func_call'
;------------------------------------------------------------
;cmd                       Allocated to registers r6 r7 
;op                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:260: void func_call(unsigned int cmd){
;	-----------------------------------------
;	 function func_call
;	-----------------------------------------
_func_call:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:261: switch (cmd)
	cjne	r6,#0x0a,00172$
	cjne	r7,#0x00,00172$
	sjmp	00101$
00172$:
	cjne	r6,#0x0b,00173$
	cjne	r7,#0x00,00173$
	ljmp	00115$
00173$:
	cjne	r6,#0x0c,00174$
	cjne	r7,#0x00,00174$
	ljmp	00116$
00174$:
	cjne	r6,#0x0d,00175$
	cjne	r7,#0x00,00175$
	ljmp	00117$
00175$:
	ret
;	./src/main.c:263: case 10:	//op
00101$:
;	./src/main.c:266: if(patt == 0x80)
	mov	a,#0x80
	cjne	a,_patt,00105$
;	./src/main.c:267: patt = 0x08;
	mov	_patt,#0x08
	sjmp	00106$
00105$:
;	./src/main.c:268: else if (patt == 0x00)
	mov	a,_patt
	jnz	00106$
;	./src/main.c:269: patt = 0x08;
	mov	_patt,#0x08
00106$:
;	./src/main.c:270: patt = patt << 1;
	mov	a,_patt
	add	a,acc
;	./src/main.c:271: led = ~patt;
	mov	_patt,a
	cpl	a
	mov	_P1,a
;	./src/main.c:272: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:275: if(flag && num1 == 0){
	mov	a,_flag
	orl	a,(_flag + 1)
	jz	00108$
	mov	a,_num1
	orl	a,(_num1 + 1)
	jnz	00108$
;	./src/main.c:276: num1 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num1,dpl
	mov	(_num1 + 1),dph
;	./src/main.c:277: flag = 0;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
;	./src/main.c:278: Clean();
	lcall	_Clean
00108$:
;	./src/main.c:280: if(flag && num1 != 0){
	mov	a,_flag
	orl	a,(_flag + 1)
	jnz	00181$
	ret
00181$:
	mov	a,_num1
	orl	a,(_num1 + 1)
	jnz	00182$
	ret
00182$:
;	./src/main.c:281: num2 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num2,dpl
	mov	(_num2 + 1),dph
;	./src/main.c:282: Clean();
	lcall	_Clean
;	./src/main.c:283: op = patt >> 1;
	mov	a,_patt
	clr	c
	rrc	a
	mov	r7,a
;	./src/main.c:284: if(op == 0x08)
	cjne	r7,#0x08,00111$
;	./src/main.c:285: op = 0x80;
	mov	r7,#0x80
00111$:
;	./src/main.c:287: calculate_OP(op);
	mov	dpl,r7
	lcall	_calculate_OP
;	./src/main.c:288: turn_to_CHAR(num1);
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	_turn_to_CHAR
;	./src/main.c:289: draw();
	lcall	_draw
;	./src/main.c:290: Clean();
	lcall	_Clean
;	./src/main.c:291: flag = 0;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
;	./src/main.c:293: break;
;	./src/main.c:294: case 11:	//back <-
	ret
00115$:
;	./src/main.c:295: sequence(0);
	mov	dptr,#0x0000
	lcall	_sequence
;	./src/main.c:296: draw();
;	./src/main.c:297: break;
;	./src/main.c:298: case 12:	//AC
	ljmp	_draw
00116$:
;	./src/main.c:299: Clean();
	lcall	_Clean
;	./src/main.c:300: draw();
	lcall	_draw
;	./src/main.c:301: Write7219(0x01,0x08);
	mov	_Write7219_PARM_2,#0x08
	mov	dpl,#0x01
	lcall	_Write7219
;	./src/main.c:302: num1 = 0;
	clr	a
	mov	_num1,a
	mov	(_num1 + 1),a
;	./src/main.c:303: num2 = 0;
	mov	_num2,a
	mov	(_num2 + 1),a
;	./src/main.c:304: patt = 0x00;
;	1-genFromRTrack replaced	mov	_patt,#0x00
	mov	_patt,a
;	./src/main.c:305: led = ~patt1;
	mov	a,_patt1
	cpl	a
	mov	_P1,a
;	./src/main.c:306: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:307: flag = 0;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
;	./src/main.c:308: break;
;	./src/main.c:309: case 13:	//equal=
	ret
00117$:
;	./src/main.c:310: if(flag){
	mov	a,_flag
	orl	a,(_flag + 1)
	jz	00122$
;	./src/main.c:311: num2 = turn_to_NUM();
	lcall	_turn_to_NUM
	mov	_num2,dpl
	mov	(_num2 + 1),dph
;	./src/main.c:312: Clean();
	lcall	_Clean
;	./src/main.c:313: calculate_OP(patt);
	mov	dpl,_patt
	lcall	_calculate_OP
;	./src/main.c:314: turn_to_CHAR(num1);
	mov	dpl,_num1
	mov	dph,(_num1 + 1)
	lcall	_turn_to_CHAR
;	./src/main.c:315: draw();
	lcall	_draw
;	./src/main.c:316: flag = 0;
	clr	a
	mov	_flag,a
	mov	(_flag + 1),a
;	./src/main.c:321: }
00122$:
;	./src/main.c:322: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clean'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:325: void Clean(void){
;	-----------------------------------------
;	 function Clean
;	-----------------------------------------
_Clean:
;	./src/main.c:327: for(i = 1; i < 9; i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:328: input[i-1] = 11;
	mov	ar6,r7
	dec	r6
	mov	a,r6
	add	a,r6
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x0b
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:327: for(i = 1; i < 9; i++){
	inc	r7
	cjne	r7,#0x09,00111$
00111$:
	jc	00102$
;	./src/main.c:330: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:333: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:336: Initial();
	lcall	_Initial
;	./src/main.c:337: for (a = 0; a < 14; a++)
	clr	a
	mov	_a,a
	mov	(_a + 1),a
00126$:
;	./src/main.c:339: states[a].currINPUT = LEVEL_HIGH;
	mov	a,_a
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	./src/main.c:340: states[a].currState = BTN_RELEASED;
	mov	a,_a
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:341: states[a].prevState = BTN_RELEASED;
	mov	a,_a
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xe7
	mov	@r0,a
;	./src/main.c:337: for (a = 0; a < 14; a++)
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
;	./src/main.c:343: func_call(12);
	mov	dptr,#0x000c
	lcall	_func_call
;	./src/main.c:345: while(1)
00124$:
;	./src/main.c:347: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:349: read_currINPUT();
	lcall	_read_currINPUT
;	./src/main.c:350: for (unsigned int i = 0; i < 14; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x0e
	mov	a,r7
	subb	a,#0x00
	jnc	00124$
;	./src/main.c:353: switch (states[i].currState)
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
;	./src/main.c:355: case BTN_RELEASED:
	cjne	r5,#0x02,00115$
	sjmp	00110$
00102$:
;	./src/main.c:356: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00104$
;	./src/main.c:357: states[i].currState = BTN_DEBOUNCED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x02
	mov	@r0,a
	sjmp	00115$
00104$:
;	./src/main.c:359: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:360: break;
;	./src/main.c:361: case BTN_DEBOUNCED:
	sjmp	00115$
00106$:
;	./src/main.c:362: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00108$
;	./src/main.c:363: states[i].currState = BTN_PRESSED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x04
	mov	@r0,a
	sjmp	00115$
00108$:
;	./src/main.c:365: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:366: break;
;	./src/main.c:367: case BTN_PRESSED:
	sjmp	00115$
00110$:
;	./src/main.c:368: if (states[i].currINPUT == LEVEL_LOW)
	mov	a,r6
	add	a,#_states
	mov	r1,a
	mov	a,@r1
	jb	acc.0,00112$
;	./src/main.c:369: states[i].currState = BTN_PRESSED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	orl	a,#0x04
	mov	@r0,a
	sjmp	00115$
00112$:
;	./src/main.c:371: states[i].currState = BTN_RELEASED;
	mov	a,r6
	add	a,#_states
	mov	r0,a
	mov	a,@r0
	anl	a,#0xf9
	mov	@r0,a
;	./src/main.c:375: }
00115$:
;	./src/main.c:377: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED)){
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
;	./src/main.c:378: if (i < 10){
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	subb	a,#0x00
	jnc	00117$
;	./src/main.c:379: sequence(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_sequence
	pop	ar6
	pop	ar7
;	./src/main.c:380: input[0] = i;
	mov	(_input + 0),r6
	mov	(_input + 1),r7
;	./src/main.c:381: draw();
	push	ar7
	push	ar6
	lcall	_draw
	pop	ar6
	pop	ar7
;	./src/main.c:382: flag = 1;
	mov	_flag,#0x01
	mov	(_flag + 1),#0x00
	sjmp	00120$
00117$:
;	./src/main.c:384: func_call(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_func_call
	pop	ar6
	pop	ar7
00120$:
;	./src/main.c:387: states[i].prevState = states[i].currState;
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
;	./src/main.c:350: for (unsigned int i = 0; i < 14; i++)
	inc	r6
	cjne	r6,#0x00,00202$
	inc	r7
00202$:
;	./src/main.c:390: }
	ljmp	00129$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
