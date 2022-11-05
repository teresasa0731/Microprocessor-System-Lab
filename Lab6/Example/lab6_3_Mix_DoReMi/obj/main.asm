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
	.globl _buzzer_Mi
	.globl _buzzer_Re
	.globl _buzzer_Do
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _stable_cnt_Mi
	.globl _stable_stage_Mi
	.globl _stable_cnt_Re
	.globl _stable_stage_Re
	.globl _stable_cnt_Do
	.globl _stable_stage_Do
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_stable_stage_Do::
	.ds 2
_stable_cnt_Do::
	.ds 2
_stable_stage_Re::
	.ds 2
_stable_cnt_Re::
	.ds 2
_stable_stage_Mi::
	.ds 2
_stable_cnt_Mi::
	.ds 2
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
;	./src/main.c:7: int stable_stage_Do = 0;
	clr	a
	mov	_stable_stage_Do,a
	mov	(_stable_stage_Do + 1),a
;	./src/main.c:8: int stable_cnt_Do = 0;
	mov	_stable_cnt_Do,a
	mov	(_stable_cnt_Do + 1),a
;	./src/main.c:9: int stable_stage_Re = 0;
	mov	_stable_stage_Re,a
	mov	(_stable_stage_Re + 1),a
;	./src/main.c:10: int stable_cnt_Re = 0;
	mov	_stable_cnt_Re,a
	mov	(_stable_cnt_Re + 1),a
;	./src/main.c:11: int stable_stage_Mi = 0;
	mov	_stable_stage_Mi,a
	mov	(_stable_stage_Mi + 1),a
;	./src/main.c:12: int stable_cnt_Mi = 0;
	mov	_stable_cnt_Mi,a
	mov	(_stable_cnt_Mi + 1),a
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
;	./src/main.c:15: int main(void) {
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
;	./src/main.c:16: while(1) {
00156$:
;	./src/main.c:20: if((P2_1 == 0) && (stable_stage_Do == 1)) {
	jb	_P2_1,00114$
	mov	a,#0x01
	cjne	a,_stable_stage_Do,00273$
	dec	a
	cjne	a,(_stable_stage_Do + 1),00273$
	sjmp	00274$
00273$:
	sjmp	00114$
00274$:
;	./src/main.c:21: if(stable_cnt_Do < scan_cnt) {
	clr	c
	mov	a,_stable_cnt_Do
	subb	a,#0x0a
	mov	a,(_stable_cnt_Do + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	./src/main.c:22: stable_cnt_Do ++;
	inc	_stable_cnt_Do
	clr	a
	cjne	a,_stable_cnt_Do,00276$
	inc	(_stable_cnt_Do + 1)
00276$:
;	./src/main.c:23: if(stable_cnt_Do == scan_cnt) {
	mov	a,#0x0a
	cjne	a,_stable_cnt_Do,00277$
	clr	a
	cjne	a,(_stable_cnt_Do + 1),00277$
	sjmp	00278$
00277$:
	sjmp	00115$
00278$:
;	./src/main.c:24: stable_stage_Do = 0;
	clr	a
	mov	_stable_stage_Do,a
	mov	(_stable_stage_Do + 1),a
	sjmp	00115$
00114$:
;	./src/main.c:29: else if((P2_1 == 1) && (stable_stage_Do == 0)) {
	jnb	_P2_1,00110$
	mov	a,_stable_stage_Do
	orl	a,(_stable_stage_Do + 1)
	jnz	00110$
;	./src/main.c:30: if(stable_cnt_Do < scan_cnt) {
	clr	c
	mov	a,_stable_cnt_Do
	subb	a,#0x0a
	mov	a,(_stable_cnt_Do + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	./src/main.c:31: stable_cnt_Do ++;
	inc	_stable_cnt_Do
	clr	a
	cjne	a,_stable_cnt_Do,00282$
	inc	(_stable_cnt_Do + 1)
00282$:
;	./src/main.c:32: if(stable_cnt_Do == scan_cnt) {
	mov	a,#0x0a
	cjne	a,_stable_cnt_Do,00283$
	clr	a
	cjne	a,(_stable_cnt_Do + 1),00283$
	sjmp	00284$
00283$:
	sjmp	00115$
00284$:
;	./src/main.c:33: stable_stage_Do = 1;
	mov	_stable_stage_Do,#0x01
	mov	(_stable_stage_Do + 1),#0x00
	sjmp	00115$
00110$:
;	./src/main.c:37: stable_cnt_Do = 0;
	clr	a
	mov	_stable_cnt_Do,a
	mov	(_stable_cnt_Do + 1),a
00115$:
;	./src/main.c:41: if((P2_0 == 0) && (stable_stage_Re == 1)) {
	jb	_P2_0,00130$
	mov	a,#0x01
	cjne	a,_stable_stage_Re,00286$
	dec	a
	cjne	a,(_stable_stage_Re + 1),00286$
	sjmp	00287$
00286$:
	sjmp	00130$
00287$:
;	./src/main.c:42: if(stable_cnt_Re < scan_cnt) {
	clr	c
	mov	a,_stable_cnt_Re
	subb	a,#0x0a
	mov	a,(_stable_cnt_Re + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00131$
;	./src/main.c:43: stable_cnt_Re ++;
	inc	_stable_cnt_Re
	clr	a
	cjne	a,_stable_cnt_Re,00289$
	inc	(_stable_cnt_Re + 1)
00289$:
;	./src/main.c:44: if(stable_cnt_Re == scan_cnt) {
	mov	a,#0x0a
	cjne	a,_stable_cnt_Re,00290$
	clr	a
	cjne	a,(_stable_cnt_Re + 1),00290$
	sjmp	00291$
00290$:
	sjmp	00131$
00291$:
;	./src/main.c:45: stable_stage_Re = 0;
	clr	a
	mov	_stable_stage_Re,a
	mov	(_stable_stage_Re + 1),a
	sjmp	00131$
00130$:
;	./src/main.c:49: else if((P2_0 == 1) && (stable_stage_Re == 0)) {
	jnb	_P2_0,00126$
	mov	a,_stable_stage_Re
	orl	a,(_stable_stage_Re + 1)
	jnz	00126$
;	./src/main.c:50: if(stable_cnt_Re < scan_cnt) {
	clr	c
	mov	a,_stable_cnt_Re
	subb	a,#0x0a
	mov	a,(_stable_cnt_Re + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00131$
;	./src/main.c:51: stable_cnt_Re ++;
	inc	_stable_cnt_Re
	clr	a
	cjne	a,_stable_cnt_Re,00295$
	inc	(_stable_cnt_Re + 1)
00295$:
;	./src/main.c:52: if(stable_cnt_Re == scan_cnt) {
	mov	a,#0x0a
	cjne	a,_stable_cnt_Re,00296$
	clr	a
	cjne	a,(_stable_cnt_Re + 1),00296$
	sjmp	00297$
00296$:
	sjmp	00131$
00297$:
;	./src/main.c:53: stable_stage_Re = 1;
	mov	_stable_stage_Re,#0x01
	mov	(_stable_stage_Re + 1),#0x00
	sjmp	00131$
00126$:
;	./src/main.c:57: stable_cnt_Re = 0;
	clr	a
	mov	_stable_cnt_Re,a
	mov	(_stable_cnt_Re + 1),a
00131$:
;	./src/main.c:61: if((INT1 == 0) && (stable_stage_Mi == 1)) {
	jb	_INT1,00146$
	mov	a,#0x01
	cjne	a,_stable_stage_Mi,00299$
	dec	a
	cjne	a,(_stable_stage_Mi + 1),00299$
	sjmp	00300$
00299$:
	sjmp	00146$
00300$:
;	./src/main.c:62: if(stable_cnt_Mi < scan_cnt) {
	clr	c
	mov	a,_stable_cnt_Mi
	subb	a,#0x0a
	mov	a,(_stable_cnt_Mi + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00147$
;	./src/main.c:63: stable_cnt_Mi ++;
	inc	_stable_cnt_Mi
	clr	a
	cjne	a,_stable_cnt_Mi,00302$
	inc	(_stable_cnt_Mi + 1)
00302$:
;	./src/main.c:64: if(stable_cnt_Mi == scan_cnt) {
	mov	a,#0x0a
	cjne	a,_stable_cnt_Mi,00303$
	clr	a
	cjne	a,(_stable_cnt_Mi + 1),00303$
	sjmp	00304$
00303$:
	sjmp	00147$
00304$:
;	./src/main.c:65: stable_stage_Mi = 0;
	clr	a
	mov	_stable_stage_Mi,a
	mov	(_stable_stage_Mi + 1),a
	sjmp	00147$
00146$:
;	./src/main.c:69: else if((INT1 == 1) && (stable_stage_Mi == 0)) {
	jnb	_INT1,00142$
	mov	a,_stable_stage_Mi
	orl	a,(_stable_stage_Mi + 1)
	jnz	00142$
;	./src/main.c:70: if(stable_cnt_Mi < scan_cnt) {
	clr	c
	mov	a,_stable_cnt_Mi
	subb	a,#0x0a
	mov	a,(_stable_cnt_Mi + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00147$
;	./src/main.c:71: stable_cnt_Mi ++;
	inc	_stable_cnt_Mi
	clr	a
	cjne	a,_stable_cnt_Mi,00308$
	inc	(_stable_cnt_Mi + 1)
00308$:
;	./src/main.c:72: if(stable_cnt_Mi == scan_cnt) {
	mov	a,#0x0a
	cjne	a,_stable_cnt_Mi,00309$
	clr	a
	cjne	a,(_stable_cnt_Mi + 1),00309$
	sjmp	00310$
00309$:
	sjmp	00147$
00310$:
;	./src/main.c:73: stable_stage_Mi = 1;
	mov	_stable_stage_Mi,#0x01
	mov	(_stable_stage_Mi + 1),#0x00
	sjmp	00147$
00142$:
;	./src/main.c:77: stable_cnt_Mi = 0;
	clr	a
	mov	_stable_cnt_Mi,a
	mov	(_stable_cnt_Mi + 1),a
00147$:
;	./src/main.c:84: if(stable_stage_Do == 0)
	mov	a,_stable_stage_Do
	orl	a,(_stable_stage_Do + 1)
	jnz	00150$
;	./src/main.c:86: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	./src/main.c:88: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:89: buzzer_Do();
	lcall	_buzzer_Do
;	./src/main.c:90: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:91: buzzer_Do();
	lcall	_buzzer_Do
;	./src/main.c:93: P1_7 = 1;
;	assignBit
	setb	_P1_7
00150$:
;	./src/main.c:95: if(stable_stage_Re == 0)
	mov	a,_stable_stage_Re
	orl	a,(_stable_stage_Re + 1)
	jnz	00152$
;	./src/main.c:97: P1_5 = 0;
;	assignBit
	clr	_P1_5
;	./src/main.c:99: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:100: buzzer_Re();
	lcall	_buzzer_Re
;	./src/main.c:101: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:102: buzzer_Re();
	lcall	_buzzer_Re
;	./src/main.c:104: P1_5 = 1;
;	assignBit
	setb	_P1_5
00152$:
;	./src/main.c:106: if(stable_stage_Mi == 0)
	mov	a,_stable_stage_Mi
	orl	a,(_stable_stage_Mi + 1)
	jz	00313$
	ljmp	00156$
00313$:
;	./src/main.c:108: P1_3 = 0;
;	assignBit
	clr	_P1_3
;	./src/main.c:110: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:111: buzzer_Mi();
	lcall	_buzzer_Mi
;	./src/main.c:112: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:113: buzzer_Mi();
	lcall	_buzzer_Mi
;	./src/main.c:115: P1_3 = 1;
;	assignBit
	setb	_P1_3
;	./src/main.c:118: }
	ljmp	00156$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
