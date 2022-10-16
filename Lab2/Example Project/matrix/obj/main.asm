;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _draw
	.globl _Initial
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
_main_seg_65536_7:
	.ds 8
_main_hi_65536_7:
	.ds 16
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;seg                       Allocated with name '_main_seg_65536_7'
;hi                        Allocated with name '_main_hi_65536_7'
;i                         Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:4: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:7: unsigned char seg[] = {
	mov	_main_seg_65536_7,#0xb0
	mov	(_main_seg_65536_7 + 0x0001),#0xed
	mov	(_main_seg_65536_7 + 0x0002),#0xf9
	mov	(_main_seg_65536_7 + 0x0003),#0xb3
	mov	(_main_seg_65536_7 + 0x0004),#0xdb
	mov	(_main_seg_65536_7 + 0x0005),#0xdf
	mov	(_main_seg_65536_7 + 0x0006),#0xf0
	mov	(_main_seg_65536_7 + 0x0007),#0xff
;	./src/main.c:19: unsigned char hi[] = {
	mov	_main_hi_65536_7,#0xff
	mov	(_main_hi_65536_7 + 0x0001),#0x10
	mov	(_main_hi_65536_7 + 0x0002),#0x10
	mov	(_main_hi_65536_7 + 0x0003),#0xff
	mov	(_main_hi_65536_7 + 0x0004),#0x00
	mov	(_main_hi_65536_7 + 0x0005),#0x81
	mov	(_main_hi_65536_7 + 0x0006),#0xff
	mov	(_main_hi_65536_7 + 0x0007),#0x81
	mov	(_main_hi_65536_7 + 0x0008),#0x00
	mov	(_main_hi_65536_7 + 0x0009),#0x0e
	mov	(_main_hi_65536_7 + 0x000a),#0x1c
	mov	(_main_hi_65536_7 + 0x000b),#0x38
	mov	(_main_hi_65536_7 + 0x000c),#0x1c
	mov	(_main_hi_65536_7 + 0x000d),#0x0e
	mov	(_main_hi_65536_7 + 0x000e),#0x00
	mov	(_main_hi_65536_7 + 0x000f),#0x00
;	./src/main.c:41: Initial();               //MAX7219 initialize
	lcall	_Initial
;	./src/main.c:43: while(1) {
00102$:
;	./src/main.c:45: draw(hi);
	mov	dptr,#_main_hi_65536_7
	mov	b,#0x40
	lcall	_draw
;	./src/main.c:47: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
