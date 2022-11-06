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
                                     11 	.globl _Writesingle7219
                                     12 	.globl _Write7219
                                     13 	.globl _delay_ms
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
      000023                         38 _singledraw_PARM_2:
      000023                         39 	.ds 3
      000026                         40 _shiftdraw_shift_65536_21:
      000026                         41 	.ds 1
      000027                         42 _shiftdraw_picture_65536_20:
      000027                         43 	.ds 3
                                     44 ;--------------------------------------------------------
                                     45 ; overlayable items in internal ram
                                     46 ;--------------------------------------------------------
                                     47 ;--------------------------------------------------------
                                     48 ; indirectly addressable internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area ISEG    (DATA)
                                     51 ;--------------------------------------------------------
                                     52 ; absolute internal ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area IABS    (ABS,DATA)
                                     55 	.area IABS    (ABS,DATA)
                                     56 ;--------------------------------------------------------
                                     57 ; bit data
                                     58 ;--------------------------------------------------------
                                     59 	.area BSEG    (BIT)
                                     60 ;--------------------------------------------------------
                                     61 ; paged external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area PSEG    (PAG,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; uninitialized external ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XSEG    (XDATA)
                                     68 ;--------------------------------------------------------
                                     69 ; absolute external ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area XABS    (ABS,XDATA)
                                     72 ;--------------------------------------------------------
                                     73 ; initialized external ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area XISEG   (XDATA)
                                     76 	.area HOME    (CODE)
                                     77 	.area GSINIT0 (CODE)
                                     78 	.area GSINIT1 (CODE)
                                     79 	.area GSINIT2 (CODE)
                                     80 	.area GSINIT3 (CODE)
                                     81 	.area GSINIT4 (CODE)
                                     82 	.area GSINIT5 (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 	.area GSFINAL (CODE)
                                     85 	.area CSEG    (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; global & static initialisations
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME    (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 	.area GSFINAL (CODE)
                                     92 	.area GSINIT  (CODE)
                                     93 ;------------------------------------------------------------
                                     94 ;Allocation info for local variables in function 'shiftdraw'
                                     95 ;------------------------------------------------------------
                                     96 ;shift                     Allocated with name '_shiftdraw_shift_65536_21'
                                     97 ;picture                   Allocated with name '_shiftdraw_picture_65536_20'
                                     98 ;i                         Allocated to registers r4 
                                     99 ;------------------------------------------------------------
                                    100 ;	./src/draw.c:44: static char shift = 0;
      00005F 75 26 00         [24]  101 	mov	_shiftdraw_shift_65536_21,#0x00
                                    102 ;--------------------------------------------------------
                                    103 ; Home
                                    104 ;--------------------------------------------------------
                                    105 	.area HOME    (CODE)
                                    106 	.area HOME    (CODE)
                                    107 ;--------------------------------------------------------
                                    108 ; code
                                    109 ;--------------------------------------------------------
                                    110 	.area CSEG    (CODE)
                                    111 ;------------------------------------------------------------
                                    112 ;Allocation info for local variables in function 'Initial'
                                    113 ;------------------------------------------------------------
                                    114 ;i                         Allocated to registers r7 
                                    115 ;------------------------------------------------------------
                                    116 ;	./src/draw.c:6: void Initial(void)
                                    117 ;	-----------------------------------------
                                    118 ;	 function Initial
                                    119 ;	-----------------------------------------
      000163                        120 _Initial:
                           000007   121 	ar7 = 0x07
                           000006   122 	ar6 = 0x06
                           000005   123 	ar5 = 0x05
                           000004   124 	ar4 = 0x04
                           000003   125 	ar3 = 0x03
                           000002   126 	ar2 = 0x02
                           000001   127 	ar1 = 0x01
                           000000   128 	ar0 = 0x00
                                    129 ;	./src/draw.c:9: Write7219(SHUT_DOWN, 0x01);          // normal mode(0xX1)
      000163 75 20 01         [24]  130 	mov	_Write7219_PARM_2,#0x01
      000166 75 82 0C         [24]  131 	mov	dpl,#0x0c
      000169 12 00 FF         [24]  132 	lcall	_Write7219
                                    133 ;	./src/draw.c:10: Write7219(DISPLAY_TEST, 0x00); 
      00016C 75 20 00         [24]  134 	mov	_Write7219_PARM_2,#0x00
      00016F 75 82 0F         [24]  135 	mov	dpl,#0x0f
      000172 12 00 FF         [24]  136 	lcall	_Write7219
                                    137 ;	./src/draw.c:11: Write7219(DECODE_MODE, 0x00);        // select non-decode mode
      000175 75 20 00         [24]  138 	mov	_Write7219_PARM_2,#0x00
      000178 75 82 09         [24]  139 	mov	dpl,#0x09
      00017B 12 00 FF         [24]  140 	lcall	_Write7219
                                    141 ;	./src/draw.c:12: Write7219(SCAN_LIMIT, 0x07);         // use all 8 LED
      00017E 75 20 07         [24]  142 	mov	_Write7219_PARM_2,#0x07
      000181 75 82 0B         [24]  143 	mov	dpl,#0x0b
      000184 12 00 FF         [24]  144 	lcall	_Write7219
                                    145 ;	./src/draw.c:13: Write7219(INTENSITY, 0x00);          // set up intensity
      000187 75 20 00         [24]  146 	mov	_Write7219_PARM_2,#0x00
      00018A 75 82 0A         [24]  147 	mov	dpl,#0x0a
      00018D 12 00 FF         [24]  148 	lcall	_Write7219
                                    149 ;	./src/draw.c:15: for(i=1; i<=8; i++) { 
      000190 7F 01            [12]  150 	mov	r7,#0x01
      000192                        151 00102$:
                                    152 ;	./src/draw.c:16: Write7219(i, 0x00);              // turn off all LED
      000192 75 20 00         [24]  153 	mov	_Write7219_PARM_2,#0x00
      000195 8F 82            [24]  154 	mov	dpl,r7
      000197 C0 07            [24]  155 	push	ar7
      000199 12 00 FF         [24]  156 	lcall	_Write7219
      00019C D0 07            [24]  157 	pop	ar7
                                    158 ;	./src/draw.c:15: for(i=1; i<=8; i++) { 
      00019E 0F               [12]  159 	inc	r7
      00019F EF               [12]  160 	mov	a,r7
      0001A0 24 F7            [12]  161 	add	a,#0xff - 0x08
      0001A2 50 EE            [24]  162 	jnc	00102$
                                    163 ;	./src/draw.c:18: }
      0001A4 22               [24]  164 	ret
                                    165 ;------------------------------------------------------------
                                    166 ;Allocation info for local variables in function 'draw'
                                    167 ;------------------------------------------------------------
                                    168 ;picture                   Allocated to registers r5 r6 r7 
                                    169 ;i                         Allocated to registers r4 
                                    170 ;------------------------------------------------------------
                                    171 ;	./src/draw.c:21: void draw(unsigned char *picture)
                                    172 ;	-----------------------------------------
                                    173 ;	 function draw
                                    174 ;	-----------------------------------------
      0001A5                        175 _draw:
      0001A5 AD 82            [24]  176 	mov	r5,dpl
      0001A7 AE 83            [24]  177 	mov	r6,dph
      0001A9 AF F0            [24]  178 	mov	r7,b
                                    179 ;	./src/draw.c:25: for(i=1; i<=8; i++) {
      0001AB 7C 01            [12]  180 	mov	r4,#0x01
      0001AD                        181 00102$:
                                    182 ;	./src/draw.c:26: Write7219(i, picture[i-1]);
      0001AD 8C 02            [24]  183 	mov	ar2,r4
      0001AF 7B 00            [12]  184 	mov	r3,#0x00
      0001B1 1A               [12]  185 	dec	r2
      0001B2 BA FF 01         [24]  186 	cjne	r2,#0xff,00111$
      0001B5 1B               [12]  187 	dec	r3
      0001B6                        188 00111$:
      0001B6 EA               [12]  189 	mov	a,r2
      0001B7 2D               [12]  190 	add	a,r5
      0001B8 FA               [12]  191 	mov	r2,a
      0001B9 EB               [12]  192 	mov	a,r3
      0001BA 3E               [12]  193 	addc	a,r6
      0001BB F9               [12]  194 	mov	r1,a
      0001BC 8F 03            [24]  195 	mov	ar3,r7
      0001BE 8A 82            [24]  196 	mov	dpl,r2
      0001C0 89 83            [24]  197 	mov	dph,r1
      0001C2 8B F0            [24]  198 	mov	b,r3
      0001C4 12 03 29         [24]  199 	lcall	__gptrget
      0001C7 F5 20            [12]  200 	mov	_Write7219_PARM_2,a
      0001C9 8C 82            [24]  201 	mov	dpl,r4
      0001CB C0 07            [24]  202 	push	ar7
      0001CD C0 06            [24]  203 	push	ar6
      0001CF C0 05            [24]  204 	push	ar5
      0001D1 C0 04            [24]  205 	push	ar4
      0001D3 12 00 FF         [24]  206 	lcall	_Write7219
      0001D6 D0 04            [24]  207 	pop	ar4
      0001D8 D0 05            [24]  208 	pop	ar5
      0001DA D0 06            [24]  209 	pop	ar6
      0001DC D0 07            [24]  210 	pop	ar7
                                    211 ;	./src/draw.c:25: for(i=1; i<=8; i++) {
      0001DE 0C               [12]  212 	inc	r4
      0001DF EC               [12]  213 	mov	a,r4
      0001E0 24 F7            [12]  214 	add	a,#0xff - 0x08
      0001E2 50 C9            [24]  215 	jnc	00102$
                                    216 ;	./src/draw.c:28: }
      0001E4 22               [24]  217 	ret
                                    218 ;------------------------------------------------------------
                                    219 ;Allocation info for local variables in function 'singledraw'
                                    220 ;------------------------------------------------------------
                                    221 ;picture                   Allocated with name '_singledraw_PARM_2'
                                    222 ;chosen                    Allocated to registers r7 
                                    223 ;i                         Allocated to registers r6 
                                    224 ;------------------------------------------------------------
                                    225 ;	./src/draw.c:31: void singledraw(unsigned char chosen, unsigned char *picture)
                                    226 ;	-----------------------------------------
                                    227 ;	 function singledraw
                                    228 ;	-----------------------------------------
      0001E5                        229 _singledraw:
      0001E5 AF 82            [24]  230 	mov	r7,dpl
                                    231 ;	./src/draw.c:35: for(i=1; i<=8; i++) {
      0001E7 7E 01            [12]  232 	mov	r6,#0x01
      0001E9                        233 00102$:
                                    234 ;	./src/draw.c:36: Writesingle7219(chosen, i, picture[i-1]);
      0001E9 8E 04            [24]  235 	mov	ar4,r6
      0001EB 7D 00            [12]  236 	mov	r5,#0x00
      0001ED 1C               [12]  237 	dec	r4
      0001EE BC FF 01         [24]  238 	cjne	r4,#0xff,00111$
      0001F1 1D               [12]  239 	dec	r5
      0001F2                        240 00111$:
      0001F2 EC               [12]  241 	mov	a,r4
      0001F3 25 23            [12]  242 	add	a,_singledraw_PARM_2
      0001F5 FC               [12]  243 	mov	r4,a
      0001F6 ED               [12]  244 	mov	a,r5
      0001F7 35 24            [12]  245 	addc	a,(_singledraw_PARM_2 + 1)
      0001F9 FD               [12]  246 	mov	r5,a
      0001FA AB 25            [24]  247 	mov	r3,(_singledraw_PARM_2 + 2)
      0001FC 8C 82            [24]  248 	mov	dpl,r4
      0001FE 8D 83            [24]  249 	mov	dph,r5
      000200 8B F0            [24]  250 	mov	b,r3
      000202 12 03 29         [24]  251 	lcall	__gptrget
      000205 F5 22            [12]  252 	mov	_Writesingle7219_PARM_3,a
      000207 8E 21            [24]  253 	mov	_Writesingle7219_PARM_2,r6
      000209 8F 82            [24]  254 	mov	dpl,r7
      00020B C0 07            [24]  255 	push	ar7
      00020D C0 06            [24]  256 	push	ar6
      00020F 12 01 1E         [24]  257 	lcall	_Writesingle7219
      000212 D0 06            [24]  258 	pop	ar6
      000214 D0 07            [24]  259 	pop	ar7
                                    260 ;	./src/draw.c:35: for(i=1; i<=8; i++) {
      000216 0E               [12]  261 	inc	r6
      000217 EE               [12]  262 	mov	a,r6
      000218 24 F7            [12]  263 	add	a,#0xff - 0x08
      00021A 50 CD            [24]  264 	jnc	00102$
                                    265 ;	./src/draw.c:38: }
      00021C 22               [24]  266 	ret
                                    267 ;------------------------------------------------------------
                                    268 ;Allocation info for local variables in function 'shiftdraw'
                                    269 ;------------------------------------------------------------
                                    270 ;shift                     Allocated with name '_shiftdraw_shift_65536_21'
                                    271 ;picture                   Allocated with name '_shiftdraw_picture_65536_20'
                                    272 ;i                         Allocated to registers r4 
                                    273 ;------------------------------------------------------------
                                    274 ;	./src/draw.c:41: void shiftdraw(unsigned char *picture)
                                    275 ;	-----------------------------------------
                                    276 ;	 function shiftdraw
                                    277 ;	-----------------------------------------
      00021D                        278 _shiftdraw:
      00021D 85 82 27         [24]  279 	mov	_shiftdraw_picture_65536_20,dpl
      000220 85 83 28         [24]  280 	mov	(_shiftdraw_picture_65536_20 + 1),dph
      000223 85 F0 29         [24]  281 	mov	(_shiftdraw_picture_65536_20 + 2),b
                                    282 ;	./src/draw.c:46: for(i=1; i<=8; i++) {
      000226 7C 01            [12]  283 	mov	r4,#0x01
      000228                        284 00104$:
                                    285 ;	./src/draw.c:47: Writesingle7219(1, i, picture[(shift+i-1) % 16]);
      000228 AA 26            [24]  286 	mov	r2,_shiftdraw_shift_65536_21
      00022A 7B 00            [12]  287 	mov	r3,#0x00
      00022C 8C 00            [24]  288 	mov	ar0,r4
      00022E 79 00            [12]  289 	mov	r1,#0x00
      000230 E8               [12]  290 	mov	a,r0
      000231 2A               [12]  291 	add	a,r2
      000232 FA               [12]  292 	mov	r2,a
      000233 E9               [12]  293 	mov	a,r1
      000234 3B               [12]  294 	addc	a,r3
      000235 FB               [12]  295 	mov	r3,a
      000236 EA               [12]  296 	mov	a,r2
      000237 24 FF            [12]  297 	add	a,#0xff
      000239 F5 82            [12]  298 	mov	dpl,a
      00023B EB               [12]  299 	mov	a,r3
      00023C 34 FF            [12]  300 	addc	a,#0xff
      00023E F5 83            [12]  301 	mov	dph,a
      000240 75 2A 10         [24]  302 	mov	__modsint_PARM_2,#0x10
                                    303 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000243 89 2B            [24]  304 	mov	(__modsint_PARM_2 + 1),r1
      000245 C0 04            [24]  305 	push	ar4
      000247 C0 01            [24]  306 	push	ar1
      000249 C0 00            [24]  307 	push	ar0
      00024B 12 03 45         [24]  308 	lcall	__modsint
      00024E AA 82            [24]  309 	mov	r2,dpl
      000250 AB 83            [24]  310 	mov	r3,dph
      000252 D0 00            [24]  311 	pop	ar0
      000254 D0 01            [24]  312 	pop	ar1
      000256 D0 04            [24]  313 	pop	ar4
      000258 EA               [12]  314 	mov	a,r2
      000259 25 27            [12]  315 	add	a,_shiftdraw_picture_65536_20
      00025B FA               [12]  316 	mov	r2,a
      00025C EB               [12]  317 	mov	a,r3
      00025D 35 28            [12]  318 	addc	a,(_shiftdraw_picture_65536_20 + 1)
      00025F FB               [12]  319 	mov	r3,a
      000260 AF 29            [24]  320 	mov	r7,(_shiftdraw_picture_65536_20 + 2)
      000262 8A 82            [24]  321 	mov	dpl,r2
      000264 8B 83            [24]  322 	mov	dph,r3
      000266 8F F0            [24]  323 	mov	b,r7
      000268 12 03 29         [24]  324 	lcall	__gptrget
      00026B F5 22            [12]  325 	mov	_Writesingle7219_PARM_3,a
      00026D 8C 21            [24]  326 	mov	_Writesingle7219_PARM_2,r4
      00026F 75 82 01         [24]  327 	mov	dpl,#0x01
      000272 C0 04            [24]  328 	push	ar4
      000274 C0 01            [24]  329 	push	ar1
      000276 C0 00            [24]  330 	push	ar0
      000278 12 01 1E         [24]  331 	lcall	_Writesingle7219
      00027B D0 00            [24]  332 	pop	ar0
      00027D D0 01            [24]  333 	pop	ar1
                                    334 ;	./src/draw.c:48: Writesingle7219(2, i, picture[(shift+i+8-1) % 16]);
      00027F AE 26            [24]  335 	mov	r6,_shiftdraw_shift_65536_21
      000281 7F 00            [12]  336 	mov	r7,#0x00
      000283 E8               [12]  337 	mov	a,r0
      000284 2E               [12]  338 	add	a,r6
      000285 F8               [12]  339 	mov	r0,a
      000286 E9               [12]  340 	mov	a,r1
      000287 3F               [12]  341 	addc	a,r7
      000288 F9               [12]  342 	mov	r1,a
      000289 74 07            [12]  343 	mov	a,#0x07
      00028B 28               [12]  344 	add	a,r0
      00028C F5 82            [12]  345 	mov	dpl,a
      00028E E4               [12]  346 	clr	a
      00028F 39               [12]  347 	addc	a,r1
      000290 F5 83            [12]  348 	mov	dph,a
      000292 75 2A 10         [24]  349 	mov	__modsint_PARM_2,#0x10
                                    350 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000295 8F 2B            [24]  351 	mov	(__modsint_PARM_2 + 1),r7
      000297 12 03 45         [24]  352 	lcall	__modsint
      00029A AE 82            [24]  353 	mov	r6,dpl
      00029C AF 83            [24]  354 	mov	r7,dph
      00029E D0 04            [24]  355 	pop	ar4
      0002A0 EE               [12]  356 	mov	a,r6
      0002A1 25 27            [12]  357 	add	a,_shiftdraw_picture_65536_20
      0002A3 FE               [12]  358 	mov	r6,a
      0002A4 EF               [12]  359 	mov	a,r7
      0002A5 35 28            [12]  360 	addc	a,(_shiftdraw_picture_65536_20 + 1)
      0002A7 FF               [12]  361 	mov	r7,a
      0002A8 AD 29            [24]  362 	mov	r5,(_shiftdraw_picture_65536_20 + 2)
      0002AA 8E 82            [24]  363 	mov	dpl,r6
      0002AC 8F 83            [24]  364 	mov	dph,r7
      0002AE 8D F0            [24]  365 	mov	b,r5
      0002B0 12 03 29         [24]  366 	lcall	__gptrget
      0002B3 F5 22            [12]  367 	mov	_Writesingle7219_PARM_3,a
      0002B5 8C 21            [24]  368 	mov	_Writesingle7219_PARM_2,r4
      0002B7 75 82 02         [24]  369 	mov	dpl,#0x02
      0002BA C0 04            [24]  370 	push	ar4
      0002BC 12 01 1E         [24]  371 	lcall	_Writesingle7219
      0002BF D0 04            [24]  372 	pop	ar4
                                    373 ;	./src/draw.c:46: for(i=1; i<=8; i++) {
      0002C1 0C               [12]  374 	inc	r4
      0002C2 EC               [12]  375 	mov	a,r4
      0002C3 24 F7            [12]  376 	add	a,#0xff - 0x08
      0002C5 40 03            [24]  377 	jc	00121$
      0002C7 02 02 28         [24]  378 	ljmp	00104$
      0002CA                        379 00121$:
                                    380 ;	./src/draw.c:51: shift += 1;
      0002CA E5 26            [12]  381 	mov	a,_shiftdraw_shift_65536_21
      0002CC 04               [12]  382 	inc	a
                                    383 ;	./src/draw.c:53: if(shift > 16) {
      0002CD F5 26            [12]  384 	mov  _shiftdraw_shift_65536_21,a
      0002CF 24 EF            [12]  385 	add	a,#0xff - 0x10
      0002D1 50 03            [24]  386 	jnc	00103$
                                    387 ;	./src/draw.c:54: shift = 0;
      0002D3 75 26 00         [24]  388 	mov	_shiftdraw_shift_65536_21,#0x00
      0002D6                        389 00103$:
                                    390 ;	./src/draw.c:57: delay_ms(1000);
      0002D6 90 03 E8         [24]  391 	mov	dptr,#0x03e8
                                    392 ;	./src/draw.c:58: }
      0002D9 02 00 F2         [24]  393 	ljmp	_delay_ms
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
                                    396 	.area XINIT   (CODE)
                                    397 	.area CABS    (ABS,CODE)
