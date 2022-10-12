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
      00000B                         40 _OLED_SetCursor_PARM_2:
      00000B                         41 	.ds 1
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
                                    103 ;	./src/oled_i2c.c:17: void OLED_Init(void)
                                    104 ;	-----------------------------------------
                                    105 ;	 function OLED_Init
                                    106 ;	-----------------------------------------
      00028F                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      00028F 75 82 A8         [24]  117 	mov	dpl,#0xa8
      000292 12 03 D5         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      000295 75 82 3F         [24]  120 	mov	dpl,#0x3f
      000298 12 03 D5         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      00029B 75 82 D3         [24]  123 	mov	dpl,#0xd3
      00029E 12 03 D5         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      0002A1 75 82 00         [24]  126 	mov	dpl,#0x00
      0002A4 12 03 D5         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      0002A7 75 82 40         [24]  129 	mov	dpl,#0x40
      0002AA 12 03 D5         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      0002AD 75 82 A1         [24]  132 	mov	dpl,#0xa1
      0002B0 12 03 D5         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      0002B3 75 82 C8         [24]  135 	mov	dpl,#0xc8
      0002B6 12 03 D5         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      0002B9 75 82 DA         [24]  138 	mov	dpl,#0xda
      0002BC 12 03 D5         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      0002BF 75 82 12         [24]  141 	mov	dpl,#0x12
      0002C2 12 03 D5         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      0002C5 75 82 81         [24]  144 	mov	dpl,#0x81
      0002C8 12 03 D5         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      0002CB 75 82 7F         [24]  147 	mov	dpl,#0x7f
      0002CE 12 03 D5         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      0002D1 75 82 A4         [24]  150 	mov	dpl,#0xa4
      0002D4 12 03 D5         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      0002D7 75 82 A6         [24]  153 	mov	dpl,#0xa6
      0002DA 12 03 D5         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      0002DD 75 82 D5         [24]  156 	mov	dpl,#0xd5
      0002E0 12 03 D5         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      0002E3 75 82 80         [24]  159 	mov	dpl,#0x80
      0002E6 12 03 D5         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      0002E9 75 82 8D         [24]  162 	mov	dpl,#0x8d
      0002EC 12 03 D5         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      0002EF 75 82 14         [24]  165 	mov	dpl,#0x14
      0002F2 12 03 D5         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      0002F5 75 82 AF         [24]  168 	mov	dpl,#0xaf
      0002F8 12 03 D5         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    171 ;	./src/oled_i2c.c:39: }
      0002FB 02 03 7A         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      0002FE                        184 _OLED_DisplayChar:
      0002FE AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      000300 BF 0A 01         [24]  187 	cjne	r7,#0x0a,00124$
      000303 22               [24]  188 	ret
      000304                        189 00124$:
                                    190 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      000304 7E 00            [12]  191 	mov	r6,#0x00
      000306 EF               [12]  192 	mov	a,r7
      000307 24 E0            [12]  193 	add	a,#0xe0
      000309 F5 0C            [12]  194 	mov	__mulint_PARM_2,a
      00030B EE               [12]  195 	mov	a,r6
      00030C 34 FF            [12]  196 	addc	a,#0xff
      00030E F5 0D            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
      000310 90 00 05         [24]  199 	mov	dptr,#0x0005
      000313 12 03 ED         [24]  200 	lcall	__mulint
      000316 AE 82            [24]  201 	mov	r6,dpl
      000318 AF 83            [24]  202 	mov	r7,dph
                                    203 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      00031A 7D 00            [12]  204 	mov	r5,#0x00
      00031C                        205 00104$:
                                    206 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      00031C 8D 03            [24]  207 	mov	ar3,r5
      00031E 7C 00            [12]  208 	mov	r4,#0x00
      000320 EB               [12]  209 	mov	a,r3
      000321 2E               [12]  210 	add	a,r6
      000322 FB               [12]  211 	mov	r3,a
      000323 EC               [12]  212 	mov	a,r4
      000324 3F               [12]  213 	addc	a,r7
      000325 FC               [12]  214 	mov	r4,a
      000326 EB               [12]  215 	mov	a,r3
      000327 24 54            [12]  216 	add	a,#_OledFontTable
      000329 F5 82            [12]  217 	mov	dpl,a
      00032B EC               [12]  218 	mov	a,r4
      00032C 34 04            [12]  219 	addc	a,#(_OledFontTable >> 8)
      00032E F5 83            [12]  220 	mov	dph,a
      000330 E4               [12]  221 	clr	a
      000331 93               [24]  222 	movc	a,@a+dptr
      000332 F5 82            [12]  223 	mov	dpl,a
      000334 C0 07            [24]  224 	push	ar7
      000336 C0 06            [24]  225 	push	ar6
      000338 C0 05            [24]  226 	push	ar5
      00033A 12 03 E1         [24]  227 	lcall	_oledSendData
      00033D D0 05            [24]  228 	pop	ar5
      00033F D0 06            [24]  229 	pop	ar6
      000341 D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      000343 0D               [12]  232 	inc	r5
      000344 BD 05 00         [24]  233 	cjne	r5,#0x05,00125$
      000347                        234 00125$:
      000347 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      000349 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:65: }
      00034C 02 03 E1         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      00034F                        249 _OLED_DisplayString:
      00034F AD 82            [24]  250 	mov	r5,dpl
      000351 AE 83            [24]  251 	mov	r6,dph
      000353 AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:83: while(*ptr)
      000355                        254 00101$:
      000355 8D 82            [24]  255 	mov	dpl,r5
      000357 8E 83            [24]  256 	mov	dph,r6
      000359 8F F0            [24]  257 	mov	b,r7
      00035B 12 04 0A         [24]  258 	lcall	__gptrget
      00035E FC               [12]  259 	mov	r4,a
      00035F 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      000361 8C 82            [24]  262 	mov	dpl,r4
      000363 0D               [12]  263 	inc	r5
      000364 BD 00 01         [24]  264 	cjne	r5,#0x00,00116$
      000367 0E               [12]  265 	inc	r6
      000368                        266 00116$:
      000368 C0 07            [24]  267 	push	ar7
      00036A C0 06            [24]  268 	push	ar6
      00036C C0 05            [24]  269 	push	ar5
      00036E 12 02 FE         [24]  270 	lcall	_OLED_DisplayChar
      000371 D0 05            [24]  271 	pop	ar5
      000373 D0 06            [24]  272 	pop	ar6
      000375 D0 07            [24]  273 	pop	ar7
      000377 80 DC            [24]  274 	sjmp	00101$
      000379                        275 00104$:
                                    276 ;	./src/oled_i2c.c:85: }
      000379 22               [24]  277 	ret
                                    278 ;------------------------------------------------------------
                                    279 ;Allocation info for local variables in function 'OLED_Clear'
                                    280 ;------------------------------------------------------------
                                    281 ;oled_clean_col            Allocated to registers r6 
                                    282 ;oled_clean_page           Allocated to registers r7 
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/oled_i2c.c:96: void OLED_Clear(void)
                                    285 ;	-----------------------------------------
                                    286 ;	 function OLED_Clear
                                    287 ;	-----------------------------------------
      00037A                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      00037A 7F 00            [12]  290 	mov	r7,#0x00
      00037C                        291 00105$:
                                    292 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      00037C 75 0B 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      00037F 8F 82            [24]  294 	mov	dpl,r7
      000381 C0 07            [24]  295 	push	ar7
      000383 12 03 A5         [24]  296 	lcall	_OLED_SetCursor
      000386 D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000388 7E 00            [12]  299 	mov	r6,#0x00
      00038A                        300 00103$:
                                    301 ;	./src/oled_i2c.c:102: oledSendData(0);
      00038A 75 82 00         [24]  302 	mov	dpl,#0x00
      00038D C0 07            [24]  303 	push	ar7
      00038F C0 06            [24]  304 	push	ar6
      000391 12 03 E1         [24]  305 	lcall	_oledSendData
      000394 D0 06            [24]  306 	pop	ar6
      000396 D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000398 0E               [12]  309 	inc	r6
      000399 BE 80 00         [24]  310 	cjne	r6,#0x80,00123$
      00039C                        311 00123$:
      00039C 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      00039E 0F               [12]  314 	inc	r7
      00039F BF 08 00         [24]  315 	cjne	r7,#0x08,00125$
      0003A2                        316 00125$:
      0003A2 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:105: }
      0003A4 22               [24]  319 	ret
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    322 ;------------------------------------------------------------
                                    323 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    324 ;lineNumber                Allocated to registers r7 
                                    325 ;------------------------------------------------------------
                                    326 ;	./src/oled_i2c.c:122: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    327 ;	-----------------------------------------
                                    328 ;	 function OLED_SetCursor
                                    329 ;	-----------------------------------------
      0003A5                        330 _OLED_SetCursor:
      0003A5 AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      0003A7 AE 0B            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      0003A9 74 02            [12]  334 	mov	a,#0x02
      0003AB 2E               [12]  335 	add	a,r6
      0003AC F5 0B            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      0003AE AE 0B            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      0003B0 74 0F            [12]  339 	mov	a,#0x0f
      0003B2 5E               [12]  340 	anl	a,r6
      0003B3 F5 82            [12]  341 	mov	dpl,a
      0003B5 C0 07            [24]  342 	push	ar7
      0003B7 C0 06            [24]  343 	push	ar6
      0003B9 12 03 D5         [24]  344 	lcall	_oledSendCommand
      0003BC D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      0003BE EE               [12]  347 	mov	a,r6
      0003BF C4               [12]  348 	swap	a
      0003C0 54 0F            [12]  349 	anl	a,#0x0f
      0003C2 FE               [12]  350 	mov	r6,a
      0003C3 74 10            [12]  351 	mov	a,#0x10
      0003C5 4E               [12]  352 	orl	a,r6
      0003C6 F5 82            [12]  353 	mov	dpl,a
      0003C8 12 03 D5         [24]  354 	lcall	_oledSendCommand
      0003CB D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      0003CD 74 B0            [12]  357 	mov	a,#0xb0
      0003CF 4F               [12]  358 	orl	a,r7
      0003D0 F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:128: }
      0003D2 02 03 D5         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      0003D5                        371 _oledSendCommand:
      0003D5 85 82 09         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0003D8 75 08 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      0003DB 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:136: }
      0003DE 02 02 33         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      0003E1                        387 _oledSendData:
      0003E1 85 82 09         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0003E4 75 08 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      0003E7 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:141: }
      0003EA 02 02 33         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      000454                        396 _OledFontTable:
      000454 00                     397 	.db #0x00	; 0
      000455 00                     398 	.db #0x00	; 0
      000456 00                     399 	.db #0x00	; 0
      000457 00                     400 	.db #0x00	; 0
      000458 00                     401 	.db #0x00	; 0
      000459 00                     402 	.db #0x00	; 0
      00045A 00                     403 	.db #0x00	; 0
      00045B 2F                     404 	.db #0x2f	; 47
      00045C 00                     405 	.db #0x00	; 0
      00045D 00                     406 	.db #0x00	; 0
      00045E 00                     407 	.db #0x00	; 0
      00045F 07                     408 	.db #0x07	; 7
      000460 00                     409 	.db #0x00	; 0
      000461 07                     410 	.db #0x07	; 7
      000462 00                     411 	.db #0x00	; 0
      000463 14                     412 	.db #0x14	; 20
      000464 7F                     413 	.db #0x7f	; 127
      000465 14                     414 	.db #0x14	; 20
      000466 7F                     415 	.db #0x7f	; 127
      000467 14                     416 	.db #0x14	; 20
      000468 24                     417 	.db #0x24	; 36
      000469 2A                     418 	.db #0x2a	; 42
      00046A 7F                     419 	.db #0x7f	; 127
      00046B 2A                     420 	.db #0x2a	; 42
      00046C 12                     421 	.db #0x12	; 18
      00046D 23                     422 	.db #0x23	; 35
      00046E 13                     423 	.db #0x13	; 19
      00046F 08                     424 	.db #0x08	; 8
      000470 64                     425 	.db #0x64	; 100	'd'
      000471 62                     426 	.db #0x62	; 98	'b'
      000472 36                     427 	.db #0x36	; 54	'6'
      000473 49                     428 	.db #0x49	; 73	'I'
      000474 55                     429 	.db #0x55	; 85	'U'
      000475 22                     430 	.db #0x22	; 34
      000476 50                     431 	.db #0x50	; 80	'P'
      000477 00                     432 	.db #0x00	; 0
      000478 05                     433 	.db #0x05	; 5
      000479 03                     434 	.db #0x03	; 3
      00047A 00                     435 	.db #0x00	; 0
      00047B 00                     436 	.db #0x00	; 0
      00047C 00                     437 	.db #0x00	; 0
      00047D 1C                     438 	.db #0x1c	; 28
      00047E 22                     439 	.db #0x22	; 34
      00047F 41                     440 	.db #0x41	; 65	'A'
      000480 00                     441 	.db #0x00	; 0
      000481 00                     442 	.db #0x00	; 0
      000482 41                     443 	.db #0x41	; 65	'A'
      000483 22                     444 	.db #0x22	; 34
      000484 1C                     445 	.db #0x1c	; 28
      000485 00                     446 	.db #0x00	; 0
      000486 14                     447 	.db #0x14	; 20
      000487 08                     448 	.db #0x08	; 8
      000488 3E                     449 	.db #0x3e	; 62
      000489 08                     450 	.db #0x08	; 8
      00048A 14                     451 	.db #0x14	; 20
      00048B 08                     452 	.db #0x08	; 8
      00048C 08                     453 	.db #0x08	; 8
      00048D 3E                     454 	.db #0x3e	; 62
      00048E 08                     455 	.db #0x08	; 8
      00048F 08                     456 	.db #0x08	; 8
      000490 00                     457 	.db #0x00	; 0
      000491 00                     458 	.db #0x00	; 0
      000492 A0                     459 	.db #0xa0	; 160
      000493 60                     460 	.db #0x60	; 96
      000494 00                     461 	.db #0x00	; 0
      000495 08                     462 	.db #0x08	; 8
      000496 08                     463 	.db #0x08	; 8
      000497 08                     464 	.db #0x08	; 8
      000498 08                     465 	.db #0x08	; 8
      000499 08                     466 	.db #0x08	; 8
      00049A 00                     467 	.db #0x00	; 0
      00049B 60                     468 	.db #0x60	; 96
      00049C 60                     469 	.db #0x60	; 96
      00049D 00                     470 	.db #0x00	; 0
      00049E 00                     471 	.db #0x00	; 0
      00049F 20                     472 	.db #0x20	; 32
      0004A0 10                     473 	.db #0x10	; 16
      0004A1 08                     474 	.db #0x08	; 8
      0004A2 04                     475 	.db #0x04	; 4
      0004A3 02                     476 	.db #0x02	; 2
      0004A4 3E                     477 	.db #0x3e	; 62
      0004A5 51                     478 	.db #0x51	; 81	'Q'
      0004A6 49                     479 	.db #0x49	; 73	'I'
      0004A7 45                     480 	.db #0x45	; 69	'E'
      0004A8 3E                     481 	.db #0x3e	; 62
      0004A9 00                     482 	.db #0x00	; 0
      0004AA 42                     483 	.db #0x42	; 66	'B'
      0004AB 7F                     484 	.db #0x7f	; 127
      0004AC 40                     485 	.db #0x40	; 64
      0004AD 00                     486 	.db #0x00	; 0
      0004AE 42                     487 	.db #0x42	; 66	'B'
      0004AF 61                     488 	.db #0x61	; 97	'a'
      0004B0 51                     489 	.db #0x51	; 81	'Q'
      0004B1 49                     490 	.db #0x49	; 73	'I'
      0004B2 46                     491 	.db #0x46	; 70	'F'
      0004B3 21                     492 	.db #0x21	; 33
      0004B4 41                     493 	.db #0x41	; 65	'A'
      0004B5 45                     494 	.db #0x45	; 69	'E'
      0004B6 4B                     495 	.db #0x4b	; 75	'K'
      0004B7 31                     496 	.db #0x31	; 49	'1'
      0004B8 18                     497 	.db #0x18	; 24
      0004B9 14                     498 	.db #0x14	; 20
      0004BA 12                     499 	.db #0x12	; 18
      0004BB 7F                     500 	.db #0x7f	; 127
      0004BC 10                     501 	.db #0x10	; 16
      0004BD 27                     502 	.db #0x27	; 39
      0004BE 45                     503 	.db #0x45	; 69	'E'
      0004BF 45                     504 	.db #0x45	; 69	'E'
      0004C0 45                     505 	.db #0x45	; 69	'E'
      0004C1 39                     506 	.db #0x39	; 57	'9'
      0004C2 3C                     507 	.db #0x3c	; 60
      0004C3 4A                     508 	.db #0x4a	; 74	'J'
      0004C4 49                     509 	.db #0x49	; 73	'I'
      0004C5 49                     510 	.db #0x49	; 73	'I'
      0004C6 30                     511 	.db #0x30	; 48	'0'
      0004C7 01                     512 	.db #0x01	; 1
      0004C8 71                     513 	.db #0x71	; 113	'q'
      0004C9 09                     514 	.db #0x09	; 9
      0004CA 05                     515 	.db #0x05	; 5
      0004CB 03                     516 	.db #0x03	; 3
      0004CC 36                     517 	.db #0x36	; 54	'6'
      0004CD 49                     518 	.db #0x49	; 73	'I'
      0004CE 49                     519 	.db #0x49	; 73	'I'
      0004CF 49                     520 	.db #0x49	; 73	'I'
      0004D0 36                     521 	.db #0x36	; 54	'6'
      0004D1 06                     522 	.db #0x06	; 6
      0004D2 49                     523 	.db #0x49	; 73	'I'
      0004D3 49                     524 	.db #0x49	; 73	'I'
      0004D4 29                     525 	.db #0x29	; 41
      0004D5 1E                     526 	.db #0x1e	; 30
      0004D6 00                     527 	.db #0x00	; 0
      0004D7 36                     528 	.db #0x36	; 54	'6'
      0004D8 36                     529 	.db #0x36	; 54	'6'
      0004D9 00                     530 	.db #0x00	; 0
      0004DA 00                     531 	.db #0x00	; 0
      0004DB 00                     532 	.db #0x00	; 0
      0004DC 56                     533 	.db #0x56	; 86	'V'
      0004DD 36                     534 	.db #0x36	; 54	'6'
      0004DE 00                     535 	.db #0x00	; 0
      0004DF 00                     536 	.db #0x00	; 0
      0004E0 08                     537 	.db #0x08	; 8
      0004E1 14                     538 	.db #0x14	; 20
      0004E2 22                     539 	.db #0x22	; 34
      0004E3 41                     540 	.db #0x41	; 65	'A'
      0004E4 00                     541 	.db #0x00	; 0
      0004E5 14                     542 	.db #0x14	; 20
      0004E6 14                     543 	.db #0x14	; 20
      0004E7 14                     544 	.db #0x14	; 20
      0004E8 14                     545 	.db #0x14	; 20
      0004E9 14                     546 	.db #0x14	; 20
      0004EA 00                     547 	.db #0x00	; 0
      0004EB 41                     548 	.db #0x41	; 65	'A'
      0004EC 22                     549 	.db #0x22	; 34
      0004ED 14                     550 	.db #0x14	; 20
      0004EE 08                     551 	.db #0x08	; 8
      0004EF 02                     552 	.db #0x02	; 2
      0004F0 01                     553 	.db #0x01	; 1
      0004F1 51                     554 	.db #0x51	; 81	'Q'
      0004F2 09                     555 	.db #0x09	; 9
      0004F3 06                     556 	.db #0x06	; 6
      0004F4 32                     557 	.db #0x32	; 50	'2'
      0004F5 49                     558 	.db #0x49	; 73	'I'
      0004F6 59                     559 	.db #0x59	; 89	'Y'
      0004F7 51                     560 	.db #0x51	; 81	'Q'
      0004F8 3E                     561 	.db #0x3e	; 62
      0004F9 7C                     562 	.db #0x7c	; 124
      0004FA 12                     563 	.db #0x12	; 18
      0004FB 11                     564 	.db #0x11	; 17
      0004FC 12                     565 	.db #0x12	; 18
      0004FD 7C                     566 	.db #0x7c	; 124
      0004FE 7F                     567 	.db #0x7f	; 127
      0004FF 49                     568 	.db #0x49	; 73	'I'
      000500 49                     569 	.db #0x49	; 73	'I'
      000501 49                     570 	.db #0x49	; 73	'I'
      000502 36                     571 	.db #0x36	; 54	'6'
      000503 3E                     572 	.db #0x3e	; 62
      000504 41                     573 	.db #0x41	; 65	'A'
      000505 41                     574 	.db #0x41	; 65	'A'
      000506 41                     575 	.db #0x41	; 65	'A'
      000507 22                     576 	.db #0x22	; 34
      000508 7F                     577 	.db #0x7f	; 127
      000509 41                     578 	.db #0x41	; 65	'A'
      00050A 41                     579 	.db #0x41	; 65	'A'
      00050B 22                     580 	.db #0x22	; 34
      00050C 1C                     581 	.db #0x1c	; 28
      00050D 7F                     582 	.db #0x7f	; 127
      00050E 49                     583 	.db #0x49	; 73	'I'
      00050F 49                     584 	.db #0x49	; 73	'I'
      000510 49                     585 	.db #0x49	; 73	'I'
      000511 41                     586 	.db #0x41	; 65	'A'
      000512 7F                     587 	.db #0x7f	; 127
      000513 09                     588 	.db #0x09	; 9
      000514 09                     589 	.db #0x09	; 9
      000515 09                     590 	.db #0x09	; 9
      000516 01                     591 	.db #0x01	; 1
      000517 3E                     592 	.db #0x3e	; 62
      000518 41                     593 	.db #0x41	; 65	'A'
      000519 49                     594 	.db #0x49	; 73	'I'
      00051A 49                     595 	.db #0x49	; 73	'I'
      00051B 7A                     596 	.db #0x7a	; 122	'z'
      00051C 7F                     597 	.db #0x7f	; 127
      00051D 08                     598 	.db #0x08	; 8
      00051E 08                     599 	.db #0x08	; 8
      00051F 08                     600 	.db #0x08	; 8
      000520 7F                     601 	.db #0x7f	; 127
      000521 00                     602 	.db #0x00	; 0
      000522 41                     603 	.db #0x41	; 65	'A'
      000523 7F                     604 	.db #0x7f	; 127
      000524 41                     605 	.db #0x41	; 65	'A'
      000525 00                     606 	.db #0x00	; 0
      000526 20                     607 	.db #0x20	; 32
      000527 40                     608 	.db #0x40	; 64
      000528 41                     609 	.db #0x41	; 65	'A'
      000529 3F                     610 	.db #0x3f	; 63
      00052A 01                     611 	.db #0x01	; 1
      00052B 7F                     612 	.db #0x7f	; 127
      00052C 08                     613 	.db #0x08	; 8
      00052D 14                     614 	.db #0x14	; 20
      00052E 22                     615 	.db #0x22	; 34
      00052F 41                     616 	.db #0x41	; 65	'A'
      000530 7F                     617 	.db #0x7f	; 127
      000531 40                     618 	.db #0x40	; 64
      000532 40                     619 	.db #0x40	; 64
      000533 40                     620 	.db #0x40	; 64
      000534 40                     621 	.db #0x40	; 64
      000535 7F                     622 	.db #0x7f	; 127
      000536 02                     623 	.db #0x02	; 2
      000537 0C                     624 	.db #0x0c	; 12
      000538 02                     625 	.db #0x02	; 2
      000539 7F                     626 	.db #0x7f	; 127
      00053A 7F                     627 	.db #0x7f	; 127
      00053B 04                     628 	.db #0x04	; 4
      00053C 08                     629 	.db #0x08	; 8
      00053D 10                     630 	.db #0x10	; 16
      00053E 7F                     631 	.db #0x7f	; 127
      00053F 3E                     632 	.db #0x3e	; 62
      000540 41                     633 	.db #0x41	; 65	'A'
      000541 41                     634 	.db #0x41	; 65	'A'
      000542 41                     635 	.db #0x41	; 65	'A'
      000543 3E                     636 	.db #0x3e	; 62
      000544 7F                     637 	.db #0x7f	; 127
      000545 09                     638 	.db #0x09	; 9
      000546 09                     639 	.db #0x09	; 9
      000547 09                     640 	.db #0x09	; 9
      000548 06                     641 	.db #0x06	; 6
      000549 3E                     642 	.db #0x3e	; 62
      00054A 41                     643 	.db #0x41	; 65	'A'
      00054B 51                     644 	.db #0x51	; 81	'Q'
      00054C 21                     645 	.db #0x21	; 33
      00054D 5E                     646 	.db #0x5e	; 94
      00054E 7F                     647 	.db #0x7f	; 127
      00054F 09                     648 	.db #0x09	; 9
      000550 19                     649 	.db #0x19	; 25
      000551 29                     650 	.db #0x29	; 41
      000552 46                     651 	.db #0x46	; 70	'F'
      000553 46                     652 	.db #0x46	; 70	'F'
      000554 49                     653 	.db #0x49	; 73	'I'
      000555 49                     654 	.db #0x49	; 73	'I'
      000556 49                     655 	.db #0x49	; 73	'I'
      000557 31                     656 	.db #0x31	; 49	'1'
      000558 01                     657 	.db #0x01	; 1
      000559 01                     658 	.db #0x01	; 1
      00055A 7F                     659 	.db #0x7f	; 127
      00055B 01                     660 	.db #0x01	; 1
      00055C 01                     661 	.db #0x01	; 1
      00055D 3F                     662 	.db #0x3f	; 63
      00055E 40                     663 	.db #0x40	; 64
      00055F 40                     664 	.db #0x40	; 64
      000560 40                     665 	.db #0x40	; 64
      000561 3F                     666 	.db #0x3f	; 63
      000562 1F                     667 	.db #0x1f	; 31
      000563 20                     668 	.db #0x20	; 32
      000564 40                     669 	.db #0x40	; 64
      000565 20                     670 	.db #0x20	; 32
      000566 1F                     671 	.db #0x1f	; 31
      000567 3F                     672 	.db #0x3f	; 63
      000568 40                     673 	.db #0x40	; 64
      000569 38                     674 	.db #0x38	; 56	'8'
      00056A 40                     675 	.db #0x40	; 64
      00056B 3F                     676 	.db #0x3f	; 63
      00056C 63                     677 	.db #0x63	; 99	'c'
      00056D 14                     678 	.db #0x14	; 20
      00056E 08                     679 	.db #0x08	; 8
      00056F 14                     680 	.db #0x14	; 20
      000570 63                     681 	.db #0x63	; 99	'c'
      000571 07                     682 	.db #0x07	; 7
      000572 08                     683 	.db #0x08	; 8
      000573 70                     684 	.db #0x70	; 112	'p'
      000574 08                     685 	.db #0x08	; 8
      000575 07                     686 	.db #0x07	; 7
      000576 61                     687 	.db #0x61	; 97	'a'
      000577 51                     688 	.db #0x51	; 81	'Q'
      000578 49                     689 	.db #0x49	; 73	'I'
      000579 45                     690 	.db #0x45	; 69	'E'
      00057A 43                     691 	.db #0x43	; 67	'C'
      00057B 00                     692 	.db #0x00	; 0
      00057C 7F                     693 	.db #0x7f	; 127
      00057D 41                     694 	.db #0x41	; 65	'A'
      00057E 41                     695 	.db #0x41	; 65	'A'
      00057F 00                     696 	.db #0x00	; 0
      000580 55                     697 	.db #0x55	; 85	'U'
      000581 AA                     698 	.db #0xaa	; 170
      000582 55                     699 	.db #0x55	; 85	'U'
      000583 AA                     700 	.db #0xaa	; 170
      000584 55                     701 	.db #0x55	; 85	'U'
      000585 00                     702 	.db #0x00	; 0
      000586 41                     703 	.db #0x41	; 65	'A'
      000587 41                     704 	.db #0x41	; 65	'A'
      000588 7F                     705 	.db #0x7f	; 127
      000589 00                     706 	.db #0x00	; 0
      00058A 04                     707 	.db #0x04	; 4
      00058B 02                     708 	.db #0x02	; 2
      00058C 01                     709 	.db #0x01	; 1
      00058D 02                     710 	.db #0x02	; 2
      00058E 04                     711 	.db #0x04	; 4
      00058F 40                     712 	.db #0x40	; 64
      000590 40                     713 	.db #0x40	; 64
      000591 40                     714 	.db #0x40	; 64
      000592 40                     715 	.db #0x40	; 64
      000593 40                     716 	.db #0x40	; 64
      000594 00                     717 	.db #0x00	; 0
      000595 03                     718 	.db #0x03	; 3
      000596 05                     719 	.db #0x05	; 5
      000597 00                     720 	.db #0x00	; 0
      000598 00                     721 	.db #0x00	; 0
      000599 20                     722 	.db #0x20	; 32
      00059A 54                     723 	.db #0x54	; 84	'T'
      00059B 54                     724 	.db #0x54	; 84	'T'
      00059C 54                     725 	.db #0x54	; 84	'T'
      00059D 78                     726 	.db #0x78	; 120	'x'
      00059E 7F                     727 	.db #0x7f	; 127
      00059F 48                     728 	.db #0x48	; 72	'H'
      0005A0 44                     729 	.db #0x44	; 68	'D'
      0005A1 44                     730 	.db #0x44	; 68	'D'
      0005A2 38                     731 	.db #0x38	; 56	'8'
      0005A3 38                     732 	.db #0x38	; 56	'8'
      0005A4 44                     733 	.db #0x44	; 68	'D'
      0005A5 44                     734 	.db #0x44	; 68	'D'
      0005A6 44                     735 	.db #0x44	; 68	'D'
      0005A7 20                     736 	.db #0x20	; 32
      0005A8 38                     737 	.db #0x38	; 56	'8'
      0005A9 44                     738 	.db #0x44	; 68	'D'
      0005AA 44                     739 	.db #0x44	; 68	'D'
      0005AB 48                     740 	.db #0x48	; 72	'H'
      0005AC 7F                     741 	.db #0x7f	; 127
      0005AD 38                     742 	.db #0x38	; 56	'8'
      0005AE 54                     743 	.db #0x54	; 84	'T'
      0005AF 54                     744 	.db #0x54	; 84	'T'
      0005B0 54                     745 	.db #0x54	; 84	'T'
      0005B1 18                     746 	.db #0x18	; 24
      0005B2 08                     747 	.db #0x08	; 8
      0005B3 7E                     748 	.db #0x7e	; 126
      0005B4 09                     749 	.db #0x09	; 9
      0005B5 01                     750 	.db #0x01	; 1
      0005B6 02                     751 	.db #0x02	; 2
      0005B7 18                     752 	.db #0x18	; 24
      0005B8 A4                     753 	.db #0xa4	; 164
      0005B9 A4                     754 	.db #0xa4	; 164
      0005BA A4                     755 	.db #0xa4	; 164
      0005BB 7C                     756 	.db #0x7c	; 124
      0005BC 7F                     757 	.db #0x7f	; 127
      0005BD 08                     758 	.db #0x08	; 8
      0005BE 04                     759 	.db #0x04	; 4
      0005BF 04                     760 	.db #0x04	; 4
      0005C0 78                     761 	.db #0x78	; 120	'x'
      0005C1 00                     762 	.db #0x00	; 0
      0005C2 44                     763 	.db #0x44	; 68	'D'
      0005C3 7D                     764 	.db #0x7d	; 125
      0005C4 40                     765 	.db #0x40	; 64
      0005C5 00                     766 	.db #0x00	; 0
      0005C6 40                     767 	.db #0x40	; 64
      0005C7 80                     768 	.db #0x80	; 128
      0005C8 84                     769 	.db #0x84	; 132
      0005C9 7D                     770 	.db #0x7d	; 125
      0005CA 00                     771 	.db #0x00	; 0
      0005CB 7F                     772 	.db #0x7f	; 127
      0005CC 10                     773 	.db #0x10	; 16
      0005CD 28                     774 	.db #0x28	; 40
      0005CE 44                     775 	.db #0x44	; 68	'D'
      0005CF 00                     776 	.db #0x00	; 0
      0005D0 00                     777 	.db #0x00	; 0
      0005D1 41                     778 	.db #0x41	; 65	'A'
      0005D2 7F                     779 	.db #0x7f	; 127
      0005D3 40                     780 	.db #0x40	; 64
      0005D4 00                     781 	.db #0x00	; 0
      0005D5 7C                     782 	.db #0x7c	; 124
      0005D6 04                     783 	.db #0x04	; 4
      0005D7 18                     784 	.db #0x18	; 24
      0005D8 04                     785 	.db #0x04	; 4
      0005D9 78                     786 	.db #0x78	; 120	'x'
      0005DA 7C                     787 	.db #0x7c	; 124
      0005DB 08                     788 	.db #0x08	; 8
      0005DC 04                     789 	.db #0x04	; 4
      0005DD 04                     790 	.db #0x04	; 4
      0005DE 78                     791 	.db #0x78	; 120	'x'
      0005DF 38                     792 	.db #0x38	; 56	'8'
      0005E0 44                     793 	.db #0x44	; 68	'D'
      0005E1 44                     794 	.db #0x44	; 68	'D'
      0005E2 44                     795 	.db #0x44	; 68	'D'
      0005E3 38                     796 	.db #0x38	; 56	'8'
      0005E4 FC                     797 	.db #0xfc	; 252
      0005E5 24                     798 	.db #0x24	; 36
      0005E6 24                     799 	.db #0x24	; 36
      0005E7 24                     800 	.db #0x24	; 36
      0005E8 18                     801 	.db #0x18	; 24
      0005E9 18                     802 	.db #0x18	; 24
      0005EA 24                     803 	.db #0x24	; 36
      0005EB 24                     804 	.db #0x24	; 36
      0005EC 18                     805 	.db #0x18	; 24
      0005ED FC                     806 	.db #0xfc	; 252
      0005EE 7C                     807 	.db #0x7c	; 124
      0005EF 08                     808 	.db #0x08	; 8
      0005F0 04                     809 	.db #0x04	; 4
      0005F1 04                     810 	.db #0x04	; 4
      0005F2 08                     811 	.db #0x08	; 8
      0005F3 48                     812 	.db #0x48	; 72	'H'
      0005F4 54                     813 	.db #0x54	; 84	'T'
      0005F5 54                     814 	.db #0x54	; 84	'T'
      0005F6 54                     815 	.db #0x54	; 84	'T'
      0005F7 20                     816 	.db #0x20	; 32
      0005F8 04                     817 	.db #0x04	; 4
      0005F9 3F                     818 	.db #0x3f	; 63
      0005FA 44                     819 	.db #0x44	; 68	'D'
      0005FB 40                     820 	.db #0x40	; 64
      0005FC 20                     821 	.db #0x20	; 32
      0005FD 3C                     822 	.db #0x3c	; 60
      0005FE 40                     823 	.db #0x40	; 64
      0005FF 40                     824 	.db #0x40	; 64
      000600 20                     825 	.db #0x20	; 32
      000601 7C                     826 	.db #0x7c	; 124
      000602 1C                     827 	.db #0x1c	; 28
      000603 20                     828 	.db #0x20	; 32
      000604 40                     829 	.db #0x40	; 64
      000605 20                     830 	.db #0x20	; 32
      000606 1C                     831 	.db #0x1c	; 28
      000607 3C                     832 	.db #0x3c	; 60
      000608 40                     833 	.db #0x40	; 64
      000609 30                     834 	.db #0x30	; 48	'0'
      00060A 40                     835 	.db #0x40	; 64
      00060B 3C                     836 	.db #0x3c	; 60
      00060C 44                     837 	.db #0x44	; 68	'D'
      00060D 28                     838 	.db #0x28	; 40
      00060E 10                     839 	.db #0x10	; 16
      00060F 28                     840 	.db #0x28	; 40
      000610 44                     841 	.db #0x44	; 68	'D'
      000611 1C                     842 	.db #0x1c	; 28
      000612 A0                     843 	.db #0xa0	; 160
      000613 A0                     844 	.db #0xa0	; 160
      000614 A0                     845 	.db #0xa0	; 160
      000615 7C                     846 	.db #0x7c	; 124
      000616 44                     847 	.db #0x44	; 68	'D'
      000617 64                     848 	.db #0x64	; 100	'd'
      000618 54                     849 	.db #0x54	; 84	'T'
      000619 4C                     850 	.db #0x4c	; 76	'L'
      00061A 44                     851 	.db #0x44	; 68	'D'
      00061B 00                     852 	.db #0x00	; 0
      00061C 10                     853 	.db #0x10	; 16
      00061D 7C                     854 	.db #0x7c	; 124
      00061E 82                     855 	.db #0x82	; 130
      00061F 00                     856 	.db #0x00	; 0
      000620 00                     857 	.db #0x00	; 0
      000621 00                     858 	.db #0x00	; 0
      000622 FF                     859 	.db #0xff	; 255
      000623 00                     860 	.db #0x00	; 0
      000624 00                     861 	.db #0x00	; 0
      000625 00                     862 	.db #0x00	; 0
      000626 82                     863 	.db #0x82	; 130
      000627 7C                     864 	.db #0x7c	; 124
      000628 10                     865 	.db #0x10	; 16
      000629 00                     866 	.db #0x00	; 0
      00062A 00                     867 	.db #0x00	; 0
      00062B 06                     868 	.db #0x06	; 6
      00062C 09                     869 	.db #0x09	; 9
      00062D 09                     870 	.db #0x09	; 9
      00062E 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
