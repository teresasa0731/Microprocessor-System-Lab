                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _draw
                                     13 	.globl _Initial
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
      000008                         33 _main_seg_65536_7:
      000008                         34 	.ds 8
      000010                         35 _main_hi_65536_7:
      000010                         36 	.ds 16
                                     37 ;--------------------------------------------------------
                                     38 ; overlayable items in internal ram
                                     39 ;--------------------------------------------------------
                                     40 ;--------------------------------------------------------
                                     41 ; Stack segment in internal ram
                                     42 ;--------------------------------------------------------
                                     43 	.area SSEG
      00002C                         44 __start__stack:
      00002C                         45 	.ds	1
                                     46 
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
                                     87 ; interrupt vector
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME    (CODE)
      000000                         90 __interrupt_vect:
      000000 02 00 06         [24]   91 	ljmp	__sdcc_gsinit_startup
                                     92 ;--------------------------------------------------------
                                     93 ; global & static initialisations
                                     94 ;--------------------------------------------------------
                                     95 	.area HOME    (CODE)
                                     96 	.area GSINIT  (CODE)
                                     97 	.area GSFINAL (CODE)
                                     98 	.area GSINIT  (CODE)
                                     99 	.globl __sdcc_gsinit_startup
                                    100 	.globl __sdcc_program_startup
                                    101 	.globl __start__stack
                                    102 	.globl __mcs51_genXINIT
                                    103 	.globl __mcs51_genXRAMCLEAR
                                    104 	.globl __mcs51_genRAMCLEAR
                                    105 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  106 	ljmp	__sdcc_program_startup
                                    107 ;--------------------------------------------------------
                                    108 ; Home
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME    (CODE)
                                    111 	.area HOME    (CODE)
      000003                        112 __sdcc_program_startup:
      000003 02 00 65         [24]  113 	ljmp	_main
                                    114 ;	return from main will return to caller
                                    115 ;--------------------------------------------------------
                                    116 ; code
                                    117 ;--------------------------------------------------------
                                    118 	.area CSEG    (CODE)
                                    119 ;------------------------------------------------------------
                                    120 ;Allocation info for local variables in function 'main'
                                    121 ;------------------------------------------------------------
                                    122 ;seg                       Allocated with name '_main_seg_65536_7'
                                    123 ;hi                        Allocated with name '_main_hi_65536_7'
                                    124 ;i                         Allocated to registers 
                                    125 ;------------------------------------------------------------
                                    126 ;	./src/main.c:4: void main(void)
                                    127 ;	-----------------------------------------
                                    128 ;	 function main
                                    129 ;	-----------------------------------------
      000065                        130 _main:
                           000007   131 	ar7 = 0x07
                           000006   132 	ar6 = 0x06
                           000005   133 	ar5 = 0x05
                           000004   134 	ar4 = 0x04
                           000003   135 	ar3 = 0x03
                           000002   136 	ar2 = 0x02
                           000001   137 	ar1 = 0x01
                           000000   138 	ar0 = 0x00
                                    139 ;	./src/main.c:7: unsigned char seg[] = {
      000065 75 08 B0         [24]  140 	mov	_main_seg_65536_7,#0xb0
      000068 75 09 ED         [24]  141 	mov	(_main_seg_65536_7 + 0x0001),#0xed
      00006B 75 0A F9         [24]  142 	mov	(_main_seg_65536_7 + 0x0002),#0xf9
      00006E 75 0B B3         [24]  143 	mov	(_main_seg_65536_7 + 0x0003),#0xb3
      000071 75 0C DB         [24]  144 	mov	(_main_seg_65536_7 + 0x0004),#0xdb
      000074 75 0D DF         [24]  145 	mov	(_main_seg_65536_7 + 0x0005),#0xdf
      000077 75 0E F0         [24]  146 	mov	(_main_seg_65536_7 + 0x0006),#0xf0
      00007A 75 0F FF         [24]  147 	mov	(_main_seg_65536_7 + 0x0007),#0xff
                                    148 ;	./src/main.c:19: unsigned char hi[] = {
      00007D 75 10 FF         [24]  149 	mov	_main_hi_65536_7,#0xff
      000080 75 11 10         [24]  150 	mov	(_main_hi_65536_7 + 0x0001),#0x10
      000083 75 12 10         [24]  151 	mov	(_main_hi_65536_7 + 0x0002),#0x10
      000086 75 13 FF         [24]  152 	mov	(_main_hi_65536_7 + 0x0003),#0xff
      000089 75 14 00         [24]  153 	mov	(_main_hi_65536_7 + 0x0004),#0x00
      00008C 75 15 81         [24]  154 	mov	(_main_hi_65536_7 + 0x0005),#0x81
      00008F 75 16 FF         [24]  155 	mov	(_main_hi_65536_7 + 0x0006),#0xff
      000092 75 17 81         [24]  156 	mov	(_main_hi_65536_7 + 0x0007),#0x81
      000095 75 18 00         [24]  157 	mov	(_main_hi_65536_7 + 0x0008),#0x00
      000098 75 19 0E         [24]  158 	mov	(_main_hi_65536_7 + 0x0009),#0x0e
      00009B 75 1A 1C         [24]  159 	mov	(_main_hi_65536_7 + 0x000a),#0x1c
      00009E 75 1B 38         [24]  160 	mov	(_main_hi_65536_7 + 0x000b),#0x38
      0000A1 75 1C 1C         [24]  161 	mov	(_main_hi_65536_7 + 0x000c),#0x1c
      0000A4 75 1D 0E         [24]  162 	mov	(_main_hi_65536_7 + 0x000d),#0x0e
      0000A7 75 1E 00         [24]  163 	mov	(_main_hi_65536_7 + 0x000e),#0x00
      0000AA 75 1F 00         [24]  164 	mov	(_main_hi_65536_7 + 0x000f),#0x00
                                    165 ;	./src/main.c:41: Initial();               //MAX7219 initialize
      0000AD 12 01 63         [24]  166 	lcall	_Initial
                                    167 ;	./src/main.c:43: while(1) {
      0000B0                        168 00102$:
                                    169 ;	./src/main.c:45: draw(hi);
      0000B0 90 00 10         [24]  170 	mov	dptr,#_main_hi_65536_7
      0000B3 75 F0 40         [24]  171 	mov	b,#0x40
      0000B6 12 01 A5         [24]  172 	lcall	_draw
                                    173 ;	./src/main.c:47: }
      0000B9 80 F5            [24]  174 	sjmp	00102$
                                    175 	.area CSEG    (CODE)
                                    176 	.area CONST   (CODE)
                                    177 	.area XINIT   (CODE)
                                    178 	.area CABS    (ABS,CODE)
