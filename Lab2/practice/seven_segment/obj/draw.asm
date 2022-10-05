;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module draw
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _Writesingle7219
	.globl _Write7219
	.globl _singledraw_PARM_2
	.globl _Initial
	.globl _draw
	.globl _singledraw
	.globl _shiftdraw
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_singledraw_PARM_2:
	.ds 3
_shiftdraw_snakeshift_65536_21:
	.ds 38
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/draw.c:6: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/draw.c:10: Write7219(SHUT_DOWN, 0x01); // normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/draw.c:11: Write7219(DISPLAY_TEST, 0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/draw.c:12: Write7219(DECODE_MODE, 0x00); // select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/draw.c:13: Write7219(SCAN_LIMIT, 0x07);  // use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/draw.c:14: Write7219(INTENSITY, 0x00);   // set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/draw.c:16: for (i = 1; i <= 8; i++)
	mov	r7,#0x01
00102$:
;	./src/draw.c:18: Write7219(i, 0x00); // turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/draw.c:16: for (i = 1; i <= 8; i++)
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/draw.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/draw.c:23: void draw(unsigned char *picture)
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/draw.c:27: for (i = 1; i <= 8; i++)
	mov	r4,#0x01
00102$:
;	./src/draw.c:29: Write7219(i, picture[i - 1]);
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
;	./src/draw.c:27: for (i = 1; i <= 8; i++)
	inc	r4
	mov	a,r4
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/draw.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'singledraw'
;------------------------------------------------------------
;picture                   Allocated with name '_singledraw_PARM_2'
;chosen                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/draw.c:34: void singledraw(unsigned char chosen, unsigned char *picture)
;	-----------------------------------------
;	 function singledraw
;	-----------------------------------------
_singledraw:
	mov	r7,dpl
;	./src/draw.c:38: for (i = 1; i <= 8; i++)
	mov	r6,#0x01
00102$:
;	./src/draw.c:40: Writesingle7219(chosen, i, picture[i - 1]);
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
;	./src/draw.c:38: for (i = 1; i <= 8; i++)
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/draw.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftdraw'
;------------------------------------------------------------
;picture                   Allocated to registers r5 r6 r7 
;snakeshift                Allocated with name '_shiftdraw_snakeshift_65536_21'
;j                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	./src/draw.c:45: void shiftdraw(unsigned char *picture)
;	-----------------------------------------
;	 function shiftdraw
;	-----------------------------------------
_shiftdraw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/draw.c:49: int snakeshift[] = {8, 7, 6, 5, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8};
	mov	(_shiftdraw_snakeshift_65536_21 + 0),#0x08
	mov	(_shiftdraw_snakeshift_65536_21 + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0002) + 0),#0x07
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0002) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0004) + 0),#0x06
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0004) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0006) + 0),#0x05
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0006) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0008) + 0),#0x04
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0008) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x000a) + 0),#0x03
	mov	((_shiftdraw_snakeshift_65536_21 + 0x000a) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x000c) + 0),#0x02
	mov	((_shiftdraw_snakeshift_65536_21 + 0x000c) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x000e) + 0),#0x01
	mov	((_shiftdraw_snakeshift_65536_21 + 0x000e) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0010) + 0),#0x01
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0010) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0012) + 0),#0x01
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0012) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0014) + 0),#0x02
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0014) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0016) + 0),#0x03
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0016) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0018) + 0),#0x04
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0018) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x001a) + 0),#0x05
	mov	((_shiftdraw_snakeshift_65536_21 + 0x001a) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x001c) + 0),#0x06
	mov	((_shiftdraw_snakeshift_65536_21 + 0x001c) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x001e) + 0),#0x07
	mov	((_shiftdraw_snakeshift_65536_21 + 0x001e) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0020) + 0),#0x08
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0020) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0022) + 0),#0x08
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0022) + 1),#0x00
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0024) + 0),#0x08
	mov	((_shiftdraw_snakeshift_65536_21 + 0x0024) + 1),#0x00
;	./src/draw.c:51: for(int j=0;j<20;j++){
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,#0x14
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	./src/draw.c:57: Writesingle7219(1,2, picture[1]);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,#0x02
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Writesingle7219
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/draw.c:51: for(int j=0;j<20;j++){
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00101$:
;	./src/draw.c:71: delay_ms(1000);
	mov	dptr,#0x03e8
;	./src/draw.c:72: }
	ljmp	_delay_ms
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
