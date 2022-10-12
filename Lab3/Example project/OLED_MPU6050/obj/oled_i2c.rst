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
      00057E                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:24: oledSendCommand(0xa8);  //Set MUX Ratio
      00057E 75 82 A8         [24]  117 	mov	dpl,#0xa8
      000581 12 07 16         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:25: oledSendCommand(0x3f);  
      000584 75 82 3F         [24]  120 	mov	dpl,#0x3f
      000587 12 07 16         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:26: oledSendCommand(0xd3);  //Set Display Offset
      00058A 75 82 D3         [24]  123 	mov	dpl,#0xd3
      00058D 12 07 16         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:27: oledSendCommand(0x00);  
      000590 75 82 00         [24]  126 	mov	dpl,#0x00
      000593 12 07 16         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:28: oledSendCommand(0x40);  //Set Display Start Line
      000596 75 82 40         [24]  129 	mov	dpl,#0x40
      000599 12 07 16         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:29: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      00059C 75 82 A1         [24]  132 	mov	dpl,#0xa1
      00059F 12 07 16         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:30: oledSendCommand(0xc8);  //Set COM OUTput
      0005A2 75 82 C8         [24]  135 	mov	dpl,#0xc8
      0005A5 12 07 16         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:31: oledSendCommand(0xda); 
      0005A8 75 82 DA         [24]  138 	mov	dpl,#0xda
      0005AB 12 07 16         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:32: oledSendCommand(0x12);
      0005AE 75 82 12         [24]  141 	mov	dpl,#0x12
      0005B1 12 07 16         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:33: oledSendCommand(0x81);
      0005B4 75 82 81         [24]  144 	mov	dpl,#0x81
      0005B7 12 07 16         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:34: oledSendCommand(0x7f);
      0005BA 75 82 7F         [24]  147 	mov	dpl,#0x7f
      0005BD 12 07 16         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:35: oledSendCommand(0xa4);
      0005C0 75 82 A4         [24]  150 	mov	dpl,#0xa4
      0005C3 12 07 16         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:36: oledSendCommand(0xa6);
      0005C6 75 82 A6         [24]  153 	mov	dpl,#0xa6
      0005C9 12 07 16         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:37: oledSendCommand(0xd5);
      0005CC 75 82 D5         [24]  156 	mov	dpl,#0xd5
      0005CF 12 07 16         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:38: oledSendCommand(0x80);
      0005D2 75 82 80         [24]  159 	mov	dpl,#0x80
      0005D5 12 07 16         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:39: oledSendCommand(0x8d);
      0005D8 75 82 8D         [24]  162 	mov	dpl,#0x8d
      0005DB 12 07 16         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:40: oledSendCommand(0x14);
      0005DE 75 82 14         [24]  165 	mov	dpl,#0x14
      0005E1 12 07 16         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:41: oledSendCommand(0xaf);
      0005E4 75 82 AF         [24]  168 	mov	dpl,#0xaf
      0005E7 12 07 16         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:43: OLED_Clear();  /* Clear the complete LCD during init */
                                    171 ;	./src/oled_i2c.c:44: }
      0005EA 02 06 BB         [24]  172 	ljmp	_OLED_Clear
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
      0005ED                        184 _OLED_DisplayChar:
      0005ED AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:64: int index=0;
      0005EF 7D 00            [12]  187 	mov	r5,#0x00
      0005F1 7E 00            [12]  188 	mov	r6,#0x00
                                    189 ;	./src/oled_i2c.c:66: if(ch != '\n') {  /* TODO */ 
      0005F3 BF 0A 01         [24]  190 	cjne	r7,#0x0a,00193$
      0005F6 22               [24]  191 	ret
      0005F7                        192 00193$:
                                    193 ;	./src/oled_i2c.c:68: if(ch == ' ') index = 0;
      0005F7 BF 20 06         [24]  194 	cjne	r7,#0x20,00123$
      0005FA 7D 00            [12]  195 	mov	r5,#0x00
      0005FC 7E 00            [12]  196 	mov	r6,#0x00
      0005FE 80 4C            [24]  197 	sjmp	00124$
      000600                        198 00123$:
                                    199 ;	./src/oled_i2c.c:69: else if(ch == '-') index = 1;
      000600 BF 2D 06         [24]  200 	cjne	r7,#0x2d,00120$
      000603 7D 01            [12]  201 	mov	r5,#0x01
      000605 7E 00            [12]  202 	mov	r6,#0x00
      000607 80 43            [24]  203 	sjmp	00124$
      000609                        204 00120$:
                                    205 ;	./src/oled_i2c.c:70: else if(ch >= 0x30 && ch <= 0x39) index = (ch - 0x2e);
      000609 BF 30 00         [24]  206 	cjne	r7,#0x30,00198$
      00060C                        207 00198$:
      00060C 40 13            [24]  208 	jc	00116$
      00060E EF               [12]  209 	mov	a,r7
      00060F 24 C6            [12]  210 	add	a,#0xff - 0x39
      000611 40 0E            [24]  211 	jc	00116$
      000613 8F 03            [24]  212 	mov	ar3,r7
      000615 7C 00            [12]  213 	mov	r4,#0x00
      000617 EB               [12]  214 	mov	a,r3
      000618 24 D2            [12]  215 	add	a,#0xd2
      00061A FD               [12]  216 	mov	r5,a
      00061B EC               [12]  217 	mov	a,r4
      00061C 34 FF            [12]  218 	addc	a,#0xff
      00061E FE               [12]  219 	mov	r6,a
      00061F 80 2B            [24]  220 	sjmp	00124$
      000621                        221 00116$:
                                    222 ;	./src/oled_i2c.c:71: else if(ch == 'A') index = 12;
      000621 BF 41 06         [24]  223 	cjne	r7,#0x41,00113$
      000624 7D 0C            [12]  224 	mov	r5,#0x0c
      000626 7E 00            [12]  225 	mov	r6,#0x00
      000628 80 22            [24]  226 	sjmp	00124$
      00062A                        227 00113$:
                                    228 ;	./src/oled_i2c.c:72: else if(ch == 'G') index = 13;
      00062A BF 47 06         [24]  229 	cjne	r7,#0x47,00110$
      00062D 7D 0D            [12]  230 	mov	r5,#0x0d
      00062F 7E 00            [12]  231 	mov	r6,#0x00
      000631 80 19            [24]  232 	sjmp	00124$
      000633                        233 00110$:
                                    234 ;	./src/oled_i2c.c:73: else if(ch == 'X') index = 14;
      000633 BF 58 06         [24]  235 	cjne	r7,#0x58,00107$
      000636 7D 0E            [12]  236 	mov	r5,#0x0e
      000638 7E 00            [12]  237 	mov	r6,#0x00
      00063A 80 10            [24]  238 	sjmp	00124$
      00063C                        239 00107$:
                                    240 ;	./src/oled_i2c.c:74: else if(ch == 'Y') index = 15;
      00063C BF 59 06         [24]  241 	cjne	r7,#0x59,00104$
      00063F 7D 0F            [12]  242 	mov	r5,#0x0f
      000641 7E 00            [12]  243 	mov	r6,#0x00
      000643 80 07            [24]  244 	sjmp	00124$
      000645                        245 00104$:
                                    246 ;	./src/oled_i2c.c:75: else if(ch == 'Z') index = 16;
      000645 BF 5A 04         [24]  247 	cjne	r7,#0x5a,00124$
      000648 7D 10            [12]  248 	mov	r5,#0x10
      00064A 7E 00            [12]  249 	mov	r6,#0x00
      00064C                        250 00124$:
                                    251 ;	./src/oled_i2c.c:77: index = index * 5; // As the lookup table starts from Space(0x20)
      00064C 8D 1B            [24]  252 	mov	__mulint_PARM_2,r5
      00064E 8E 1C            [24]  253 	mov	(__mulint_PARM_2 + 1),r6
      000650 90 00 05         [24]  254 	mov	dptr,#0x0005
      000653 12 07 49         [24]  255 	lcall	__mulint
      000656 AE 82            [24]  256 	mov	r6,dpl
      000658 AF 83            [24]  257 	mov	r7,dph
                                    258 ;	./src/oled_i2c.c:79: for(i = 0; i < 5; i ++)
      00065A 7D 00            [12]  259 	mov	r5,#0x00
      00065C                        260 00128$:
                                    261 ;	./src/oled_i2c.c:80: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      00065C 8E 04            [24]  262 	mov	ar4,r6
      00065E 8D 03            [24]  263 	mov	ar3,r5
      000660 EB               [12]  264 	mov	a,r3
      000661 2C               [12]  265 	add	a,r4
      000662 FC               [12]  266 	mov	r4,a
      000663 33               [12]  267 	rlc	a
      000664 95 E0            [12]  268 	subb	a,acc
      000666 FB               [12]  269 	mov	r3,a
      000667 EC               [12]  270 	mov	a,r4
      000668 24 82            [12]  271 	add	a,#_OledFontTable
      00066A F5 82            [12]  272 	mov	dpl,a
      00066C EB               [12]  273 	mov	a,r3
      00066D 34 08            [12]  274 	addc	a,#(_OledFontTable >> 8)
      00066F F5 83            [12]  275 	mov	dph,a
      000671 E4               [12]  276 	clr	a
      000672 93               [24]  277 	movc	a,@a+dptr
      000673 F5 82            [12]  278 	mov	dpl,a
      000675 C0 07            [24]  279 	push	ar7
      000677 C0 06            [24]  280 	push	ar6
      000679 C0 05            [24]  281 	push	ar5
      00067B 12 07 22         [24]  282 	lcall	_oledSendData
      00067E D0 05            [24]  283 	pop	ar5
      000680 D0 06            [24]  284 	pop	ar6
      000682 D0 07            [24]  285 	pop	ar7
                                    286 ;	./src/oled_i2c.c:79: for(i = 0; i < 5; i ++)
      000684 0D               [12]  287 	inc	r5
      000685 BD 05 00         [24]  288 	cjne	r5,#0x05,00211$
      000688                        289 00211$:
      000688 40 D2            [24]  290 	jc	00128$
                                    291 ;	./src/oled_i2c.c:82: oledSendData(0x00); /* Display the data and keep track of cursor */
      00068A 75 82 00         [24]  292 	mov	dpl,#0x00
                                    293 ;	./src/oled_i2c.c:84: }
      00068D 02 07 22         [24]  294 	ljmp	_oledSendData
                                    295 ;------------------------------------------------------------
                                    296 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    297 ;------------------------------------------------------------
                                    298 ;ptr                       Allocated to registers 
                                    299 ;------------------------------------------------------------
                                    300 ;	./src/oled_i2c.c:104: void OLED_DisplayString(uint8_t *ptr)
                                    301 ;	-----------------------------------------
                                    302 ;	 function OLED_DisplayString
                                    303 ;	-----------------------------------------
      000690                        304 _OLED_DisplayString:
      000690 AD 82            [24]  305 	mov	r5,dpl
      000692 AE 83            [24]  306 	mov	r6,dph
      000694 AF F0            [24]  307 	mov	r7,b
                                    308 ;	./src/oled_i2c.c:106: while(*ptr)
      000696                        309 00101$:
      000696 8D 82            [24]  310 	mov	dpl,r5
      000698 8E 83            [24]  311 	mov	dph,r6
      00069A 8F F0            [24]  312 	mov	b,r7
      00069C 12 07 DC         [24]  313 	lcall	__gptrget
      00069F FC               [12]  314 	mov	r4,a
      0006A0 60 18            [24]  315 	jz	00104$
                                    316 ;	./src/oled_i2c.c:107: OLED_DisplayChar(*ptr++);
      0006A2 8C 82            [24]  317 	mov	dpl,r4
      0006A4 0D               [12]  318 	inc	r5
      0006A5 BD 00 01         [24]  319 	cjne	r5,#0x00,00116$
      0006A8 0E               [12]  320 	inc	r6
      0006A9                        321 00116$:
      0006A9 C0 07            [24]  322 	push	ar7
      0006AB C0 06            [24]  323 	push	ar6
      0006AD C0 05            [24]  324 	push	ar5
      0006AF 12 05 ED         [24]  325 	lcall	_OLED_DisplayChar
      0006B2 D0 05            [24]  326 	pop	ar5
      0006B4 D0 06            [24]  327 	pop	ar6
      0006B6 D0 07            [24]  328 	pop	ar7
      0006B8 80 DC            [24]  329 	sjmp	00101$
      0006BA                        330 00104$:
                                    331 ;	./src/oled_i2c.c:108: }
      0006BA 22               [24]  332 	ret
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'OLED_Clear'
                                    335 ;------------------------------------------------------------
                                    336 ;oled_clean_col            Allocated to registers r6 
                                    337 ;oled_clean_page           Allocated to registers r7 
                                    338 ;------------------------------------------------------------
                                    339 ;	./src/oled_i2c.c:120: void OLED_Clear(void)
                                    340 ;	-----------------------------------------
                                    341 ;	 function OLED_Clear
                                    342 ;	-----------------------------------------
      0006BB                        343 _OLED_Clear:
                                    344 ;	./src/oled_i2c.c:123: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      0006BB 7F 00            [12]  345 	mov	r7,#0x00
      0006BD                        346 00105$:
                                    347 ;	./src/oled_i2c.c:124: OLED_SetCursor(oled_clean_page,0);
      0006BD 75 1A 00         [24]  348 	mov	_OLED_SetCursor_PARM_2,#0x00
      0006C0 8F 82            [24]  349 	mov	dpl,r7
      0006C2 C0 07            [24]  350 	push	ar7
      0006C4 12 06 E6         [24]  351 	lcall	_OLED_SetCursor
      0006C7 D0 07            [24]  352 	pop	ar7
                                    353 ;	./src/oled_i2c.c:125: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      0006C9 7E 00            [12]  354 	mov	r6,#0x00
      0006CB                        355 00103$:
                                    356 ;	./src/oled_i2c.c:126: oledSendData(0);
      0006CB 75 82 00         [24]  357 	mov	dpl,#0x00
      0006CE C0 07            [24]  358 	push	ar7
      0006D0 C0 06            [24]  359 	push	ar6
      0006D2 12 07 22         [24]  360 	lcall	_oledSendData
      0006D5 D0 06            [24]  361 	pop	ar6
      0006D7 D0 07            [24]  362 	pop	ar7
                                    363 ;	./src/oled_i2c.c:125: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      0006D9 0E               [12]  364 	inc	r6
      0006DA BE 80 00         [24]  365 	cjne	r6,#0x80,00123$
      0006DD                        366 00123$:
      0006DD 40 EC            [24]  367 	jc	00103$
                                    368 ;	./src/oled_i2c.c:123: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      0006DF 0F               [12]  369 	inc	r7
      0006E0 BF 08 00         [24]  370 	cjne	r7,#0x08,00125$
      0006E3                        371 00125$:
      0006E3 40 D8            [24]  372 	jc	00105$
                                    373 ;	./src/oled_i2c.c:129: }
      0006E5 22               [24]  374 	ret
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    377 ;------------------------------------------------------------
                                    378 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    379 ;lineNumber                Allocated to registers r7 
                                    380 ;------------------------------------------------------------
                                    381 ;	./src/oled_i2c.c:145: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    382 ;	-----------------------------------------
                                    383 ;	 function OLED_SetCursor
                                    384 ;	-----------------------------------------
      0006E6                        385 _OLED_SetCursor:
      0006E6 AF 82            [24]  386 	mov	r7,dpl
                                    387 ;	./src/oled_i2c.c:147: cursorPosition = cursorPosition + 2;
      0006E8 AE 1A            [24]  388 	mov	r6,_OLED_SetCursor_PARM_2
      0006EA 74 02            [12]  389 	mov	a,#0x02
      0006EC 2E               [12]  390 	add	a,r6
      0006ED F5 1A            [12]  391 	mov	_OLED_SetCursor_PARM_2,a
                                    392 ;	./src/oled_i2c.c:148: oledSendCommand(0x0f&cursorPosition);
      0006EF AE 1A            [24]  393 	mov	r6,_OLED_SetCursor_PARM_2
      0006F1 74 0F            [12]  394 	mov	a,#0x0f
      0006F3 5E               [12]  395 	anl	a,r6
      0006F4 F5 82            [12]  396 	mov	dpl,a
      0006F6 C0 07            [24]  397 	push	ar7
      0006F8 C0 06            [24]  398 	push	ar6
      0006FA 12 07 16         [24]  399 	lcall	_oledSendCommand
      0006FD D0 06            [24]  400 	pop	ar6
                                    401 ;	./src/oled_i2c.c:149: oledSendCommand(0x10|(cursorPosition>>4));
      0006FF EE               [12]  402 	mov	a,r6
      000700 C4               [12]  403 	swap	a
      000701 54 0F            [12]  404 	anl	a,#0x0f
      000703 FE               [12]  405 	mov	r6,a
      000704 74 10            [12]  406 	mov	a,#0x10
      000706 4E               [12]  407 	orl	a,r6
      000707 F5 82            [12]  408 	mov	dpl,a
      000709 12 07 16         [24]  409 	lcall	_oledSendCommand
      00070C D0 07            [24]  410 	pop	ar7
                                    411 ;	./src/oled_i2c.c:150: oledSendCommand(0xb0|lineNumber);
      00070E 74 B0            [12]  412 	mov	a,#0xb0
      000710 4F               [12]  413 	orl	a,r7
      000711 F5 82            [12]  414 	mov	dpl,a
                                    415 ;	./src/oled_i2c.c:151: }
      000713 02 07 16         [24]  416 	ljmp	_oledSendCommand
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'oledSendCommand'
                                    419 ;------------------------------------------------------------
                                    420 ;cmd                       Allocated to registers 
                                    421 ;------------------------------------------------------------
                                    422 ;	./src/oled_i2c.c:156: void oledSendCommand(uint8_t cmd)
                                    423 ;	-----------------------------------------
                                    424 ;	 function oledSendCommand
                                    425 ;	-----------------------------------------
      000716                        426 _oledSendCommand:
      000716 85 82 18         [24]  427 	mov	_Single_WriteI2C_PARM_3,dpl
                                    428 ;	./src/oled_i2c.c:158: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000719 75 17 00         [24]  429 	mov	_Single_WriteI2C_PARM_2,#0x00
      00071C 75 82 78         [24]  430 	mov	dpl,#0x78
                                    431 ;	./src/oled_i2c.c:159: }
      00071F 02 02 BB         [24]  432 	ljmp	_Single_WriteI2C
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'oledSendData'
                                    435 ;------------------------------------------------------------
                                    436 ;cmd                       Allocated to registers 
                                    437 ;------------------------------------------------------------
                                    438 ;	./src/oled_i2c.c:161: void oledSendData(uint8_t cmd)
                                    439 ;	-----------------------------------------
                                    440 ;	 function oledSendData
                                    441 ;	-----------------------------------------
      000722                        442 _oledSendData:
      000722 85 82 18         [24]  443 	mov	_Single_WriteI2C_PARM_3,dpl
                                    444 ;	./src/oled_i2c.c:163: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      000725 75 17 40         [24]  445 	mov	_Single_WriteI2C_PARM_2,#0x40
      000728 75 82 78         [24]  446 	mov	dpl,#0x78
                                    447 ;	./src/oled_i2c.c:164: }
      00072B 02 02 BB         [24]  448 	ljmp	_Single_WriteI2C
                                    449 	.area CSEG    (CODE)
                                    450 	.area CONST   (CODE)
      000882                        451 _OledFontTable:
      000882 00                     452 	.db #0x00	; 0
      000883 00                     453 	.db #0x00	; 0
      000884 00                     454 	.db #0x00	; 0
      000885 00                     455 	.db #0x00	; 0
      000886 00                     456 	.db #0x00	; 0
      000887 08                     457 	.db #0x08	; 8
      000888 08                     458 	.db #0x08	; 8
      000889 08                     459 	.db #0x08	; 8
      00088A 08                     460 	.db #0x08	; 8
      00088B 08                     461 	.db #0x08	; 8
      00088C 3E                     462 	.db #0x3e	; 62
      00088D 51                     463 	.db #0x51	; 81	'Q'
      00088E 49                     464 	.db #0x49	; 73	'I'
      00088F 45                     465 	.db #0x45	; 69	'E'
      000890 3E                     466 	.db #0x3e	; 62
      000891 00                     467 	.db #0x00	; 0
      000892 42                     468 	.db #0x42	; 66	'B'
      000893 7F                     469 	.db #0x7f	; 127
      000894 40                     470 	.db #0x40	; 64
      000895 00                     471 	.db #0x00	; 0
      000896 42                     472 	.db #0x42	; 66	'B'
      000897 61                     473 	.db #0x61	; 97	'a'
      000898 51                     474 	.db #0x51	; 81	'Q'
      000899 49                     475 	.db #0x49	; 73	'I'
      00089A 46                     476 	.db #0x46	; 70	'F'
      00089B 21                     477 	.db #0x21	; 33
      00089C 41                     478 	.db #0x41	; 65	'A'
      00089D 45                     479 	.db #0x45	; 69	'E'
      00089E 4B                     480 	.db #0x4b	; 75	'K'
      00089F 31                     481 	.db #0x31	; 49	'1'
      0008A0 18                     482 	.db #0x18	; 24
      0008A1 14                     483 	.db #0x14	; 20
      0008A2 12                     484 	.db #0x12	; 18
      0008A3 7F                     485 	.db #0x7f	; 127
      0008A4 10                     486 	.db #0x10	; 16
      0008A5 27                     487 	.db #0x27	; 39
      0008A6 45                     488 	.db #0x45	; 69	'E'
      0008A7 45                     489 	.db #0x45	; 69	'E'
      0008A8 45                     490 	.db #0x45	; 69	'E'
      0008A9 39                     491 	.db #0x39	; 57	'9'
      0008AA 3C                     492 	.db #0x3c	; 60
      0008AB 4A                     493 	.db #0x4a	; 74	'J'
      0008AC 49                     494 	.db #0x49	; 73	'I'
      0008AD 49                     495 	.db #0x49	; 73	'I'
      0008AE 30                     496 	.db #0x30	; 48	'0'
      0008AF 01                     497 	.db #0x01	; 1
      0008B0 71                     498 	.db #0x71	; 113	'q'
      0008B1 09                     499 	.db #0x09	; 9
      0008B2 05                     500 	.db #0x05	; 5
      0008B3 03                     501 	.db #0x03	; 3
      0008B4 36                     502 	.db #0x36	; 54	'6'
      0008B5 49                     503 	.db #0x49	; 73	'I'
      0008B6 49                     504 	.db #0x49	; 73	'I'
      0008B7 49                     505 	.db #0x49	; 73	'I'
      0008B8 36                     506 	.db #0x36	; 54	'6'
      0008B9 06                     507 	.db #0x06	; 6
      0008BA 49                     508 	.db #0x49	; 73	'I'
      0008BB 49                     509 	.db #0x49	; 73	'I'
      0008BC 29                     510 	.db #0x29	; 41
      0008BD 1E                     511 	.db #0x1e	; 30
      0008BE 7C                     512 	.db #0x7c	; 124
      0008BF 12                     513 	.db #0x12	; 18
      0008C0 11                     514 	.db #0x11	; 17
      0008C1 12                     515 	.db #0x12	; 18
      0008C2 7C                     516 	.db #0x7c	; 124
      0008C3 3E                     517 	.db #0x3e	; 62
      0008C4 41                     518 	.db #0x41	; 65	'A'
      0008C5 49                     519 	.db #0x49	; 73	'I'
      0008C6 49                     520 	.db #0x49	; 73	'I'
      0008C7 7A                     521 	.db #0x7a	; 122	'z'
      0008C8 63                     522 	.db #0x63	; 99	'c'
      0008C9 14                     523 	.db #0x14	; 20
      0008CA 08                     524 	.db #0x08	; 8
      0008CB 14                     525 	.db #0x14	; 20
      0008CC 63                     526 	.db #0x63	; 99	'c'
      0008CD 07                     527 	.db #0x07	; 7
      0008CE 08                     528 	.db #0x08	; 8
      0008CF 70                     529 	.db #0x70	; 112	'p'
      0008D0 08                     530 	.db #0x08	; 8
      0008D1 07                     531 	.db #0x07	; 7
      0008D2 61                     532 	.db #0x61	; 97	'a'
      0008D3 51                     533 	.db #0x51	; 81	'Q'
      0008D4 49                     534 	.db #0x49	; 73	'I'
      0008D5 45                     535 	.db #0x45	; 69	'E'
      0008D6 43                     536 	.db #0x43	; 67	'C'
                                    537 	.area XINIT   (CODE)
                                    538 	.area CABS    (ABS,CODE)
