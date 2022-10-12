;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module oled_i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OledFontTable
	.globl _Single_WriteI2C
	.globl _OLED_SetCursor_PARM_2
	.globl _OLED_Init
	.globl _OLED_DisplayChar
	.globl _OLED_DisplayString
	.globl _OLED_Clear
	.globl _OLED_SetCursor
	.globl _oledSendCommand
	.globl _oledSendData
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
_OLED_SetCursor_PARM_2:
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
;Allocation info for local variables in function 'OLED_Init'
;------------------------------------------------------------
;	./src/oled_i2c.c:17: void OLED_Init(void)
;	-----------------------------------------
;	 function OLED_Init
;	-----------------------------------------
_OLED_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
	mov	dpl,#0xa8
	lcall	_oledSendCommand
;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
	mov	dpl,#0x3f
	lcall	_oledSendCommand
;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
	mov	dpl,#0xd3
	lcall	_oledSendCommand
;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
	mov	dpl,#0x00
	lcall	_oledSendCommand
;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
	mov	dpl,#0x40
	lcall	_oledSendCommand
;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
	mov	dpl,#0xa1
	lcall	_oledSendCommand
;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
	mov	dpl,#0xc8
	lcall	_oledSendCommand
;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
	mov	dpl,#0xda
	lcall	_oledSendCommand
;	./src/oled_i2c.c:27: oledSendCommand(0x12);
	mov	dpl,#0x12
	lcall	_oledSendCommand
;	./src/oled_i2c.c:28: oledSendCommand(0x81);
	mov	dpl,#0x81
	lcall	_oledSendCommand
;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
	mov	dpl,#0x7f
	lcall	_oledSendCommand
;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
	mov	dpl,#0xa4
	lcall	_oledSendCommand
;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
	mov	dpl,#0xa6
	lcall	_oledSendCommand
;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
	mov	dpl,#0xd5
	lcall	_oledSendCommand
;	./src/oled_i2c.c:33: oledSendCommand(0x80);
	mov	dpl,#0x80
	lcall	_oledSendCommand
;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
	mov	dpl,#0x8d
	lcall	_oledSendCommand
;	./src/oled_i2c.c:35: oledSendCommand(0x14);
	mov	dpl,#0x14
	lcall	_oledSendCommand
;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
	mov	dpl,#0xaf
	lcall	_oledSendCommand
;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
;	./src/oled_i2c.c:39: }
	ljmp	_OLED_Clear
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_DisplayChar'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;i                         Allocated to registers r5 
;index                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
;	-----------------------------------------
;	 function OLED_DisplayChar
;	-----------------------------------------
_OLED_DisplayChar:
	mov	r7,dpl
;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
	cjne	r7,#0x0a,00124$
	ret
00124$:
;	./src/oled_i2c.c:57: index = (ch - 0x20);
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xe0
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
	mov	r5,#0x00
00104$:
;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	r3,a
	mov	a,r4
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_OledFontTable
	mov	dpl,a
	mov	a,r4
	addc	a,#(_OledFontTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
	inc	r5
	cjne	r5,#0x05,00125$
00125$:
	jc	00104$
;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
	mov	dpl,#0x00
;	./src/oled_i2c.c:65: }
	ljmp	_oledSendData
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_DisplayString'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
;	-----------------------------------------
;	 function OLED_DisplayString
;	-----------------------------------------
_OLED_DisplayString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/oled_i2c.c:83: while(*ptr)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_OLED_DisplayChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	./src/oled_i2c.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_Clear'
;------------------------------------------------------------
;oled_clean_col            Allocated to registers r6 
;oled_clean_page           Allocated to registers r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:96: void OLED_Clear(void)
;	-----------------------------------------
;	 function OLED_Clear
;	-----------------------------------------
_OLED_Clear:
;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
	mov	r7,#0x00
00105$:
;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_OLED_SetCursor
	pop	ar7
;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
	mov	r6,#0x00
00103$:
;	./src/oled_i2c.c:102: oledSendData(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
	inc	r6
	cjne	r6,#0x80,00123$
00123$:
	jc	00103$
;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/oled_i2c.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_SetCursor'
;------------------------------------------------------------
;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
;lineNumber                Allocated to registers r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:122: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
;	-----------------------------------------
;	 function OLED_SetCursor
;	-----------------------------------------
_OLED_SetCursor:
	mov	r7,dpl
;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
	mov	r6,_OLED_SetCursor_PARM_2
	mov	a,#0x02
	add	a,r6
	mov	_OLED_SetCursor_PARM_2,a
;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
	mov	r6,_OLED_SetCursor_PARM_2
	mov	a,#0x0f
	anl	a,r6
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_oledSendCommand
	pop	ar6
;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	mov	a,#0x10
	orl	a,r6
	mov	dpl,a
	lcall	_oledSendCommand
	pop	ar7
;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
	mov	a,#0xb0
	orl	a,r7
	mov	dpl,a
;	./src/oled_i2c.c:128: }
	ljmp	_oledSendCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSendCommand'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
;	-----------------------------------------
;	 function oledSendCommand
;	-----------------------------------------
_oledSendCommand:
	mov	_Single_WriteI2C_PARM_3,dpl
;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
	mov	_Single_WriteI2C_PARM_2,#0x00
	mov	dpl,#0x78
;	./src/oled_i2c.c:136: }
	ljmp	_Single_WriteI2C
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSendData'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
;	-----------------------------------------
;	 function oledSendData
;	-----------------------------------------
_oledSendData:
	mov	_Single_WriteI2C_PARM_3,dpl
;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
	mov	_Single_WriteI2C_PARM_2,#0x40
	mov	dpl,#0x78
;	./src/oled_i2c.c:141: }
	ljmp	_Single_WriteI2C
	.area CSEG    (CODE)
	.area CONST   (CODE)
_OledFontTable:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x59	; 89	'Y'
	.db #0x51	; 81	'Q'
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x18	; 24
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x1c	; 28
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
