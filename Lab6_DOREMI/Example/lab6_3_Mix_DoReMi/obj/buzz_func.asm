;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module buzz_func
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _buzzer_Do
	.globl _buzzer_Re
	.globl _buzzer_Mi
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
;Allocation info for local variables in function 'buzzer_Do'
;------------------------------------------------------------
;	./src/buzz_func.c:3: void buzzer_Do(void) {
;	-----------------------------------------
;	 function buzzer_Do
;	-----------------------------------------
_buzzer_Do:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/buzz_func.c:18: __endasm;		
DELAY_Do:
;1047HZ, We need Delay 0.478mS
;440cycles	@Fosc = 11.0592MHz
	MOV	R6,#10
;+1cycle
DELAY_Do_DL1:
	MOV	R7,#19
STEP1:
	DJNZ R7,STEP1
	DJNZ	R6,DELAY_Do_DL1
;+410cycle	= 10 * (1 + (19*2) + 2)
	MOV	R7,#13 ;+27cycle = 1 + (13*2)
;+2cycles	=> Total = 1758
STEP2:
	DJNZ R7,STEP2
	RET
;	./src/buzz_func.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buzzer_Re'
;------------------------------------------------------------
;	./src/buzz_func.c:22: void buzzer_Re(void) {
;	-----------------------------------------
;	 function buzzer_Re
;	-----------------------------------------
_buzzer_Re:
;	./src/buzz_func.c:35: __endasm;
DELAY_RE:
;1175HZ, We need Delay 0.42553mS
;392cycles	@Fosc = 11.0592MHz
	MOV	R6,#10
;+1cycle
DELAY_RE_DL1:
	MOV	R7,#17
STEP3:
	DJNZ R7,STEP3
	DJNZ	R6,DELAY_RE_DL1
;+370cycle	= 10 * (1 + (17*2) + 2)
	MOV	R7,#9 ;+19cycle = 1 + (9*2)
STEP4:
	DJNZ R7,STEP4 ;+2cycles => Total = 1567
;	./src/buzz_func.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buzzer_Mi'
;------------------------------------------------------------
;	./src/buzz_func.c:38: void buzzer_Mi(void) {
;	-----------------------------------------
;	 function buzzer_Mi
;	-----------------------------------------
_buzzer_Mi:
;	./src/buzz_func.c:53: __endasm;
DELAY_MI:
;1319HZ, We need Delay 1.515mS
;349cycles	@Fosc = 11.0592MHz
	MOV	R6,#10
;+1cycle
DELAY_MI_DL1:
	MOV	R7,#15
STEP5:
	DJNZ R7,STEP5
	DJNZ	R6,DELAY_MI_DL1
;+330cycle	= 10 * (1 + (15*2) + 2)
	MOV	R7,#7
STEP6:
	DJNZ R7,STEP6
;+15cycle	= 1 + (7*2)
;+2cycles	=> Total = 1396
;	./src/buzz_func.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
