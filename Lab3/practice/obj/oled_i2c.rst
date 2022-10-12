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
      00001E                         40 _OLED_SetCursor_PARM_2:
      00001E                         41 	.ds 1
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
      0004ED                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:24: oledSendCommand(0xa8);  //Set MUX Ratio
      0004ED 75 82 A8         [24]  117 	mov	dpl,#0xa8
      0004F0 12 06 64         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:25: oledSendCommand(0x3f);  
      0004F3 75 82 3F         [24]  120 	mov	dpl,#0x3f
      0004F6 12 06 64         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:26: oledSendCommand(0xd3);  //Set Display Offset
      0004F9 75 82 D3         [24]  123 	mov	dpl,#0xd3
      0004FC 12 06 64         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:27: oledSendCommand(0x00);  
      0004FF 75 82 00         [24]  126 	mov	dpl,#0x00
      000502 12 06 64         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:28: oledSendCommand(0x40);  //Set Display Start Line
      000505 75 82 40         [24]  129 	mov	dpl,#0x40
      000508 12 06 64         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:29: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      00050B 75 82 A1         [24]  132 	mov	dpl,#0xa1
      00050E 12 06 64         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:30: oledSendCommand(0xc8);  //Set COM OUTput
      000511 75 82 C8         [24]  135 	mov	dpl,#0xc8
      000514 12 06 64         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:31: oledSendCommand(0xda); 
      000517 75 82 DA         [24]  138 	mov	dpl,#0xda
      00051A 12 06 64         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:32: oledSendCommand(0x12);
      00051D 75 82 12         [24]  141 	mov	dpl,#0x12
      000520 12 06 64         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:33: oledSendCommand(0x81);
      000523 75 82 81         [24]  144 	mov	dpl,#0x81
      000526 12 06 64         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:34: oledSendCommand(0x7f);
      000529 75 82 7F         [24]  147 	mov	dpl,#0x7f
      00052C 12 06 64         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:35: oledSendCommand(0xa4);
      00052F 75 82 A4         [24]  150 	mov	dpl,#0xa4
      000532 12 06 64         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:36: oledSendCommand(0xa6);
      000535 75 82 A6         [24]  153 	mov	dpl,#0xa6
      000538 12 06 64         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:37: oledSendCommand(0xd5);
      00053B 75 82 D5         [24]  156 	mov	dpl,#0xd5
      00053E 12 06 64         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:38: oledSendCommand(0x80);
      000541 75 82 80         [24]  159 	mov	dpl,#0x80
      000544 12 06 64         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:39: oledSendCommand(0x8d);
      000547 75 82 8D         [24]  162 	mov	dpl,#0x8d
      00054A 12 06 64         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:40: oledSendCommand(0x14);
      00054D 75 82 14         [24]  165 	mov	dpl,#0x14
      000550 12 06 64         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:41: oledSendCommand(0xaf);
      000553 75 82 AF         [24]  168 	mov	dpl,#0xaf
      000556 12 06 64         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:43: OLED_Clear();  /* Clear the complete LCD during init */
                                    171 ;	./src/oled_i2c.c:44: }
      000559 02 06 09         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:61: void OLED_DisplayChar(char ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      00055C                        184 _OLED_DisplayChar:
      00055C AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:64: int index=0;
      00055E 7D 00            [12]  187 	mov	r5,#0x00
      000560 7E 00            [12]  188 	mov	r6,#0x00
                                    189 ;	./src/oled_i2c.c:66: if(ch != '\n') {  /* TODO */ 
      000562 BF 0A 01         [24]  190 	cjne	r7,#0x0a,00171$
      000565 22               [24]  191 	ret
      000566                        192 00171$:
                                    193 ;	./src/oled_i2c.c:68: if(ch == '0') index = 0;
      000566 BF 30 06         [24]  194 	cjne	r7,#0x30,00116$
      000569 7D 00            [12]  195 	mov	r5,#0x00
      00056B 7E 00            [12]  196 	mov	r6,#0x00
      00056D 80 2B            [24]  197 	sjmp	00117$
      00056F                        198 00116$:
                                    199 ;	./src/oled_i2c.c:69: else if(ch == 'S') index = 1;
      00056F BF 53 06         [24]  200 	cjne	r7,#0x53,00113$
      000572 7D 01            [12]  201 	mov	r5,#0x01
      000574 7E 00            [12]  202 	mov	r6,#0x00
      000576 80 22            [24]  203 	sjmp	00117$
      000578                        204 00113$:
                                    205 ;	./src/oled_i2c.c:70: else if(ch == 'T') index = 2;
      000578 BF 54 06         [24]  206 	cjne	r7,#0x54,00110$
      00057B 7D 02            [12]  207 	mov	r5,#0x02
      00057D 7E 00            [12]  208 	mov	r6,#0x00
      00057F 80 19            [24]  209 	sjmp	00117$
      000581                        210 00110$:
                                    211 ;	./src/oled_i2c.c:71: else if(ch == 'A') index = 3;
      000581 BF 41 06         [24]  212 	cjne	r7,#0x41,00107$
      000584 7D 03            [12]  213 	mov	r5,#0x03
      000586 7E 00            [12]  214 	mov	r6,#0x00
      000588 80 10            [24]  215 	sjmp	00117$
      00058A                        216 00107$:
                                    217 ;	./src/oled_i2c.c:72: else if(ch == 'R') index = 4;
      00058A BF 52 06         [24]  218 	cjne	r7,#0x52,00104$
      00058D 7D 04            [12]  219 	mov	r5,#0x04
      00058F 7E 00            [12]  220 	mov	r6,#0x00
      000591 80 07            [24]  221 	sjmp	00117$
      000593                        222 00104$:
                                    223 ;	./src/oled_i2c.c:73: else if(ch == ' ') index = 5;
      000593 BF 20 04         [24]  224 	cjne	r7,#0x20,00117$
      000596 7D 05            [12]  225 	mov	r5,#0x05
      000598 7E 00            [12]  226 	mov	r6,#0x00
      00059A                        227 00117$:
                                    228 ;	./src/oled_i2c.c:75: index = index * 5; // As the lookup table starts from Space(0x20)
      00059A 8D 37            [24]  229 	mov	__mulint_PARM_2,r5
      00059C 8E 38            [24]  230 	mov	(__mulint_PARM_2 + 1),r6
      00059E 90 00 05         [24]  231 	mov	dptr,#0x0005
      0005A1 12 06 97         [24]  232 	lcall	__mulint
      0005A4 AE 82            [24]  233 	mov	r6,dpl
      0005A6 AF 83            [24]  234 	mov	r7,dph
                                    235 ;	./src/oled_i2c.c:77: for(i = 0; i < 5; i ++)
      0005A8 7D 00            [12]  236 	mov	r5,#0x00
      0005AA                        237 00121$:
                                    238 ;	./src/oled_i2c.c:78: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0005AA 8E 04            [24]  239 	mov	ar4,r6
      0005AC 8D 03            [24]  240 	mov	ar3,r5
      0005AE EB               [12]  241 	mov	a,r3
      0005AF 2C               [12]  242 	add	a,r4
      0005B0 FC               [12]  243 	mov	r4,a
      0005B1 33               [12]  244 	rlc	a
      0005B2 95 E0            [12]  245 	subb	a,acc
      0005B4 FB               [12]  246 	mov	r3,a
      0005B5 EC               [12]  247 	mov	a,r4
      0005B6 24 3B            [12]  248 	add	a,#_OledFontTable
      0005B8 F5 82            [12]  249 	mov	dpl,a
      0005BA EB               [12]  250 	mov	a,r3
      0005BB 34 07            [12]  251 	addc	a,#(_OledFontTable >> 8)
      0005BD F5 83            [12]  252 	mov	dph,a
      0005BF E4               [12]  253 	clr	a
      0005C0 93               [24]  254 	movc	a,@a+dptr
      0005C1 F5 82            [12]  255 	mov	dpl,a
      0005C3 C0 07            [24]  256 	push	ar7
      0005C5 C0 06            [24]  257 	push	ar6
      0005C7 C0 05            [24]  258 	push	ar5
      0005C9 12 06 70         [24]  259 	lcall	_oledSendData
      0005CC D0 05            [24]  260 	pop	ar5
      0005CE D0 06            [24]  261 	pop	ar6
      0005D0 D0 07            [24]  262 	pop	ar7
                                    263 ;	./src/oled_i2c.c:77: for(i = 0; i < 5; i ++)
      0005D2 0D               [12]  264 	inc	r5
      0005D3 BD 05 00         [24]  265 	cjne	r5,#0x05,00184$
      0005D6                        266 00184$:
      0005D6 40 D2            [24]  267 	jc	00121$
                                    268 ;	./src/oled_i2c.c:80: oledSendData(0x00); /* Display the data and keep track of cursor */
      0005D8 75 82 00         [24]  269 	mov	dpl,#0x00
                                    270 ;	./src/oled_i2c.c:82: }
      0005DB 02 06 70         [24]  271 	ljmp	_oledSendData
                                    272 ;------------------------------------------------------------
                                    273 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    274 ;------------------------------------------------------------
                                    275 ;ptr                       Allocated to registers 
                                    276 ;------------------------------------------------------------
                                    277 ;	./src/oled_i2c.c:102: void OLED_DisplayString(uint8_t *ptr)
                                    278 ;	-----------------------------------------
                                    279 ;	 function OLED_DisplayString
                                    280 ;	-----------------------------------------
      0005DE                        281 _OLED_DisplayString:
      0005DE AD 82            [24]  282 	mov	r5,dpl
      0005E0 AE 83            [24]  283 	mov	r6,dph
      0005E2 AF F0            [24]  284 	mov	r7,b
                                    285 ;	./src/oled_i2c.c:104: while(*ptr)
      0005E4                        286 00101$:
      0005E4 8D 82            [24]  287 	mov	dpl,r5
      0005E6 8E 83            [24]  288 	mov	dph,r6
      0005E8 8F F0            [24]  289 	mov	b,r7
      0005EA 12 06 DD         [24]  290 	lcall	__gptrget
      0005ED FC               [12]  291 	mov	r4,a
      0005EE 60 18            [24]  292 	jz	00104$
                                    293 ;	./src/oled_i2c.c:105: OLED_DisplayChar(*ptr++);
      0005F0 8C 82            [24]  294 	mov	dpl,r4
      0005F2 0D               [12]  295 	inc	r5
      0005F3 BD 00 01         [24]  296 	cjne	r5,#0x00,00116$
      0005F6 0E               [12]  297 	inc	r6
      0005F7                        298 00116$:
      0005F7 C0 07            [24]  299 	push	ar7
      0005F9 C0 06            [24]  300 	push	ar6
      0005FB C0 05            [24]  301 	push	ar5
      0005FD 12 05 5C         [24]  302 	lcall	_OLED_DisplayChar
      000600 D0 05            [24]  303 	pop	ar5
      000602 D0 06            [24]  304 	pop	ar6
      000604 D0 07            [24]  305 	pop	ar7
      000606 80 DC            [24]  306 	sjmp	00101$
      000608                        307 00104$:
                                    308 ;	./src/oled_i2c.c:106: }
      000608 22               [24]  309 	ret
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'OLED_Clear'
                                    312 ;------------------------------------------------------------
                                    313 ;oled_clean_col            Allocated to registers r6 
                                    314 ;oled_clean_page           Allocated to registers r7 
                                    315 ;------------------------------------------------------------
                                    316 ;	./src/oled_i2c.c:118: void OLED_Clear(void)
                                    317 ;	-----------------------------------------
                                    318 ;	 function OLED_Clear
                                    319 ;	-----------------------------------------
      000609                        320 _OLED_Clear:
                                    321 ;	./src/oled_i2c.c:121: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000609 7F 00            [12]  322 	mov	r7,#0x00
      00060B                        323 00105$:
                                    324 ;	./src/oled_i2c.c:122: OLED_SetCursor(oled_clean_page,0);
      00060B 75 1E 00         [24]  325 	mov	_OLED_SetCursor_PARM_2,#0x00
      00060E 8F 82            [24]  326 	mov	dpl,r7
      000610 C0 07            [24]  327 	push	ar7
      000612 12 06 34         [24]  328 	lcall	_OLED_SetCursor
      000615 D0 07            [24]  329 	pop	ar7
                                    330 ;	./src/oled_i2c.c:123: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000617 7E 00            [12]  331 	mov	r6,#0x00
      000619                        332 00103$:
                                    333 ;	./src/oled_i2c.c:124: oledSendData(0);
      000619 75 82 00         [24]  334 	mov	dpl,#0x00
      00061C C0 07            [24]  335 	push	ar7
      00061E C0 06            [24]  336 	push	ar6
      000620 12 06 70         [24]  337 	lcall	_oledSendData
      000623 D0 06            [24]  338 	pop	ar6
      000625 D0 07            [24]  339 	pop	ar7
                                    340 ;	./src/oled_i2c.c:123: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000627 0E               [12]  341 	inc	r6
      000628 BE 80 00         [24]  342 	cjne	r6,#0x80,00123$
      00062B                        343 00123$:
      00062B 40 EC            [24]  344 	jc	00103$
                                    345 ;	./src/oled_i2c.c:121: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      00062D 0F               [12]  346 	inc	r7
      00062E BF 08 00         [24]  347 	cjne	r7,#0x08,00125$
      000631                        348 00125$:
      000631 40 D8            [24]  349 	jc	00105$
                                    350 ;	./src/oled_i2c.c:127: }
      000633 22               [24]  351 	ret
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    354 ;------------------------------------------------------------
                                    355 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    356 ;lineNumber                Allocated to registers r7 
                                    357 ;------------------------------------------------------------
                                    358 ;	./src/oled_i2c.c:143: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    359 ;	-----------------------------------------
                                    360 ;	 function OLED_SetCursor
                                    361 ;	-----------------------------------------
      000634                        362 _OLED_SetCursor:
      000634 AF 82            [24]  363 	mov	r7,dpl
                                    364 ;	./src/oled_i2c.c:145: cursorPosition = cursorPosition + 2;
      000636 AE 1E            [24]  365 	mov	r6,_OLED_SetCursor_PARM_2
      000638 74 02            [12]  366 	mov	a,#0x02
      00063A 2E               [12]  367 	add	a,r6
      00063B F5 1E            [12]  368 	mov	_OLED_SetCursor_PARM_2,a
                                    369 ;	./src/oled_i2c.c:146: oledSendCommand(0x0f&cursorPosition);
      00063D AE 1E            [24]  370 	mov	r6,_OLED_SetCursor_PARM_2
      00063F 74 0F            [12]  371 	mov	a,#0x0f
      000641 5E               [12]  372 	anl	a,r6
      000642 F5 82            [12]  373 	mov	dpl,a
      000644 C0 07            [24]  374 	push	ar7
      000646 C0 06            [24]  375 	push	ar6
      000648 12 06 64         [24]  376 	lcall	_oledSendCommand
      00064B D0 06            [24]  377 	pop	ar6
                                    378 ;	./src/oled_i2c.c:147: oledSendCommand(0x10|(cursorPosition>>4));
      00064D EE               [12]  379 	mov	a,r6
      00064E C4               [12]  380 	swap	a
      00064F 54 0F            [12]  381 	anl	a,#0x0f
      000651 FE               [12]  382 	mov	r6,a
      000652 74 10            [12]  383 	mov	a,#0x10
      000654 4E               [12]  384 	orl	a,r6
      000655 F5 82            [12]  385 	mov	dpl,a
      000657 12 06 64         [24]  386 	lcall	_oledSendCommand
      00065A D0 07            [24]  387 	pop	ar7
                                    388 ;	./src/oled_i2c.c:148: oledSendCommand(0xb0|lineNumber);
      00065C 74 B0            [12]  389 	mov	a,#0xb0
      00065E 4F               [12]  390 	orl	a,r7
      00065F F5 82            [12]  391 	mov	dpl,a
                                    392 ;	./src/oled_i2c.c:149: }
      000661 02 06 64         [24]  393 	ljmp	_oledSendCommand
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'oledSendCommand'
                                    396 ;------------------------------------------------------------
                                    397 ;cmd                       Allocated to registers 
                                    398 ;------------------------------------------------------------
                                    399 ;	./src/oled_i2c.c:154: void oledSendCommand(uint8_t cmd)
                                    400 ;	-----------------------------------------
                                    401 ;	 function oledSendCommand
                                    402 ;	-----------------------------------------
      000664                        403 _oledSendCommand:
      000664 85 82 1C         [24]  404 	mov	_Single_WriteI2C_PARM_3,dpl
                                    405 ;	./src/oled_i2c.c:156: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000667 75 1B 00         [24]  406 	mov	_Single_WriteI2C_PARM_2,#0x00
      00066A 75 82 78         [24]  407 	mov	dpl,#0x78
                                    408 ;	./src/oled_i2c.c:157: }
      00066D 02 02 2A         [24]  409 	ljmp	_Single_WriteI2C
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'oledSendData'
                                    412 ;------------------------------------------------------------
                                    413 ;cmd                       Allocated to registers 
                                    414 ;------------------------------------------------------------
                                    415 ;	./src/oled_i2c.c:159: void oledSendData(uint8_t cmd)
                                    416 ;	-----------------------------------------
                                    417 ;	 function oledSendData
                                    418 ;	-----------------------------------------
      000670                        419 _oledSendData:
      000670 85 82 1C         [24]  420 	mov	_Single_WriteI2C_PARM_3,dpl
                                    421 ;	./src/oled_i2c.c:161: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      000673 75 1B 40         [24]  422 	mov	_Single_WriteI2C_PARM_2,#0x40
      000676 75 82 78         [24]  423 	mov	dpl,#0x78
                                    424 ;	./src/oled_i2c.c:162: }
      000679 02 02 2A         [24]  425 	ljmp	_Single_WriteI2C
                                    426 	.area CSEG    (CODE)
                                    427 	.area CONST   (CODE)
      00073B                        428 _OledFontTable:
      00073B 3E                     429 	.db #0x3e	; 62
      00073C 51                     430 	.db #0x51	; 81	'Q'
      00073D 49                     431 	.db #0x49	; 73	'I'
      00073E 45                     432 	.db #0x45	; 69	'E'
      00073F 3E                     433 	.db #0x3e	; 62
      000740 46                     434 	.db #0x46	; 70	'F'
      000741 49                     435 	.db #0x49	; 73	'I'
      000742 49                     436 	.db #0x49	; 73	'I'
      000743 49                     437 	.db #0x49	; 73	'I'
      000744 31                     438 	.db #0x31	; 49	'1'
      000745 01                     439 	.db #0x01	; 1
      000746 01                     440 	.db #0x01	; 1
      000747 7F                     441 	.db #0x7f	; 127
      000748 01                     442 	.db #0x01	; 1
      000749 01                     443 	.db #0x01	; 1
      00074A 7C                     444 	.db #0x7c	; 124
      00074B 12                     445 	.db #0x12	; 18
      00074C 11                     446 	.db #0x11	; 17
      00074D 12                     447 	.db #0x12	; 18
      00074E 7C                     448 	.db #0x7c	; 124
      00074F 7F                     449 	.db #0x7f	; 127
      000750 09                     450 	.db #0x09	; 9
      000751 19                     451 	.db #0x19	; 25
      000752 29                     452 	.db #0x29	; 41
      000753 46                     453 	.db #0x46	; 70	'F'
      000754 00                     454 	.db #0x00	; 0
      000755 00                     455 	.db #0x00	; 0
      000756 00                     456 	.db #0x00	; 0
      000757 00                     457 	.db #0x00	; 0
      000758 00                     458 	.db #0x00	; 0
                                    459 	.area XINIT   (CODE)
                                    460 	.area CABS    (ABS,CODE)
