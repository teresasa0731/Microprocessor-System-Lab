                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _OLED_SetCursor_PARM_2
                                     14 	.globl _OLED_Init
                                     15 	.globl _OLED_DisplayChar
                                     16 	.globl _OLED_DisplayString
                                     17 	.globl _OLED_Clear
                                     18 	.globl _OLED_SetCursor
                                     19 	.globl _oledSendCommand
                                     20 	.globl _oledSendData
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; special function bits
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable register banks
                                     33 ;--------------------------------------------------------
                                     34 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         35 	.ds 8
                                     36 ;--------------------------------------------------------
                                     37 ; internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DSEG    (DATA)
      00001A                         40 _OLED_SetCursor_PARM_2:
      00001A                         41 	.ds 1
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable items in internal ram
                                     44 ;--------------------------------------------------------
                                     45 ;--------------------------------------------------------
                                     46 ; indirectly addressable internal ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area ISEG    (DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; absolute internal ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area IABS    (ABS,DATA)
                                     53 	.area IABS    (ABS,DATA)
                                     54 ;--------------------------------------------------------
                                     55 ; bit data
                                     56 ;--------------------------------------------------------
                                     57 	.area BSEG    (BIT)
                                     58 ;--------------------------------------------------------
                                     59 ; paged external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area PSEG    (PAG,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; uninitialized external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XSEG    (XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; absolute external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XABS    (ABS,XDATA)
                                     70 ;--------------------------------------------------------
                                     71 ; initialized external ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area XISEG   (XDATA)
                                     74 	.area HOME    (CODE)
                                     75 	.area GSINIT0 (CODE)
                                     76 	.area GSINIT1 (CODE)
                                     77 	.area GSINIT2 (CODE)
                                     78 	.area GSINIT3 (CODE)
                                     79 	.area GSINIT4 (CODE)
                                     80 	.area GSINIT5 (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area CSEG    (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 	.area GSFINAL (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; Home
                                     93 ;--------------------------------------------------------
                                     94 	.area HOME    (CODE)
                                     95 	.area HOME    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; code
                                     98 ;--------------------------------------------------------
                                     99 	.area CSEG    (CODE)
                                    100 ;------------------------------------------------------------
                                    101 ;Allocation info for local variables in function 'OLED_Init'
                                    102 ;------------------------------------------------------------
                                    103 ;	./src/oled_i2c.c:16: void OLED_Init(void)
                                    104 ;	-----------------------------------------
                                    105 ;	 function OLED_Init
                                    106 ;	-----------------------------------------
      000681                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:24: oledSendCommand(0xa8);  //Set MUX Ratio
      000681 75 82 A8         [24]  117 	mov	dpl,#0xa8
      000684 12 07 C7         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:25: oledSendCommand(0x3f);  
      000687 75 82 3F         [24]  120 	mov	dpl,#0x3f
      00068A 12 07 C7         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:26: oledSendCommand(0xd3);  //Set Display Offset
      00068D 75 82 D3         [24]  123 	mov	dpl,#0xd3
      000690 12 07 C7         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:27: oledSendCommand(0x00);  
      000693 75 82 00         [24]  126 	mov	dpl,#0x00
      000696 12 07 C7         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:28: oledSendCommand(0x40);  //Set Display Start Line
      000699 75 82 40         [24]  129 	mov	dpl,#0x40
      00069C 12 07 C7         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:29: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      00069F 75 82 A1         [24]  132 	mov	dpl,#0xa1
      0006A2 12 07 C7         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:30: oledSendCommand(0xc8);  //Set COM OUTput
      0006A5 75 82 C8         [24]  135 	mov	dpl,#0xc8
      0006A8 12 07 C7         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:31: oledSendCommand(0xda); 
      0006AB 75 82 DA         [24]  138 	mov	dpl,#0xda
      0006AE 12 07 C7         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:32: oledSendCommand(0x12);
      0006B1 75 82 12         [24]  141 	mov	dpl,#0x12
      0006B4 12 07 C7         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:33: oledSendCommand(0x81);
      0006B7 75 82 81         [24]  144 	mov	dpl,#0x81
      0006BA 12 07 C7         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:34: oledSendCommand(0x7f);
      0006BD 75 82 7F         [24]  147 	mov	dpl,#0x7f
      0006C0 12 07 C7         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:35: oledSendCommand(0xa4);
      0006C3 75 82 A4         [24]  150 	mov	dpl,#0xa4
      0006C6 12 07 C7         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:36: oledSendCommand(0xa6);
      0006C9 75 82 A6         [24]  153 	mov	dpl,#0xa6
      0006CC 12 07 C7         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:37: oledSendCommand(0xd5);
      0006CF 75 82 D5         [24]  156 	mov	dpl,#0xd5
      0006D2 12 07 C7         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:38: oledSendCommand(0x80);
      0006D5 75 82 80         [24]  159 	mov	dpl,#0x80
      0006D8 12 07 C7         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:39: oledSendCommand(0x8d);
      0006DB 75 82 8D         [24]  162 	mov	dpl,#0x8d
      0006DE 12 07 C7         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:40: oledSendCommand(0x14);
      0006E1 75 82 14         [24]  165 	mov	dpl,#0x14
      0006E4 12 07 C7         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:41: oledSendCommand(0xaf);
      0006E7 75 82 AF         [24]  168 	mov	dpl,#0xaf
      0006EA 12 07 C7         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:43: OLED_Clear();  /* Clear the complete LCD during init */
                                    171 ;	./src/oled_i2c.c:44: }
      0006ED 02 07 6C         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:61: void OLED_DisplayChar(uint8_t ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      0006F0                        184 _OLED_DisplayChar:
      0006F0 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:66: if(ch!='\n') {  /* TODO */ 
      0006F2 BF 0A 01         [24]  187 	cjne	r7,#0x0a,00124$
      0006F5 22               [24]  188 	ret
      0006F6                        189 00124$:
                                    190 ;	./src/oled_i2c.c:67: index = (ch - 0x20);
      0006F6 7E 00            [12]  191 	mov	r6,#0x00
      0006F8 EF               [12]  192 	mov	a,r7
      0006F9 24 E0            [12]  193 	add	a,#0xe0
      0006FB F5 1B            [12]  194 	mov	__mulint_PARM_2,a
      0006FD EE               [12]  195 	mov	a,r6
      0006FE 34 FF            [12]  196 	addc	a,#0xff
      000700 F5 1C            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:68: index = index * 5; // As the lookup table starts from Space(0x20)
      000702 90 00 05         [24]  199 	mov	dptr,#0x0005
      000705 12 07 FA         [24]  200 	lcall	__mulint
      000708 AE 82            [24]  201 	mov	r6,dpl
      00070A AF 83            [24]  202 	mov	r7,dph
                                    203 ;	./src/oled_i2c.c:70: for(i = 0; i < 5; i ++)
      00070C 7D 00            [12]  204 	mov	r5,#0x00
      00070E                        205 00104$:
                                    206 ;	./src/oled_i2c.c:71: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      00070E 8D 03            [24]  207 	mov	ar3,r5
      000710 7C 00            [12]  208 	mov	r4,#0x00
      000712 EB               [12]  209 	mov	a,r3
      000713 2E               [12]  210 	add	a,r6
      000714 FB               [12]  211 	mov	r3,a
      000715 EC               [12]  212 	mov	a,r4
      000716 3F               [12]  213 	addc	a,r7
      000717 FC               [12]  214 	mov	r4,a
      000718 EB               [12]  215 	mov	a,r3
      000719 24 30            [12]  216 	add	a,#_OledFontTable
      00071B F5 82            [12]  217 	mov	dpl,a
      00071D EC               [12]  218 	mov	a,r4
      00071E 34 09            [12]  219 	addc	a,#(_OledFontTable >> 8)
      000720 F5 83            [12]  220 	mov	dph,a
      000722 E4               [12]  221 	clr	a
      000723 93               [24]  222 	movc	a,@a+dptr
      000724 F5 82            [12]  223 	mov	dpl,a
      000726 C0 07            [24]  224 	push	ar7
      000728 C0 06            [24]  225 	push	ar6
      00072A C0 05            [24]  226 	push	ar5
      00072C 12 07 D3         [24]  227 	lcall	_oledSendData
      00072F D0 05            [24]  228 	pop	ar5
      000731 D0 06            [24]  229 	pop	ar6
      000733 D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:70: for(i = 0; i < 5; i ++)
      000735 0D               [12]  232 	inc	r5
      000736 BD 05 00         [24]  233 	cjne	r5,#0x05,00125$
      000739                        234 00125$:
      000739 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:73: oledSendData(0x00); /* Display the data and keep track of cursor */
      00073B 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:75: }
      00073E 02 07 D3         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:95: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      000741                        249 _OLED_DisplayString:
      000741 AD 82            [24]  250 	mov	r5,dpl
      000743 AE 83            [24]  251 	mov	r6,dph
      000745 AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:97: while(*ptr)
      000747                        254 00101$:
      000747 8D 82            [24]  255 	mov	dpl,r5
      000749 8E 83            [24]  256 	mov	dph,r6
      00074B 8F F0            [24]  257 	mov	b,r7
      00074D 12 08 8D         [24]  258 	lcall	__gptrget
      000750 FC               [12]  259 	mov	r4,a
      000751 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:98: OLED_DisplayChar(*ptr++);
      000753 8C 82            [24]  262 	mov	dpl,r4
      000755 0D               [12]  263 	inc	r5
      000756 BD 00 01         [24]  264 	cjne	r5,#0x00,00116$
      000759 0E               [12]  265 	inc	r6
      00075A                        266 00116$:
      00075A C0 07            [24]  267 	push	ar7
      00075C C0 06            [24]  268 	push	ar6
      00075E C0 05            [24]  269 	push	ar5
      000760 12 06 F0         [24]  270 	lcall	_OLED_DisplayChar
      000763 D0 05            [24]  271 	pop	ar5
      000765 D0 06            [24]  272 	pop	ar6
      000767 D0 07            [24]  273 	pop	ar7
      000769 80 DC            [24]  274 	sjmp	00101$
      00076B                        275 00104$:
                                    276 ;	./src/oled_i2c.c:99: }
      00076B 22               [24]  277 	ret
                                    278 ;------------------------------------------------------------
                                    279 ;Allocation info for local variables in function 'OLED_Clear'
                                    280 ;------------------------------------------------------------
                                    281 ;oled_clean_col            Allocated to registers r6 
                                    282 ;oled_clean_page           Allocated to registers r7 
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/oled_i2c.c:111: void OLED_Clear(void)
                                    285 ;	-----------------------------------------
                                    286 ;	 function OLED_Clear
                                    287 ;	-----------------------------------------
      00076C                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:114: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      00076C 7F 00            [12]  290 	mov	r7,#0x00
      00076E                        291 00105$:
                                    292 ;	./src/oled_i2c.c:115: OLED_SetCursor(oled_clean_page,0);
      00076E 75 1A 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      000771 8F 82            [24]  294 	mov	dpl,r7
      000773 C0 07            [24]  295 	push	ar7
      000775 12 07 97         [24]  296 	lcall	_OLED_SetCursor
      000778 D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:116: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      00077A 7E 00            [12]  299 	mov	r6,#0x00
      00077C                        300 00103$:
                                    301 ;	./src/oled_i2c.c:117: oledSendData(0);
      00077C 75 82 00         [24]  302 	mov	dpl,#0x00
      00077F C0 07            [24]  303 	push	ar7
      000781 C0 06            [24]  304 	push	ar6
      000783 12 07 D3         [24]  305 	lcall	_oledSendData
      000786 D0 06            [24]  306 	pop	ar6
      000788 D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:116: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      00078A 0E               [12]  309 	inc	r6
      00078B BE 80 00         [24]  310 	cjne	r6,#0x80,00123$
      00078E                        311 00123$:
      00078E 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:114: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000790 0F               [12]  314 	inc	r7
      000791 BF 08 00         [24]  315 	cjne	r7,#0x08,00125$
      000794                        316 00125$:
      000794 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:120: }
      000796 22               [24]  319 	ret
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    322 ;------------------------------------------------------------
                                    323 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    324 ;lineNumber                Allocated to registers r7 
                                    325 ;------------------------------------------------------------
                                    326 ;	./src/oled_i2c.c:136: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    327 ;	-----------------------------------------
                                    328 ;	 function OLED_SetCursor
                                    329 ;	-----------------------------------------
      000797                        330 _OLED_SetCursor:
      000797 AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:138: cursorPosition = cursorPosition + 2;
      000799 AE 1A            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      00079B 74 02            [12]  334 	mov	a,#0x02
      00079D 2E               [12]  335 	add	a,r6
      00079E F5 1A            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:139: oledSendCommand(0x0f&cursorPosition);
      0007A0 AE 1A            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      0007A2 74 0F            [12]  339 	mov	a,#0x0f
      0007A4 5E               [12]  340 	anl	a,r6
      0007A5 F5 82            [12]  341 	mov	dpl,a
      0007A7 C0 07            [24]  342 	push	ar7
      0007A9 C0 06            [24]  343 	push	ar6
      0007AB 12 07 C7         [24]  344 	lcall	_oledSendCommand
      0007AE D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:140: oledSendCommand(0x10|(cursorPosition>>4));
      0007B0 EE               [12]  347 	mov	a,r6
      0007B1 C4               [12]  348 	swap	a
      0007B2 54 0F            [12]  349 	anl	a,#0x0f
      0007B4 FE               [12]  350 	mov	r6,a
      0007B5 74 10            [12]  351 	mov	a,#0x10
      0007B7 4E               [12]  352 	orl	a,r6
      0007B8 F5 82            [12]  353 	mov	dpl,a
      0007BA 12 07 C7         [24]  354 	lcall	_oledSendCommand
      0007BD D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:141: oledSendCommand(0xb0|lineNumber);
      0007BF 74 B0            [12]  357 	mov	a,#0xb0
      0007C1 4F               [12]  358 	orl	a,r7
      0007C2 F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:142: }
      0007C4 02 07 C7         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:147: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      0007C7                        371 _oledSendCommand:
      0007C7 85 82 18         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:149: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0007CA 75 17 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      0007CD 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:150: }
      0007D0 02 03 BE         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:152: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      0007D3                        387 _oledSendData:
      0007D3 85 82 18         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:154: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0007D6 75 17 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      0007D9 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:155: }
      0007DC 02 03 BE         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      000930                        396 _OledFontTable:
      000930 00                     397 	.db #0x00	; 0
      000931 00                     398 	.db #0x00	; 0
      000932 00                     399 	.db #0x00	; 0
      000933 00                     400 	.db #0x00	; 0
      000934 00                     401 	.db #0x00	; 0
      000935 00                     402 	.db #0x00	; 0
      000936 00                     403 	.db #0x00	; 0
      000937 2F                     404 	.db #0x2f	; 47
      000938 00                     405 	.db #0x00	; 0
      000939 00                     406 	.db #0x00	; 0
      00093A 00                     407 	.db #0x00	; 0
      00093B 07                     408 	.db #0x07	; 7
      00093C 00                     409 	.db #0x00	; 0
      00093D 07                     410 	.db #0x07	; 7
      00093E 00                     411 	.db #0x00	; 0
      00093F 14                     412 	.db #0x14	; 20
      000940 7F                     413 	.db #0x7f	; 127
      000941 14                     414 	.db #0x14	; 20
      000942 7F                     415 	.db #0x7f	; 127
      000943 14                     416 	.db #0x14	; 20
      000944 24                     417 	.db #0x24	; 36
      000945 2A                     418 	.db #0x2a	; 42
      000946 7F                     419 	.db #0x7f	; 127
      000947 2A                     420 	.db #0x2a	; 42
      000948 12                     421 	.db #0x12	; 18
      000949 23                     422 	.db #0x23	; 35
      00094A 13                     423 	.db #0x13	; 19
      00094B 08                     424 	.db #0x08	; 8
      00094C 64                     425 	.db #0x64	; 100	'd'
      00094D 62                     426 	.db #0x62	; 98	'b'
      00094E 36                     427 	.db #0x36	; 54	'6'
      00094F 49                     428 	.db #0x49	; 73	'I'
      000950 55                     429 	.db #0x55	; 85	'U'
      000951 22                     430 	.db #0x22	; 34
      000952 50                     431 	.db #0x50	; 80	'P'
      000953 00                     432 	.db #0x00	; 0
      000954 05                     433 	.db #0x05	; 5
      000955 03                     434 	.db #0x03	; 3
      000956 00                     435 	.db #0x00	; 0
      000957 00                     436 	.db #0x00	; 0
      000958 00                     437 	.db #0x00	; 0
      000959 1C                     438 	.db #0x1c	; 28
      00095A 22                     439 	.db #0x22	; 34
      00095B 41                     440 	.db #0x41	; 65	'A'
      00095C 00                     441 	.db #0x00	; 0
      00095D 00                     442 	.db #0x00	; 0
      00095E 41                     443 	.db #0x41	; 65	'A'
      00095F 22                     444 	.db #0x22	; 34
      000960 1C                     445 	.db #0x1c	; 28
      000961 00                     446 	.db #0x00	; 0
      000962 14                     447 	.db #0x14	; 20
      000963 08                     448 	.db #0x08	; 8
      000964 3E                     449 	.db #0x3e	; 62
      000965 08                     450 	.db #0x08	; 8
      000966 14                     451 	.db #0x14	; 20
      000967 08                     452 	.db #0x08	; 8
      000968 08                     453 	.db #0x08	; 8
      000969 3E                     454 	.db #0x3e	; 62
      00096A 08                     455 	.db #0x08	; 8
      00096B 08                     456 	.db #0x08	; 8
      00096C 00                     457 	.db #0x00	; 0
      00096D 00                     458 	.db #0x00	; 0
      00096E A0                     459 	.db #0xa0	; 160
      00096F 60                     460 	.db #0x60	; 96
      000970 00                     461 	.db #0x00	; 0
      000971 08                     462 	.db #0x08	; 8
      000972 08                     463 	.db #0x08	; 8
      000973 08                     464 	.db #0x08	; 8
      000974 08                     465 	.db #0x08	; 8
      000975 08                     466 	.db #0x08	; 8
      000976 00                     467 	.db #0x00	; 0
      000977 60                     468 	.db #0x60	; 96
      000978 60                     469 	.db #0x60	; 96
      000979 00                     470 	.db #0x00	; 0
      00097A 00                     471 	.db #0x00	; 0
      00097B 20                     472 	.db #0x20	; 32
      00097C 10                     473 	.db #0x10	; 16
      00097D 08                     474 	.db #0x08	; 8
      00097E 04                     475 	.db #0x04	; 4
      00097F 02                     476 	.db #0x02	; 2
      000980 3E                     477 	.db #0x3e	; 62
      000981 51                     478 	.db #0x51	; 81	'Q'
      000982 49                     479 	.db #0x49	; 73	'I'
      000983 45                     480 	.db #0x45	; 69	'E'
      000984 3E                     481 	.db #0x3e	; 62
      000985 00                     482 	.db #0x00	; 0
      000986 42                     483 	.db #0x42	; 66	'B'
      000987 7F                     484 	.db #0x7f	; 127
      000988 40                     485 	.db #0x40	; 64
      000989 00                     486 	.db #0x00	; 0
      00098A 42                     487 	.db #0x42	; 66	'B'
      00098B 61                     488 	.db #0x61	; 97	'a'
      00098C 51                     489 	.db #0x51	; 81	'Q'
      00098D 49                     490 	.db #0x49	; 73	'I'
      00098E 46                     491 	.db #0x46	; 70	'F'
      00098F 21                     492 	.db #0x21	; 33
      000990 41                     493 	.db #0x41	; 65	'A'
      000991 45                     494 	.db #0x45	; 69	'E'
      000992 4B                     495 	.db #0x4b	; 75	'K'
      000993 31                     496 	.db #0x31	; 49	'1'
      000994 18                     497 	.db #0x18	; 24
      000995 14                     498 	.db #0x14	; 20
      000996 12                     499 	.db #0x12	; 18
      000997 7F                     500 	.db #0x7f	; 127
      000998 10                     501 	.db #0x10	; 16
      000999 27                     502 	.db #0x27	; 39
      00099A 45                     503 	.db #0x45	; 69	'E'
      00099B 45                     504 	.db #0x45	; 69	'E'
      00099C 45                     505 	.db #0x45	; 69	'E'
      00099D 39                     506 	.db #0x39	; 57	'9'
      00099E 3C                     507 	.db #0x3c	; 60
      00099F 4A                     508 	.db #0x4a	; 74	'J'
      0009A0 49                     509 	.db #0x49	; 73	'I'
      0009A1 49                     510 	.db #0x49	; 73	'I'
      0009A2 30                     511 	.db #0x30	; 48	'0'
      0009A3 01                     512 	.db #0x01	; 1
      0009A4 71                     513 	.db #0x71	; 113	'q'
      0009A5 09                     514 	.db #0x09	; 9
      0009A6 05                     515 	.db #0x05	; 5
      0009A7 03                     516 	.db #0x03	; 3
      0009A8 36                     517 	.db #0x36	; 54	'6'
      0009A9 49                     518 	.db #0x49	; 73	'I'
      0009AA 49                     519 	.db #0x49	; 73	'I'
      0009AB 49                     520 	.db #0x49	; 73	'I'
      0009AC 36                     521 	.db #0x36	; 54	'6'
      0009AD 06                     522 	.db #0x06	; 6
      0009AE 49                     523 	.db #0x49	; 73	'I'
      0009AF 49                     524 	.db #0x49	; 73	'I'
      0009B0 29                     525 	.db #0x29	; 41
      0009B1 1E                     526 	.db #0x1e	; 30
      0009B2 00                     527 	.db #0x00	; 0
      0009B3 36                     528 	.db #0x36	; 54	'6'
      0009B4 36                     529 	.db #0x36	; 54	'6'
      0009B5 00                     530 	.db #0x00	; 0
      0009B6 00                     531 	.db #0x00	; 0
      0009B7 00                     532 	.db #0x00	; 0
      0009B8 56                     533 	.db #0x56	; 86	'V'
      0009B9 36                     534 	.db #0x36	; 54	'6'
      0009BA 00                     535 	.db #0x00	; 0
      0009BB 00                     536 	.db #0x00	; 0
      0009BC 08                     537 	.db #0x08	; 8
      0009BD 14                     538 	.db #0x14	; 20
      0009BE 22                     539 	.db #0x22	; 34
      0009BF 41                     540 	.db #0x41	; 65	'A'
      0009C0 00                     541 	.db #0x00	; 0
      0009C1 14                     542 	.db #0x14	; 20
      0009C2 14                     543 	.db #0x14	; 20
      0009C3 14                     544 	.db #0x14	; 20
      0009C4 14                     545 	.db #0x14	; 20
      0009C5 14                     546 	.db #0x14	; 20
      0009C6 00                     547 	.db #0x00	; 0
      0009C7 41                     548 	.db #0x41	; 65	'A'
      0009C8 22                     549 	.db #0x22	; 34
      0009C9 14                     550 	.db #0x14	; 20
      0009CA 08                     551 	.db #0x08	; 8
      0009CB 02                     552 	.db #0x02	; 2
      0009CC 01                     553 	.db #0x01	; 1
      0009CD 51                     554 	.db #0x51	; 81	'Q'
      0009CE 09                     555 	.db #0x09	; 9
      0009CF 06                     556 	.db #0x06	; 6
      0009D0 32                     557 	.db #0x32	; 50	'2'
      0009D1 49                     558 	.db #0x49	; 73	'I'
      0009D2 59                     559 	.db #0x59	; 89	'Y'
      0009D3 51                     560 	.db #0x51	; 81	'Q'
      0009D4 3E                     561 	.db #0x3e	; 62
      0009D5 7C                     562 	.db #0x7c	; 124
      0009D6 12                     563 	.db #0x12	; 18
      0009D7 11                     564 	.db #0x11	; 17
      0009D8 12                     565 	.db #0x12	; 18
      0009D9 7C                     566 	.db #0x7c	; 124
      0009DA 7F                     567 	.db #0x7f	; 127
      0009DB 49                     568 	.db #0x49	; 73	'I'
      0009DC 49                     569 	.db #0x49	; 73	'I'
      0009DD 49                     570 	.db #0x49	; 73	'I'
      0009DE 36                     571 	.db #0x36	; 54	'6'
      0009DF 3E                     572 	.db #0x3e	; 62
      0009E0 41                     573 	.db #0x41	; 65	'A'
      0009E1 41                     574 	.db #0x41	; 65	'A'
      0009E2 41                     575 	.db #0x41	; 65	'A'
      0009E3 22                     576 	.db #0x22	; 34
      0009E4 7F                     577 	.db #0x7f	; 127
      0009E5 41                     578 	.db #0x41	; 65	'A'
      0009E6 41                     579 	.db #0x41	; 65	'A'
      0009E7 22                     580 	.db #0x22	; 34
      0009E8 1C                     581 	.db #0x1c	; 28
      0009E9 7F                     582 	.db #0x7f	; 127
      0009EA 49                     583 	.db #0x49	; 73	'I'
      0009EB 49                     584 	.db #0x49	; 73	'I'
      0009EC 49                     585 	.db #0x49	; 73	'I'
      0009ED 41                     586 	.db #0x41	; 65	'A'
      0009EE 7F                     587 	.db #0x7f	; 127
      0009EF 09                     588 	.db #0x09	; 9
      0009F0 09                     589 	.db #0x09	; 9
      0009F1 09                     590 	.db #0x09	; 9
      0009F2 01                     591 	.db #0x01	; 1
      0009F3 3E                     592 	.db #0x3e	; 62
      0009F4 41                     593 	.db #0x41	; 65	'A'
      0009F5 49                     594 	.db #0x49	; 73	'I'
      0009F6 49                     595 	.db #0x49	; 73	'I'
      0009F7 7A                     596 	.db #0x7a	; 122	'z'
      0009F8 7F                     597 	.db #0x7f	; 127
      0009F9 08                     598 	.db #0x08	; 8
      0009FA 08                     599 	.db #0x08	; 8
      0009FB 08                     600 	.db #0x08	; 8
      0009FC 7F                     601 	.db #0x7f	; 127
      0009FD 00                     602 	.db #0x00	; 0
      0009FE 41                     603 	.db #0x41	; 65	'A'
      0009FF 7F                     604 	.db #0x7f	; 127
      000A00 41                     605 	.db #0x41	; 65	'A'
      000A01 00                     606 	.db #0x00	; 0
      000A02 20                     607 	.db #0x20	; 32
      000A03 40                     608 	.db #0x40	; 64
      000A04 41                     609 	.db #0x41	; 65	'A'
      000A05 3F                     610 	.db #0x3f	; 63
      000A06 01                     611 	.db #0x01	; 1
      000A07 7F                     612 	.db #0x7f	; 127
      000A08 08                     613 	.db #0x08	; 8
      000A09 14                     614 	.db #0x14	; 20
      000A0A 22                     615 	.db #0x22	; 34
      000A0B 41                     616 	.db #0x41	; 65	'A'
      000A0C 7F                     617 	.db #0x7f	; 127
      000A0D 40                     618 	.db #0x40	; 64
      000A0E 40                     619 	.db #0x40	; 64
      000A0F 40                     620 	.db #0x40	; 64
      000A10 40                     621 	.db #0x40	; 64
      000A11 7F                     622 	.db #0x7f	; 127
      000A12 02                     623 	.db #0x02	; 2
      000A13 0C                     624 	.db #0x0c	; 12
      000A14 02                     625 	.db #0x02	; 2
      000A15 7F                     626 	.db #0x7f	; 127
      000A16 7F                     627 	.db #0x7f	; 127
      000A17 04                     628 	.db #0x04	; 4
      000A18 08                     629 	.db #0x08	; 8
      000A19 10                     630 	.db #0x10	; 16
      000A1A 7F                     631 	.db #0x7f	; 127
      000A1B 3E                     632 	.db #0x3e	; 62
      000A1C 41                     633 	.db #0x41	; 65	'A'
      000A1D 41                     634 	.db #0x41	; 65	'A'
      000A1E 41                     635 	.db #0x41	; 65	'A'
      000A1F 3E                     636 	.db #0x3e	; 62
      000A20 7F                     637 	.db #0x7f	; 127
      000A21 09                     638 	.db #0x09	; 9
      000A22 09                     639 	.db #0x09	; 9
      000A23 09                     640 	.db #0x09	; 9
      000A24 06                     641 	.db #0x06	; 6
      000A25 3E                     642 	.db #0x3e	; 62
      000A26 41                     643 	.db #0x41	; 65	'A'
      000A27 51                     644 	.db #0x51	; 81	'Q'
      000A28 21                     645 	.db #0x21	; 33
      000A29 5E                     646 	.db #0x5e	; 94
      000A2A 7F                     647 	.db #0x7f	; 127
      000A2B 09                     648 	.db #0x09	; 9
      000A2C 19                     649 	.db #0x19	; 25
      000A2D 29                     650 	.db #0x29	; 41
      000A2E 46                     651 	.db #0x46	; 70	'F'
      000A2F 46                     652 	.db #0x46	; 70	'F'
      000A30 49                     653 	.db #0x49	; 73	'I'
      000A31 49                     654 	.db #0x49	; 73	'I'
      000A32 49                     655 	.db #0x49	; 73	'I'
      000A33 31                     656 	.db #0x31	; 49	'1'
      000A34 01                     657 	.db #0x01	; 1
      000A35 01                     658 	.db #0x01	; 1
      000A36 7F                     659 	.db #0x7f	; 127
      000A37 01                     660 	.db #0x01	; 1
      000A38 01                     661 	.db #0x01	; 1
      000A39 3F                     662 	.db #0x3f	; 63
      000A3A 40                     663 	.db #0x40	; 64
      000A3B 40                     664 	.db #0x40	; 64
      000A3C 40                     665 	.db #0x40	; 64
      000A3D 3F                     666 	.db #0x3f	; 63
      000A3E 1F                     667 	.db #0x1f	; 31
      000A3F 20                     668 	.db #0x20	; 32
      000A40 40                     669 	.db #0x40	; 64
      000A41 20                     670 	.db #0x20	; 32
      000A42 1F                     671 	.db #0x1f	; 31
      000A43 3F                     672 	.db #0x3f	; 63
      000A44 40                     673 	.db #0x40	; 64
      000A45 38                     674 	.db #0x38	; 56	'8'
      000A46 40                     675 	.db #0x40	; 64
      000A47 3F                     676 	.db #0x3f	; 63
      000A48 63                     677 	.db #0x63	; 99	'c'
      000A49 14                     678 	.db #0x14	; 20
      000A4A 08                     679 	.db #0x08	; 8
      000A4B 14                     680 	.db #0x14	; 20
      000A4C 63                     681 	.db #0x63	; 99	'c'
      000A4D 07                     682 	.db #0x07	; 7
      000A4E 08                     683 	.db #0x08	; 8
      000A4F 70                     684 	.db #0x70	; 112	'p'
      000A50 08                     685 	.db #0x08	; 8
      000A51 07                     686 	.db #0x07	; 7
      000A52 61                     687 	.db #0x61	; 97	'a'
      000A53 51                     688 	.db #0x51	; 81	'Q'
      000A54 49                     689 	.db #0x49	; 73	'I'
      000A55 45                     690 	.db #0x45	; 69	'E'
      000A56 43                     691 	.db #0x43	; 67	'C'
      000A57 00                     692 	.db #0x00	; 0
      000A58 7F                     693 	.db #0x7f	; 127
      000A59 41                     694 	.db #0x41	; 65	'A'
      000A5A 41                     695 	.db #0x41	; 65	'A'
      000A5B 00                     696 	.db #0x00	; 0
      000A5C 55                     697 	.db #0x55	; 85	'U'
      000A5D AA                     698 	.db #0xaa	; 170
      000A5E 55                     699 	.db #0x55	; 85	'U'
      000A5F AA                     700 	.db #0xaa	; 170
      000A60 55                     701 	.db #0x55	; 85	'U'
      000A61 00                     702 	.db #0x00	; 0
      000A62 41                     703 	.db #0x41	; 65	'A'
      000A63 41                     704 	.db #0x41	; 65	'A'
      000A64 7F                     705 	.db #0x7f	; 127
      000A65 00                     706 	.db #0x00	; 0
      000A66 04                     707 	.db #0x04	; 4
      000A67 02                     708 	.db #0x02	; 2
      000A68 01                     709 	.db #0x01	; 1
      000A69 02                     710 	.db #0x02	; 2
      000A6A 04                     711 	.db #0x04	; 4
      000A6B 40                     712 	.db #0x40	; 64
      000A6C 40                     713 	.db #0x40	; 64
      000A6D 40                     714 	.db #0x40	; 64
      000A6E 40                     715 	.db #0x40	; 64
      000A6F 40                     716 	.db #0x40	; 64
      000A70 00                     717 	.db #0x00	; 0
      000A71 03                     718 	.db #0x03	; 3
      000A72 05                     719 	.db #0x05	; 5
      000A73 00                     720 	.db #0x00	; 0
      000A74 00                     721 	.db #0x00	; 0
      000A75 20                     722 	.db #0x20	; 32
      000A76 54                     723 	.db #0x54	; 84	'T'
      000A77 54                     724 	.db #0x54	; 84	'T'
      000A78 54                     725 	.db #0x54	; 84	'T'
      000A79 78                     726 	.db #0x78	; 120	'x'
      000A7A 7F                     727 	.db #0x7f	; 127
      000A7B 48                     728 	.db #0x48	; 72	'H'
      000A7C 44                     729 	.db #0x44	; 68	'D'
      000A7D 44                     730 	.db #0x44	; 68	'D'
      000A7E 38                     731 	.db #0x38	; 56	'8'
      000A7F 38                     732 	.db #0x38	; 56	'8'
      000A80 44                     733 	.db #0x44	; 68	'D'
      000A81 44                     734 	.db #0x44	; 68	'D'
      000A82 44                     735 	.db #0x44	; 68	'D'
      000A83 20                     736 	.db #0x20	; 32
      000A84 38                     737 	.db #0x38	; 56	'8'
      000A85 44                     738 	.db #0x44	; 68	'D'
      000A86 44                     739 	.db #0x44	; 68	'D'
      000A87 48                     740 	.db #0x48	; 72	'H'
      000A88 7F                     741 	.db #0x7f	; 127
      000A89 38                     742 	.db #0x38	; 56	'8'
      000A8A 54                     743 	.db #0x54	; 84	'T'
      000A8B 54                     744 	.db #0x54	; 84	'T'
      000A8C 54                     745 	.db #0x54	; 84	'T'
      000A8D 18                     746 	.db #0x18	; 24
      000A8E 08                     747 	.db #0x08	; 8
      000A8F 7E                     748 	.db #0x7e	; 126
      000A90 09                     749 	.db #0x09	; 9
      000A91 01                     750 	.db #0x01	; 1
      000A92 02                     751 	.db #0x02	; 2
      000A93 18                     752 	.db #0x18	; 24
      000A94 A4                     753 	.db #0xa4	; 164
      000A95 A4                     754 	.db #0xa4	; 164
      000A96 A4                     755 	.db #0xa4	; 164
      000A97 7C                     756 	.db #0x7c	; 124
      000A98 7F                     757 	.db #0x7f	; 127
      000A99 08                     758 	.db #0x08	; 8
      000A9A 04                     759 	.db #0x04	; 4
      000A9B 04                     760 	.db #0x04	; 4
      000A9C 78                     761 	.db #0x78	; 120	'x'
      000A9D 00                     762 	.db #0x00	; 0
      000A9E 44                     763 	.db #0x44	; 68	'D'
      000A9F 7D                     764 	.db #0x7d	; 125
      000AA0 40                     765 	.db #0x40	; 64
      000AA1 00                     766 	.db #0x00	; 0
      000AA2 40                     767 	.db #0x40	; 64
      000AA3 80                     768 	.db #0x80	; 128
      000AA4 84                     769 	.db #0x84	; 132
      000AA5 7D                     770 	.db #0x7d	; 125
      000AA6 00                     771 	.db #0x00	; 0
      000AA7 7F                     772 	.db #0x7f	; 127
      000AA8 10                     773 	.db #0x10	; 16
      000AA9 28                     774 	.db #0x28	; 40
      000AAA 44                     775 	.db #0x44	; 68	'D'
      000AAB 00                     776 	.db #0x00	; 0
      000AAC 00                     777 	.db #0x00	; 0
      000AAD 41                     778 	.db #0x41	; 65	'A'
      000AAE 7F                     779 	.db #0x7f	; 127
      000AAF 40                     780 	.db #0x40	; 64
      000AB0 00                     781 	.db #0x00	; 0
      000AB1 7C                     782 	.db #0x7c	; 124
      000AB2 04                     783 	.db #0x04	; 4
      000AB3 18                     784 	.db #0x18	; 24
      000AB4 04                     785 	.db #0x04	; 4
      000AB5 78                     786 	.db #0x78	; 120	'x'
      000AB6 7C                     787 	.db #0x7c	; 124
      000AB7 08                     788 	.db #0x08	; 8
      000AB8 04                     789 	.db #0x04	; 4
      000AB9 04                     790 	.db #0x04	; 4
      000ABA 78                     791 	.db #0x78	; 120	'x'
      000ABB 38                     792 	.db #0x38	; 56	'8'
      000ABC 44                     793 	.db #0x44	; 68	'D'
      000ABD 44                     794 	.db #0x44	; 68	'D'
      000ABE 44                     795 	.db #0x44	; 68	'D'
      000ABF 38                     796 	.db #0x38	; 56	'8'
      000AC0 FC                     797 	.db #0xfc	; 252
      000AC1 24                     798 	.db #0x24	; 36
      000AC2 24                     799 	.db #0x24	; 36
      000AC3 24                     800 	.db #0x24	; 36
      000AC4 18                     801 	.db #0x18	; 24
      000AC5 18                     802 	.db #0x18	; 24
      000AC6 24                     803 	.db #0x24	; 36
      000AC7 24                     804 	.db #0x24	; 36
      000AC8 18                     805 	.db #0x18	; 24
      000AC9 FC                     806 	.db #0xfc	; 252
      000ACA 7C                     807 	.db #0x7c	; 124
      000ACB 08                     808 	.db #0x08	; 8
      000ACC 04                     809 	.db #0x04	; 4
      000ACD 04                     810 	.db #0x04	; 4
      000ACE 08                     811 	.db #0x08	; 8
      000ACF 48                     812 	.db #0x48	; 72	'H'
      000AD0 54                     813 	.db #0x54	; 84	'T'
      000AD1 54                     814 	.db #0x54	; 84	'T'
      000AD2 54                     815 	.db #0x54	; 84	'T'
      000AD3 20                     816 	.db #0x20	; 32
      000AD4 04                     817 	.db #0x04	; 4
      000AD5 3F                     818 	.db #0x3f	; 63
      000AD6 44                     819 	.db #0x44	; 68	'D'
      000AD7 40                     820 	.db #0x40	; 64
      000AD8 20                     821 	.db #0x20	; 32
      000AD9 3C                     822 	.db #0x3c	; 60
      000ADA 40                     823 	.db #0x40	; 64
      000ADB 40                     824 	.db #0x40	; 64
      000ADC 20                     825 	.db #0x20	; 32
      000ADD 7C                     826 	.db #0x7c	; 124
      000ADE 1C                     827 	.db #0x1c	; 28
      000ADF 20                     828 	.db #0x20	; 32
      000AE0 40                     829 	.db #0x40	; 64
      000AE1 20                     830 	.db #0x20	; 32
      000AE2 1C                     831 	.db #0x1c	; 28
      000AE3 3C                     832 	.db #0x3c	; 60
      000AE4 40                     833 	.db #0x40	; 64
      000AE5 30                     834 	.db #0x30	; 48	'0'
      000AE6 40                     835 	.db #0x40	; 64
      000AE7 3C                     836 	.db #0x3c	; 60
      000AE8 44                     837 	.db #0x44	; 68	'D'
      000AE9 28                     838 	.db #0x28	; 40
      000AEA 10                     839 	.db #0x10	; 16
      000AEB 28                     840 	.db #0x28	; 40
      000AEC 44                     841 	.db #0x44	; 68	'D'
      000AED 1C                     842 	.db #0x1c	; 28
      000AEE A0                     843 	.db #0xa0	; 160
      000AEF A0                     844 	.db #0xa0	; 160
      000AF0 A0                     845 	.db #0xa0	; 160
      000AF1 7C                     846 	.db #0x7c	; 124
      000AF2 44                     847 	.db #0x44	; 68	'D'
      000AF3 64                     848 	.db #0x64	; 100	'd'
      000AF4 54                     849 	.db #0x54	; 84	'T'
      000AF5 4C                     850 	.db #0x4c	; 76	'L'
      000AF6 44                     851 	.db #0x44	; 68	'D'
      000AF7 00                     852 	.db #0x00	; 0
      000AF8 10                     853 	.db #0x10	; 16
      000AF9 7C                     854 	.db #0x7c	; 124
      000AFA 82                     855 	.db #0x82	; 130
      000AFB 00                     856 	.db #0x00	; 0
      000AFC 00                     857 	.db #0x00	; 0
      000AFD 00                     858 	.db #0x00	; 0
      000AFE FF                     859 	.db #0xff	; 255
      000AFF 00                     860 	.db #0x00	; 0
      000B00 00                     861 	.db #0x00	; 0
      000B01 00                     862 	.db #0x00	; 0
      000B02 82                     863 	.db #0x82	; 130
      000B03 7C                     864 	.db #0x7c	; 124
      000B04 10                     865 	.db #0x10	; 16
      000B05 00                     866 	.db #0x00	; 0
      000B06 00                     867 	.db #0x00	; 0
      000B07 06                     868 	.db #0x06	; 6
      000B08 09                     869 	.db #0x09	; 9
      000B09 09                     870 	.db #0x09	; 9
      000B0A 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
