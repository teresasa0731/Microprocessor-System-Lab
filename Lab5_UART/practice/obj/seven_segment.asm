;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module seven_segment
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sendbyte_PARM_2
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
	.globl _singledraw_PARM_2
	.globl _Writesingle7219_PARM_3
	.globl _Writesingle7219_PARM_2
	.globl _Write7219_PARM_2
	.globl _sendbyte
	.globl _Write7219
	.globl _Writesingle7219
	.globl _Initial
	.globl _draw
	.globl _singledraw
	.globl _shiftdraw
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
_Write7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_3:
	.ds 1
_singledraw_PARM_2:
	.ds 3
_shiftdraw_shift_65536_38:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftdraw'
;------------------------------------------------------------
;shift                     Allocated with name '_shiftdraw_shift_65536_38'
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/seven_segment.c:99: static char shift = 0;
	mov	_shiftdraw_shift_65536_38,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
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
;	./src/seven_segment.c:6: void sendbyte(unsigned char address, unsigned char dat)
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
;	./src/seven_segment.c:10: for (i=0; i<8; i++) {         // get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/seven_segment.c:11: CLK = 0; 
;	assignBit
	clr	_P2_0
;	./src/seven_segment.c:12: DOUT = (address & 0x80);   // get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/seven_segment.c:13: address <<= 1; 
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/seven_segment.c:14: CLK = 1; 
;	assignBit
	setb	_P2_0
;	./src/seven_segment.c:10: for (i=0; i<8; i++) {         // get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00103$
;	./src/seven_segment.c:17: for (i=0; i<8; i++) {         // get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/seven_segment.c:18: CLK = 0; 
;	assignBit
	clr	_P2_0
;	./src/seven_segment.c:19: DOUT = (dat & 0x80);       // get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/seven_segment.c:20: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/seven_segment.c:21: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/seven_segment.c:17: for (i=0; i<8; i++) {         // get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/seven_segment.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/seven_segment.c:26: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/seven_segment.c:29: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/seven_segment.c:31: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/seven_segment.c:33: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/seven_segment.c:31: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00102$
;	./src/seven_segment.c:36: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/seven_segment.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Writesingle7219'
;------------------------------------------------------------
;address                   Allocated with name '_Writesingle7219_PARM_2'
;dat                       Allocated with name '_Writesingle7219_PARM_3'
;chosen                    Allocated to registers r7 
;cnt                       Allocated to registers 
;------------------------------------------------------------
;	./src/seven_segment.c:40: void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Writesingle7219
;	-----------------------------------------
_Writesingle7219:
	mov	r7,dpl
;	./src/seven_segment.c:43: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/seven_segment.c:45: for(cnt=matrixnum; cnt>chosen; cnt--) { // write data into the selected matrix
	mov	r6,#0x01
00104$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00101$
;	./src/seven_segment.c:46: sendbyte(0x00, 0x00);               // write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/seven_segment.c:45: for(cnt=matrixnum; cnt>chosen; cnt--) { // write data into the selected matrix
	dec	r6
	sjmp	00104$
00101$:
;	./src/seven_segment.c:48: sendbyte(address, dat);             // sent data to chosen led-matrix
	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
	mov	dpl,_Writesingle7219_PARM_2
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/seven_segment.c:50: for (cnt=chosen-1; cnt>=1; cnt--) { 
	dec	r7
00107$:
	cjne	r7,#0x01,00130$
00130$:
	jc	00102$
;	./src/seven_segment.c:51: sendbyte(0x00, 0x00);               // write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/seven_segment.c:50: for (cnt=chosen-1; cnt>=1; cnt--) { 
	dec	r7
	sjmp	00107$
00102$:
;	./src/seven_segment.c:54: LOAD = 1;
;	assignBit
	setb	_P2_1
;	./src/seven_segment.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/seven_segment.c:60: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/seven_segment.c:64: Write7219(SHUT_DOWN, 0x01);         // normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/seven_segment.c:65: Write7219(DISPLAY_TEST, 0x00); 
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/seven_segment.c:66: Write7219(DECODE_MODE, 0xff);       // select non-decode mode
	mov	_Write7219_PARM_2,#0xff
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/seven_segment.c:67: Write7219(SCAN_LIMIT, 0x07);        // use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/seven_segment.c:68: Write7219(INTENSITY, 0x00);         // set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/seven_segment.c:70: for(i=1; i<=8; i++) {
	mov	r7,#0x01
00102$:
;	./src/seven_segment.c:71: Write7219(i, 0x00);             // turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/seven_segment.c:70: for(i=1; i<=8; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/seven_segment.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/seven_segment.c:76: void draw(unsigned char *picture)
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/seven_segment.c:80: for(i=1; i<=8; i++) {
	mov	r4,#0x01
00102$:
;	./src/seven_segment.c:81: Write7219(i, picture[i-1]);
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
;	./src/seven_segment.c:80: for(i=1; i<=8; i++) {
	inc	r4
	mov	a,r4
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/seven_segment.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'singledraw'
;------------------------------------------------------------
;picture                   Allocated with name '_singledraw_PARM_2'
;chosen                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/seven_segment.c:86: void singledraw(unsigned char chosen,unsigned char *picture)
;	-----------------------------------------
;	 function singledraw
;	-----------------------------------------
_singledraw:
	mov	r7,dpl
;	./src/seven_segment.c:90: for(i=1; i<=8; i++) {
	mov	r6,#0x01
00102$:
;	./src/seven_segment.c:91: Writesingle7219(chosen, i, picture[i-1]);
	mov	ar4,r6
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xff,00111$
	dec	r5
00111$:
	mov	a,r4
	add	a,_singledraw_PARM_2
	mov	r4,a
	mov	a,r5
	addc	a,(_singledraw_PARM_2 + 1)
	mov	r5,a
	mov	r3,(_singledraw_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,r6
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_Writesingle7219
	pop	ar6
	pop	ar7
;	./src/seven_segment.c:90: for(i=1; i<=8; i++) {
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/seven_segment.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftdraw'
;------------------------------------------------------------
;shift                     Allocated with name '_shiftdraw_shift_65536_38'
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/seven_segment.c:96: void shiftdraw(unsigned char *picture)
;	-----------------------------------------
;	 function shiftdraw
;	-----------------------------------------
_shiftdraw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/seven_segment.c:101: for(i=8; i>=1; i--) {
	mov	r4,#0x08
00104$:
;	./src/seven_segment.c:102: Writesingle7219(1, i, picture[(shift-i+8) % 8]);
	mov	r2,_shiftdraw_shift_65536_38
	mov	r3,#0x00
	mov	ar0,r4
	mov	r1,#0x00
	mov	a,r2
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,r3
	subb	a,r1
	mov	r3,a
	mov	a,#0x08
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
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
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,r4
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Writesingle7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/seven_segment.c:101: for(i=8; i>=1; i--) {
	dec	r4
	cjne	r4,#0x01,00121$
00121$:
	jnc	00104$
;	./src/seven_segment.c:104: shift += 1;
	mov	a,_shiftdraw_shift_65536_38
	inc	a
;	./src/seven_segment.c:105: if(shift > 8) {
	mov  _shiftdraw_shift_65536_38,a
	add	a,#0xff - 0x08
	jnc	00103$
;	./src/seven_segment.c:106: shift = 0;
	mov	_shiftdraw_shift_65536_38,#0x00
00103$:
;	./src/seven_segment.c:109: delay_ms(1000);
	mov	dptr,#0x03e8
;	./src/seven_segment.c:110: }
	ljmp	_delay_ms
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
