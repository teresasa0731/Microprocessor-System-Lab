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
	.globl _func_cal
	.globl _sequence
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
	.globl _display_seg
	.globl _Writesingle7219_PARM_3
	.globl _Writesingle7219_PARM_2
	.globl _Write7219_PARM_2
	.globl _patt
	.globl _display
	.globl _prestate
	.globl _state
	.globl _curINPUT
	.globl _sendbyte
	.globl _Write7219
	.globl _Writesingle7219
	.globl _Initial
	.globl _draw
	.globl _scan_row
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
	.ds 20
_state::
	.ds 20
_prestate::
	.ds 20
_display::
	.ds 8
_patt::
	.ds 1
_Write7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_3:
	.ds 1
_display_seg::
	.ds 11
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
;	./src/main.c:48: unsigned char patt = 0x80; // led value
	mov	_patt,#0x80
;	./src/main.c:211: unsigned char display_seg[] = {
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
;	./src/main.c:53: for (i=0;i<8;i++)        //get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/main.c:55: CLK=0;
;	assignBit
	clr	_P2_0
;	./src/main.c:56: DIN=(address&0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:57: address<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/main.c:58: CLK=1;
;	assignBit
	setb	_P2_0
;	./src/main.c:53: for (i=0;i<8;i++)        //get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00103$
;	./src/main.c:60: for (i=0;i<8;i++)      //get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/main.c:62: CLK=0;
;	assignBit
	clr	_P2_0
;	./src/main.c:63: DIN=(dat&0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:64: dat<<=1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:65: CLK=1;
;	assignBit
	setb	_P2_0
;	./src/main.c:60: for (i=0;i<8;i++)      //get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/main.c:67: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:70: void Write7219(unsigned char address,unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:73: LOAD=0;
;	assignBit
	clr	_P2_1
;	./src/main.c:74: for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/main.c:76: sendbyte(address,dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:74: for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/main.c:78: LOAD=1;                              //after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Writesingle7219'
;------------------------------------------------------------
;address                   Allocated with name '_Writesingle7219_PARM_2'
;dat                       Allocated with name '_Writesingle7219_PARM_3'
;chosen                    Allocated to registers r7 
;cnt                       Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:82: void Writesingle7219(unsigned char chosen,unsigned char address,unsigned char dat)
;	-----------------------------------------
;	 function Writesingle7219
;	-----------------------------------------
_Writesingle7219:
	mov	r7,dpl
;	./src/main.c:85: LOAD=0;
;	assignBit
	clr	_P2_1
;	./src/main.c:86: for(cnt=matrixnum;cnt>chosen;cnt--)   //write data into the selected matrix
	mov	r6,#0x01
00104$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00101$
;	./src/main.c:88: sendbyte(0x00,0x00); //write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:86: for(cnt=matrixnum;cnt>chosen;cnt--)   //write data into the selected matrix
	dec	r6
	sjmp	00104$
00101$:
;	./src/main.c:90: sendbyte(address, dat); //sent data to chosen led-matrix
	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
	mov	dpl,_Writesingle7219_PARM_2
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/main.c:92: for (cnt=chosen-1;cnt>=1; cnt--)
	dec	r7
00107$:
	cjne	r7,#0x01,00130$
00130$:
	jc	00102$
;	./src/main.c:94: sendbyte(0x00,0x00); //write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/main.c:92: for (cnt=chosen-1;cnt>=1; cnt--)
	dec	r7
	sjmp	00107$
00102$:
;	./src/main.c:96: LOAD=1;
;	assignBit
	setb	_P2_1
;	./src/main.c:97: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:100: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:103: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:104: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:105: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:106: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:107: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:108: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:109: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:108: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/main.c:114: void draw(unsigned char *picture){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/main.c:116: for(i=1;i<=8;i++){
	mov	r4,#0x01
00102$:
;	./src/main.c:117: Write7219(i,picture[i-1]);
	mov	ar2,r4
	mov	r3,#0x00
	dec	r2
	cjne	r2,#0xff,00111$
	dec	r3
00111$:
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	_Write7219_PARM_2,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Write7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:116: for(i=1;i<=8;i++){
	inc	r4
	mov	a,r4
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'scan_row'
;------------------------------------------------------------
;row                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:121: void scan_row(unsigned int row)
;	-----------------------------------------
;	 function scan_row
;	-----------------------------------------
_scan_row:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:123: switch (row)
	clr	c
	mov	a,#0x03
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00107$
	mov	a,r6
	add	a,r6
;	./src/main.c:125: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	./src/main.c:126: OUTPUT1 = 0; // row1 output 0
;	assignBit
	clr	_P0_6
;	./src/main.c:127: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:128: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:129: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:130: break;
;	./src/main.c:131: case 1:
	ret
00102$:
;	./src/main.c:132: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:133: OUTPUT2 = 0; // row2 output 0
;	assignBit
	clr	_P0_5
;	./src/main.c:134: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:135: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:136: break;
;	./src/main.c:137: case 2:
	ret
00103$:
;	./src/main.c:138: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:139: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:140: OUTPUT3 = 0; // row3 output 0
;	assignBit
	clr	_P0_4
;	./src/main.c:141: OUTPUT0 = 1; // row0 output 1
;	assignBit
	setb	_P0_3
;	./src/main.c:142: break;
;	./src/main.c:143: case 3:
	ret
00104$:
;	./src/main.c:144: OUTPUT1 = 1; // row1 output 1
;	assignBit
	setb	_P0_6
;	./src/main.c:145: OUTPUT2 = 1; // row2 output 1
;	assignBit
	setb	_P0_5
;	./src/main.c:146: OUTPUT3 = 1; // row3 output 1
;	assignBit
	setb	_P0_4
;	./src/main.c:147: OUTPUT0 = 0; // row0 output 0
;	assignBit
	clr	_P0_3
;	./src/main.c:151: }
00107$:
;	./src/main.c:152: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_curINPUT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:154: void read_curINPUT(void)
;	-----------------------------------------
;	 function read_curINPUT
;	-----------------------------------------
_read_curINPUT:
;	./src/main.c:156: for (int i = 0; i < 4; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	./src/main.c:158: scan_row(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_scan_row
	pop	ar6
	pop	ar7
;	./src/main.c:159: curINPUT[i * 3 + 0] = INPUT1;
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
;	./src/main.c:160: curINPUT[i * 3 + 1] = INPUT2;
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
;	./src/main.c:161: curINPUT[i * 3 + 2] = INPUT3;
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
;	./src/main.c:162: if(i==3)
	cjne	r6,#0x03,00106$
	cjne	r7,#0x00,00106$
;	./src/main.c:163: curINPUT[9] = INPUT2;
	mov	c,_P0_1
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	mov	((_curINPUT + 0x0012) + 0),r4
	mov	((_curINPUT + 0x0012) + 1),r5
00106$:
;	./src/main.c:156: for (int i = 0; i < 4; i++)
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00107$:
;	./src/main.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sequence'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:168: void sequence(void){
;	-----------------------------------------
;	 function sequence
;	-----------------------------------------
_sequence:
;	./src/main.c:169: for(int a = 7; a > 0; a--){
	mov	r6,#0x07
	mov	r7,#0x00
00103$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	./src/main.c:170: display[a] = display[a-1];
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
;	./src/main.c:169: for(int a = 7; a > 0; a--){
	dec	r6
	cjne	r6,#0xff,00117$
	dec	r7
00117$:
	sjmp	00103$
00101$:
;	./src/main.c:172: patt = 0x00;
	mov	_patt,#0x00
;	./src/main.c:173: delay_ms(100);
	mov	dptr,#0x0064
;	./src/main.c:176: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'func_cal'
;------------------------------------------------------------
;command                   Allocated to registers r6 r7 
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:178: void func_cal(unsigned int command){
;	-----------------------------------------
;	 function func_cal
;	-----------------------------------------
_func_cal:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:179: switch (command)
	clr	c
	mov	a,#0x06
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00114$
	mov	a,r6
	add	a,r6
;	./src/main.c:197: for(int a = 0; a <8; a++)
	mov	dptr,#00131$
	jmp	@a+dptr
00131$:
	sjmp	00114$
	sjmp	00114$
	sjmp	00114$
	sjmp	00114$
	sjmp	00114$
	sjmp	00119$
	sjmp	00114$
00119$:
	mov	r6,#0x00
	mov	r7,#0x00
00112$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	./src/main.c:198: display[a] = 0x00;
	mov	a,r6
	add	a,#_display
	mov	r0,a
	mov	@r0,#0x00
;	./src/main.c:197: for(int a = 0; a <8; a++)
	inc	r6
	cjne	r6,#0x00,00112$
	inc	r7
	sjmp	00112$
00107$:
;	./src/main.c:199: Writesingle7219(1,0x01,0x08);
	mov	_Writesingle7219_PARM_2,#0x01
	mov	_Writesingle7219_PARM_3,#0x08
	mov	dpl,#0x01
;	./src/main.c:206: }
;	./src/main.c:207: }
	ljmp	_Writesingle7219
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:229: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:232: Initial();
	lcall	_Initial
;	./src/main.c:233: for (int i = 0; i < 10; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00123$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	./src/main.c:235: curINPUT[i] = LEVEL_HIGH;
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
;	./src/main.c:236: state[i] = BTN_RELEASED;
	mov	a,r4
	add	a,#_state
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:237: prestate[i] = BTN_RELEASED;
	mov	a,r4
	add	a,#_prestate
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:233: for (int i = 0; i < 10; i++)
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
	sjmp	00123$
00101$:
;	./src/main.c:239: func_cal(5);
	mov	dptr,#0x0005
	lcall	_func_cal
;	./src/main.c:241: while(1)
00120$:
;	./src/main.c:243: delay_ms(20);
	mov	dptr,#0x0014
	lcall	_delay_ms
;	./src/main.c:245: read_curINPUT();
	lcall	_read_curINPUT
;	./src/main.c:246: for (int i = 0; i < 10; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00126$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00120$
;	./src/main.c:249: switch (state[i])
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
	cjne	r2,#0x00,00186$
	cjne	r3,#0x00,00186$
	sjmp	00102$
00186$:
	cjne	r2,#0x01,00187$
	cjne	r3,#0x00,00187$
	sjmp	00105$
00187$:
;	./src/main.c:251: case BTN_RELEASED:
	cjne	r2,#0x02,00114$
	cjne	r3,#0x00,00114$
	sjmp	00109$
00102$:
;	./src/main.c:252: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	a,r2
	orl	a,r3
	jnz	00114$
;	./src/main.c:253: state[i] = BTN_DEBOUNCED;
	mov	@r1,#0x01
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:254: break;
;	./src/main.c:255: case BTN_DEBOUNCED:
	sjmp	00114$
00105$:
;	./src/main.c:256: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	a,r2
	orl	a,r3
	jnz	00107$
;	./src/main.c:257: state[i] = BTN_PRESSED;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00114$
00107$:
;	./src/main.c:259: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:260: break;
;	./src/main.c:261: case BTN_PRESSED:
	sjmp	00114$
00109$:
;	./src/main.c:262: if (curINPUT[i] == LEVEL_LOW)
	mov	a,r4
	add	a,#_curINPUT
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	mov	a,r4
	orl	a,r5
	jnz	00111$
;	./src/main.c:263: state[i] = BTN_PRESSED;
	mov	@r1,#0x02
	inc	r1
	mov	@r1,#0x00
	dec	r1
	sjmp	00114$
00111$:
;	./src/main.c:265: state[i] = BTN_RELEASED;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	./src/main.c:269: }
00114$:
;	./src/main.c:271: if (((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED))){
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
	jnz	00116$
	mov	a,r4
	add	a,#_prestate
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	cjne	r4,#0x02,00116$
	cjne	r5,#0x00,00116$
;	./src/main.c:272: sequence();
	push	ar7
	push	ar6
	lcall	_sequence
	pop	ar6
	pop	ar7
;	./src/main.c:273: display[0] = display_seg[i];
	mov	a,r6
	add	a,#_display_seg
	mov	r1,a
	mov	ar5,@r1
	mov	_display,r5
;	./src/main.c:274: draw(display);
	mov	dptr,#_display
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_draw
	pop	ar6
	pop	ar7
00116$:
;	./src/main.c:277: prestate[i] = state[i];
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
;	./src/main.c:246: for (int i = 0; i < 10; i++)
	inc	r6
	cjne	r6,#0x00,00195$
	inc	r7
00195$:
;	./src/main.c:282: }
	ljmp	00126$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
