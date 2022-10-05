                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module draw
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 	.globl _Writesingle7219
                                     13 	.globl _Write7219
                                     14 	.globl _singledraw_PARM_2
                                     15 	.globl _Initial
                                     16 	.globl _draw
                                     17 	.globl _singledraw
                                     18 	.globl _shiftdraw
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; special function bits
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; overlayable register banks
                                     31 ;--------------------------------------------------------
                                     32 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         33 	.ds 8
                                     34 ;--------------------------------------------------------
                                     35 ; internal ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DSEG    (DATA)
      000043                         38 _singledraw_PARM_2:
      000043                         39 	.ds 3
      000046                         40 _shiftdraw_snakeshift_65536_21:
      000046                         41 	.ds 38
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
                                    101 ;Allocation info for local variables in function 'Initial'
                                    102 ;------------------------------------------------------------
                                    103 ;i                         Allocated to registers r7 
                                    104 ;------------------------------------------------------------
                                    105 ;	./src/draw.c:6: void Initial(void)
                                    106 ;	-----------------------------------------
                                    107 ;	 function Initial
                                    108 ;	-----------------------------------------
      0001FA                        109 _Initial:
                           000007   110 	ar7 = 0x07
                           000006   111 	ar6 = 0x06
                           000005   112 	ar5 = 0x05
                           000004   113 	ar4 = 0x04
                           000003   114 	ar3 = 0x03
                           000002   115 	ar2 = 0x02
                           000001   116 	ar1 = 0x01
                           000000   117 	ar0 = 0x00
                                    118 ;	./src/draw.c:10: Write7219(SHUT_DOWN, 0x01); // normal mode(0xX1)
      0001FA 75 40 01         [24]  119 	mov	_Write7219_PARM_2,#0x01
      0001FD 75 82 0C         [24]  120 	mov	dpl,#0x0c
      000200 12 01 96         [24]  121 	lcall	_Write7219
                                    122 ;	./src/draw.c:11: Write7219(DISPLAY_TEST, 0x00);
      000203 75 40 00         [24]  123 	mov	_Write7219_PARM_2,#0x00
      000206 75 82 0F         [24]  124 	mov	dpl,#0x0f
      000209 12 01 96         [24]  125 	lcall	_Write7219
                                    126 ;	./src/draw.c:12: Write7219(DECODE_MODE, 0x00); // select non-decode mode
      00020C 75 40 00         [24]  127 	mov	_Write7219_PARM_2,#0x00
      00020F 75 82 09         [24]  128 	mov	dpl,#0x09
      000212 12 01 96         [24]  129 	lcall	_Write7219
                                    130 ;	./src/draw.c:13: Write7219(SCAN_LIMIT, 0x07);  // use all 8 LED
      000215 75 40 07         [24]  131 	mov	_Write7219_PARM_2,#0x07
      000218 75 82 0B         [24]  132 	mov	dpl,#0x0b
      00021B 12 01 96         [24]  133 	lcall	_Write7219
                                    134 ;	./src/draw.c:14: Write7219(INTENSITY, 0x00);   // set up intensity
      00021E 75 40 00         [24]  135 	mov	_Write7219_PARM_2,#0x00
      000221 75 82 0A         [24]  136 	mov	dpl,#0x0a
      000224 12 01 96         [24]  137 	lcall	_Write7219
                                    138 ;	./src/draw.c:16: for (i = 1; i <= 8; i++)
      000227 7F 01            [12]  139 	mov	r7,#0x01
      000229                        140 00102$:
                                    141 ;	./src/draw.c:18: Write7219(i, 0x00); // turn off all LED
      000229 75 40 00         [24]  142 	mov	_Write7219_PARM_2,#0x00
      00022C 8F 82            [24]  143 	mov	dpl,r7
      00022E C0 07            [24]  144 	push	ar7
      000230 12 01 96         [24]  145 	lcall	_Write7219
      000233 D0 07            [24]  146 	pop	ar7
                                    147 ;	./src/draw.c:16: for (i = 1; i <= 8; i++)
      000235 0F               [12]  148 	inc	r7
      000236 EF               [12]  149 	mov	a,r7
      000237 24 F7            [12]  150 	add	a,#0xff - 0x08
      000239 50 EE            [24]  151 	jnc	00102$
                                    152 ;	./src/draw.c:20: }
      00023B 22               [24]  153 	ret
                                    154 ;------------------------------------------------------------
                                    155 ;Allocation info for local variables in function 'draw'
                                    156 ;------------------------------------------------------------
                                    157 ;picture                   Allocated to registers r5 r6 r7 
                                    158 ;i                         Allocated to registers r4 
                                    159 ;------------------------------------------------------------
                                    160 ;	./src/draw.c:23: void draw(unsigned char *picture)
                                    161 ;	-----------------------------------------
                                    162 ;	 function draw
                                    163 ;	-----------------------------------------
      00023C                        164 _draw:
      00023C AD 82            [24]  165 	mov	r5,dpl
      00023E AE 83            [24]  166 	mov	r6,dph
      000240 AF F0            [24]  167 	mov	r7,b
                                    168 ;	./src/draw.c:27: for (i = 1; i <= 8; i++)
      000242 7C 01            [12]  169 	mov	r4,#0x01
      000244                        170 00102$:
                                    171 ;	./src/draw.c:29: Write7219(i, picture[i - 1]);
      000244 8C 02            [24]  172 	mov	ar2,r4
      000246 7B 00            [12]  173 	mov	r3,#0x00
      000248 1A               [12]  174 	dec	r2
      000249 BA FF 01         [24]  175 	cjne	r2,#0xff,00111$
      00024C 1B               [12]  176 	dec	r3
      00024D                        177 00111$:
      00024D EA               [12]  178 	mov	a,r2
      00024E 2D               [12]  179 	add	a,r5
      00024F FA               [12]  180 	mov	r2,a
      000250 EB               [12]  181 	mov	a,r3
      000251 3E               [12]  182 	addc	a,r6
      000252 F9               [12]  183 	mov	r1,a
      000253 8F 03            [24]  184 	mov	ar3,r7
      000255 8A 82            [24]  185 	mov	dpl,r2
      000257 89 83            [24]  186 	mov	dph,r1
      000259 8B F0            [24]  187 	mov	b,r3
      00025B 12 03 75         [24]  188 	lcall	__gptrget
      00025E F5 40            [12]  189 	mov	_Write7219_PARM_2,a
      000260 8C 82            [24]  190 	mov	dpl,r4
      000262 C0 07            [24]  191 	push	ar7
      000264 C0 06            [24]  192 	push	ar6
      000266 C0 05            [24]  193 	push	ar5
      000268 C0 04            [24]  194 	push	ar4
      00026A 12 01 96         [24]  195 	lcall	_Write7219
      00026D D0 04            [24]  196 	pop	ar4
      00026F D0 05            [24]  197 	pop	ar5
      000271 D0 06            [24]  198 	pop	ar6
      000273 D0 07            [24]  199 	pop	ar7
                                    200 ;	./src/draw.c:27: for (i = 1; i <= 8; i++)
      000275 0C               [12]  201 	inc	r4
      000276 EC               [12]  202 	mov	a,r4
      000277 24 F7            [12]  203 	add	a,#0xff - 0x08
      000279 50 C9            [24]  204 	jnc	00102$
                                    205 ;	./src/draw.c:31: }
      00027B 22               [24]  206 	ret
                                    207 ;------------------------------------------------------------
                                    208 ;Allocation info for local variables in function 'singledraw'
                                    209 ;------------------------------------------------------------
                                    210 ;picture                   Allocated with name '_singledraw_PARM_2'
                                    211 ;chosen                    Allocated to registers r7 
                                    212 ;i                         Allocated to registers r6 
                                    213 ;------------------------------------------------------------
                                    214 ;	./src/draw.c:34: void singledraw(unsigned char chosen, unsigned char *picture)
                                    215 ;	-----------------------------------------
                                    216 ;	 function singledraw
                                    217 ;	-----------------------------------------
      00027C                        218 _singledraw:
      00027C AF 82            [24]  219 	mov	r7,dpl
                                    220 ;	./src/draw.c:38: for (i = 1; i <= 8; i++)
      00027E 7E 01            [12]  221 	mov	r6,#0x01
      000280                        222 00102$:
                                    223 ;	./src/draw.c:40: Writesingle7219(chosen, i, picture[i - 1]);
      000280 8E 04            [24]  224 	mov	ar4,r6
      000282 7D 00            [12]  225 	mov	r5,#0x00
      000284 1C               [12]  226 	dec	r4
      000285 BC FF 01         [24]  227 	cjne	r4,#0xff,00111$
      000288 1D               [12]  228 	dec	r5
      000289                        229 00111$:
      000289 EC               [12]  230 	mov	a,r4
      00028A 25 43            [12]  231 	add	a,_singledraw_PARM_2
      00028C FC               [12]  232 	mov	r4,a
      00028D ED               [12]  233 	mov	a,r5
      00028E 35 44            [12]  234 	addc	a,(_singledraw_PARM_2 + 1)
      000290 FD               [12]  235 	mov	r5,a
      000291 AB 45            [24]  236 	mov	r3,(_singledraw_PARM_2 + 2)
      000293 8C 82            [24]  237 	mov	dpl,r4
      000295 8D 83            [24]  238 	mov	dph,r5
      000297 8B F0            [24]  239 	mov	b,r3
      000299 12 03 75         [24]  240 	lcall	__gptrget
      00029C F5 42            [12]  241 	mov	_Writesingle7219_PARM_3,a
      00029E 8E 41            [24]  242 	mov	_Writesingle7219_PARM_2,r6
      0002A0 8F 82            [24]  243 	mov	dpl,r7
      0002A2 C0 07            [24]  244 	push	ar7
      0002A4 C0 06            [24]  245 	push	ar6
      0002A6 12 01 B5         [24]  246 	lcall	_Writesingle7219
      0002A9 D0 06            [24]  247 	pop	ar6
      0002AB D0 07            [24]  248 	pop	ar7
                                    249 ;	./src/draw.c:38: for (i = 1; i <= 8; i++)
      0002AD 0E               [12]  250 	inc	r6
      0002AE EE               [12]  251 	mov	a,r6
      0002AF 24 F7            [12]  252 	add	a,#0xff - 0x08
      0002B1 50 CD            [24]  253 	jnc	00102$
                                    254 ;	./src/draw.c:42: }
      0002B3 22               [24]  255 	ret
                                    256 ;------------------------------------------------------------
                                    257 ;Allocation info for local variables in function 'shiftdraw'
                                    258 ;------------------------------------------------------------
                                    259 ;picture                   Allocated to registers r5 r6 r7 
                                    260 ;snakeshift                Allocated with name '_shiftdraw_snakeshift_65536_21'
                                    261 ;j                         Allocated to registers r3 r4 
                                    262 ;------------------------------------------------------------
                                    263 ;	./src/draw.c:45: void shiftdraw(unsigned char *picture)
                                    264 ;	-----------------------------------------
                                    265 ;	 function shiftdraw
                                    266 ;	-----------------------------------------
      0002B4                        267 _shiftdraw:
      0002B4 AD 82            [24]  268 	mov	r5,dpl
      0002B6 AE 83            [24]  269 	mov	r6,dph
      0002B8 AF F0            [24]  270 	mov	r7,b
                                    271 ;	./src/draw.c:49: int snakeshift[] = {8, 7, 6, 5, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8};
      0002BA 75 46 08         [24]  272 	mov	(_shiftdraw_snakeshift_65536_21 + 0),#0x08
      0002BD 75 47 00         [24]  273 	mov	(_shiftdraw_snakeshift_65536_21 + 1),#0x00
      0002C0 75 48 07         [24]  274 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0002) + 0),#0x07
      0002C3 75 49 00         [24]  275 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0002) + 1),#0x00
      0002C6 75 4A 06         [24]  276 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0004) + 0),#0x06
      0002C9 75 4B 00         [24]  277 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0004) + 1),#0x00
      0002CC 75 4C 05         [24]  278 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0006) + 0),#0x05
      0002CF 75 4D 00         [24]  279 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0006) + 1),#0x00
      0002D2 75 4E 04         [24]  280 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0008) + 0),#0x04
      0002D5 75 4F 00         [24]  281 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0008) + 1),#0x00
      0002D8 75 50 03         [24]  282 	mov	((_shiftdraw_snakeshift_65536_21 + 0x000a) + 0),#0x03
      0002DB 75 51 00         [24]  283 	mov	((_shiftdraw_snakeshift_65536_21 + 0x000a) + 1),#0x00
      0002DE 75 52 02         [24]  284 	mov	((_shiftdraw_snakeshift_65536_21 + 0x000c) + 0),#0x02
      0002E1 75 53 00         [24]  285 	mov	((_shiftdraw_snakeshift_65536_21 + 0x000c) + 1),#0x00
      0002E4 75 54 01         [24]  286 	mov	((_shiftdraw_snakeshift_65536_21 + 0x000e) + 0),#0x01
      0002E7 75 55 00         [24]  287 	mov	((_shiftdraw_snakeshift_65536_21 + 0x000e) + 1),#0x00
      0002EA 75 56 01         [24]  288 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0010) + 0),#0x01
      0002ED 75 57 00         [24]  289 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0010) + 1),#0x00
      0002F0 75 58 01         [24]  290 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0012) + 0),#0x01
      0002F3 75 59 00         [24]  291 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0012) + 1),#0x00
      0002F6 75 5A 02         [24]  292 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0014) + 0),#0x02
      0002F9 75 5B 00         [24]  293 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0014) + 1),#0x00
      0002FC 75 5C 03         [24]  294 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0016) + 0),#0x03
      0002FF 75 5D 00         [24]  295 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0016) + 1),#0x00
      000302 75 5E 04         [24]  296 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0018) + 0),#0x04
      000305 75 5F 00         [24]  297 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0018) + 1),#0x00
      000308 75 60 05         [24]  298 	mov	((_shiftdraw_snakeshift_65536_21 + 0x001a) + 0),#0x05
      00030B 75 61 00         [24]  299 	mov	((_shiftdraw_snakeshift_65536_21 + 0x001a) + 1),#0x00
      00030E 75 62 06         [24]  300 	mov	((_shiftdraw_snakeshift_65536_21 + 0x001c) + 0),#0x06
      000311 75 63 00         [24]  301 	mov	((_shiftdraw_snakeshift_65536_21 + 0x001c) + 1),#0x00
      000314 75 64 07         [24]  302 	mov	((_shiftdraw_snakeshift_65536_21 + 0x001e) + 0),#0x07
      000317 75 65 00         [24]  303 	mov	((_shiftdraw_snakeshift_65536_21 + 0x001e) + 1),#0x00
      00031A 75 66 08         [24]  304 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0020) + 0),#0x08
      00031D 75 67 00         [24]  305 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0020) + 1),#0x00
      000320 75 68 08         [24]  306 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0022) + 0),#0x08
      000323 75 69 00         [24]  307 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0022) + 1),#0x00
      000326 75 6A 08         [24]  308 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0024) + 0),#0x08
      000329 75 6B 00         [24]  309 	mov	((_shiftdraw_snakeshift_65536_21 + 0x0024) + 1),#0x00
                                    310 ;	./src/draw.c:51: for(int j=0;j<20;j++){
      00032C 0D               [12]  311 	inc	r5
      00032D BD 00 01         [24]  312 	cjne	r5,#0x00,00116$
      000330 0E               [12]  313 	inc	r6
      000331                        314 00116$:
      000331 7B 00            [12]  315 	mov	r3,#0x00
      000333 7C 00            [12]  316 	mov	r4,#0x00
      000335                        317 00103$:
      000335 C3               [12]  318 	clr	c
      000336 EB               [12]  319 	mov	a,r3
      000337 94 14            [12]  320 	subb	a,#0x14
      000339 EC               [12]  321 	mov	a,r4
      00033A 64 80            [12]  322 	xrl	a,#0x80
      00033C 94 80            [12]  323 	subb	a,#0x80
      00033E 50 2F            [24]  324 	jnc	00101$
                                    325 ;	./src/draw.c:57: Writesingle7219(1,2, picture[1]);
      000340 8D 82            [24]  326 	mov	dpl,r5
      000342 8E 83            [24]  327 	mov	dph,r6
      000344 8F F0            [24]  328 	mov	b,r7
      000346 12 03 75         [24]  329 	lcall	__gptrget
      000349 F5 42            [12]  330 	mov	_Writesingle7219_PARM_3,a
      00034B 75 41 02         [24]  331 	mov	_Writesingle7219_PARM_2,#0x02
      00034E 75 82 01         [24]  332 	mov	dpl,#0x01
      000351 C0 07            [24]  333 	push	ar7
      000353 C0 06            [24]  334 	push	ar6
      000355 C0 05            [24]  335 	push	ar5
      000357 C0 04            [24]  336 	push	ar4
      000359 C0 03            [24]  337 	push	ar3
      00035B 12 01 B5         [24]  338 	lcall	_Writesingle7219
      00035E D0 03            [24]  339 	pop	ar3
      000360 D0 04            [24]  340 	pop	ar4
      000362 D0 05            [24]  341 	pop	ar5
      000364 D0 06            [24]  342 	pop	ar6
      000366 D0 07            [24]  343 	pop	ar7
                                    344 ;	./src/draw.c:51: for(int j=0;j<20;j++){
      000368 0B               [12]  345 	inc	r3
      000369 BB 00 C9         [24]  346 	cjne	r3,#0x00,00103$
      00036C 0C               [12]  347 	inc	r4
      00036D 80 C6            [24]  348 	sjmp	00103$
      00036F                        349 00101$:
                                    350 ;	./src/draw.c:71: delay_ms(1000);
      00036F 90 03 E8         [24]  351 	mov	dptr,#0x03e8
                                    352 ;	./src/draw.c:72: }
      000372 02 01 89         [24]  353 	ljmp	_delay_ms
                                    354 	.area CSEG    (CODE)
                                    355 	.area CONST   (CODE)
                                    356 	.area XINIT   (CODE)
                                    357 	.area CABS    (ABS,CODE)
