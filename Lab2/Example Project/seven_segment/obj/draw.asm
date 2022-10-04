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
_shiftdraw_shift_65536_21:
	.ds 1
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
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftdraw'
;------------------------------------------------------------
;shift                     Allocated with name '_shiftdraw_shift_65536_21'
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/draw.c:45: static char shift = 0;
	mov	_shiftdraw_shift_65536_21,#0x00
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
;	./src/draw.c:10: Write7219(SHUT_DOWN, 0x01);         // normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/draw.c:11: Write7219(DISPLAY_TEST, 0x00); 
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/draw.c:12: Write7219(DECODE_MODE, 0x00);       // select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/draw.c:13: Write7219(SCAN_LIMIT, 0x07);        // use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/draw.c:14: Write7219(INTENSITY, 0x00);         // set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/draw.c:16: for(i=1; i<=8; i++) {
	mov	r7,#0x01
00102$:
;	./src/draw.c:17: Write7219(i, 0x00);             // turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/draw.c:16: for(i=1; i<=8; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/draw.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/draw.c:22: void draw(unsigned char *picture)
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/draw.c:26: for(i=1; i<=8; i++) {
	mov	r4,#0x01
00102$:
;	./src/draw.c:27: Write7219(i, picture[i-1]);
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
;	./src/draw.c:26: for(i=1; i<=8; i++) {
	inc	r4
	mov	a,r4
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/draw.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'singledraw'
;------------------------------------------------------------
;picture                   Allocated with name '_singledraw_PARM_2'
;chosen                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/draw.c:32: void singledraw(unsigned char chosen,unsigned char *picture)
;	-----------------------------------------
;	 function singledraw
;	-----------------------------------------
_singledraw:
	mov	r7,dpl
;	./src/draw.c:36: for(i=1; i<=8; i++) {
	mov	r6,#0x01
00102$:
;	./src/draw.c:37: Writesingle7219(chosen, i, picture[i-1]);
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
;	./src/draw.c:36: for(i=1; i<=8; i++) {
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/draw.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shiftdraw'
;------------------------------------------------------------
;shift                     Allocated with name '_shiftdraw_shift_65536_21'
;picture                   Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/draw.c:42: void shiftdraw(unsigned char *picture)
;	-----------------------------------------
;	 function shiftdraw
;	-----------------------------------------
_shiftdraw:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/draw.c:47: for(i=8; i>=1; i--) {
	mov	r4,#0x08
00104$:
;	./src/draw.c:48: Writesingle7219(1, i, picture[(shift-i+8) % 8]);
	mov	r2,_shiftdraw_shift_65536_21
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
;	./src/draw.c:47: for(i=8; i>=1; i--) {
	dec	r4
	cjne	r4,#0x01,00121$
00121$:
	jnc	00104$
;	./src/draw.c:50: shift += 1;
	mov	a,_shiftdraw_shift_65536_21
	inc	a
;	./src/draw.c:51: if(shift > 8) {
	mov  _shiftdraw_shift_65536_21,a
	add	a,#0xff - 0x08
	jnc	00103$
;	./src/draw.c:52: shift = 0;
	mov	_shiftdraw_shift_65536_21,#0x00
00103$:
;	./src/draw.c:55: delay_ms(1000);
	mov	dptr,#0x03e8
;	./src/draw.c:56: }
	ljmp	_delay_ms
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
