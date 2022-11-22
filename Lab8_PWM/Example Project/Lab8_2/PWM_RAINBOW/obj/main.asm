;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PWM_Dimming_LED
	.globl _main
	.globl _delay_ms
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
	.globl _duty_cycle
	.globl _b_duty_cycle
	.globl _g_duty_cycle
	.globl _r_duty_cycle
	.globl _pwm_count
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
_pwm_count::
	.ds 2
_r_duty_cycle::
	.ds 2
_g_duty_cycle::
	.ds 2
_b_duty_cycle::
	.ds 2
_duty_cycle::
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
	reti
	.ds	7
	ljmp	_PWM_Dimming_LED
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
;	./src/main.c:12: int pwm_count=0;
	clr	a
	mov	_pwm_count,a
	mov	(_pwm_count + 1),a
;	./src/main.c:14: int r_duty_cycle = 0;
	mov	_r_duty_cycle,a
	mov	(_r_duty_cycle + 1),a
;	./src/main.c:15: int g_duty_cycle = 0;
	mov	_g_duty_cycle,a
	mov	(_g_duty_cycle + 1),a
;	./src/main.c:16: int b_duty_cycle = 0;
	mov	_b_duty_cycle,a
	mov	(_b_duty_cycle + 1),a
;	./src/main.c:17: int duty_cycle = 0;
	mov	_duty_cycle,a
	mov	(_duty_cycle + 1),a
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
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:18: int main(void)
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
;	./src/main.c:22: TMOD = 0x01;
	mov	_TMOD,#0x01
;	./src/main.c:23: TH0 = freq >> 8;
	mov	_TH0,#0xff
;	./src/main.c:24: TL0 = freq & 0xFF;  
	mov	_TL0,#0x9c
;	./src/main.c:25: ET0 = 1;								
;	assignBit
	setb	_ET0
;	./src/main.c:26: EA = 1;									
;	assignBit
	setb	_EA
;	./src/main.c:27: TR0 = 1;
;	assignBit
	setb	_TR0
;	./src/main.c:31: for(i = 0; i <= PWM_CNT_UPPER; i++)
00130$:
	mov	r6,#0x00
	mov	r7,#0x00
00112$:
;	./src/main.c:33: r_duty_cycle = i;
	mov	_r_duty_cycle,r6
	mov	(_r_duty_cycle + 1),r7
;	./src/main.c:34: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:31: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00206$
	inc	r7
00206$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
;	./src/main.c:38: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00114$:
;	./src/main.c:40: g_duty_cycle = i;
	mov	_g_duty_cycle,r6
	mov	(_g_duty_cycle + 1),r7
;	./src/main.c:41: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:38: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00208$
	inc	r7
00208$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	./src/main.c:45: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00116$:
;	./src/main.c:47: r_duty_cycle = r_duty_cycle - i;
	mov	a,_r_duty_cycle
	clr	c
	subb	a,r6
	mov	_r_duty_cycle,a
	mov	a,(_r_duty_cycle + 1)
	subb	a,r7
	mov	(_r_duty_cycle + 1),a
;	./src/main.c:48: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:45: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00210$
	inc	r7
00210$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
;	./src/main.c:51: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
;	./src/main.c:53: b_duty_cycle = i;
	mov	_b_duty_cycle,r6
	mov	(_b_duty_cycle + 1),r7
;	./src/main.c:54: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:51: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00212$
	inc	r7
00212$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
;	./src/main.c:57: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00120$:
;	./src/main.c:59: g_duty_cycle = g_duty_cycle - i;
	mov	a,_g_duty_cycle
	clr	c
	subb	a,r6
	mov	_g_duty_cycle,a
	mov	a,(_g_duty_cycle + 1)
	subb	a,r7
	mov	(_g_duty_cycle + 1),a
;	./src/main.c:60: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:57: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00214$
	inc	r7
00214$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
;	./src/main.c:63: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00122$:
;	./src/main.c:65: r_duty_cycle = i;
	mov	_r_duty_cycle,r6
	mov	(_r_duty_cycle + 1),r7
;	./src/main.c:66: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:63: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00216$
	inc	r7
00216$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	./src/main.c:70: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00124$:
;	./src/main.c:72: g_duty_cycle = i;
	mov	_g_duty_cycle,r6
	mov	(_g_duty_cycle + 1),r7
;	./src/main.c:73: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:70: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00218$
	inc	r7
00218$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
;	./src/main.c:76: for(i = 0; i <= PWM_CNT_UPPER; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00126$:
;	./src/main.c:78: r_duty_cycle = r_duty_cycle - i;
	mov	a,_r_duty_cycle
	clr	c
	subb	a,r6
	mov	_r_duty_cycle,a
	mov	a,(_r_duty_cycle + 1)
	subb	a,r7
	mov	(_r_duty_cycle + 1),a
;	./src/main.c:79: g_duty_cycle = g_duty_cycle - i;
	mov	a,_g_duty_cycle
	clr	c
	subb	a,r6
	mov	_g_duty_cycle,a
	mov	a,(_g_duty_cycle + 1)
	subb	a,r7
	mov	(_g_duty_cycle + 1),a
;	./src/main.c:80: b_duty_cycle = b_duty_cycle - i;
	mov	a,_b_duty_cycle
	clr	c
	subb	a,r6
	mov	_b_duty_cycle,a
	mov	a,(_b_duty_cycle + 1)
	subb	a,r7
	mov	(_b_duty_cycle + 1),a
;	./src/main.c:81: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:76: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00220$
	inc	r7
00220$:
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
;	./src/main.c:84: }
	ljmp	00130$
;------------------------------------------------------------
;Allocation info for local variables in function 'PWM_Dimming_LED'
;------------------------------------------------------------
;	./src/main.c:85: void PWM_Dimming_LED(void) __interrupt (1)
;	-----------------------------------------
;	 function PWM_Dimming_LED
;	-----------------------------------------
_PWM_Dimming_LED:
	push	acc
	push	b
	push	psw
;	./src/main.c:87: TH0 = freq >> 8;
	mov	_TH0,#0xff
;	./src/main.c:88: TL0 = freq & 0xFF;   
	mov	_TL0,#0x9c
;	./src/main.c:90: pwm_count++;
	inc	_pwm_count
	clr	a
	cjne	a,_pwm_count,00130$
	inc	(_pwm_count + 1)
00130$:
;	./src/main.c:91: if(pwm_count >= PWM_CNT_UPPER)
	clr	c
	mov	a,_pwm_count
	subb	a,#0x64
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	./src/main.c:92: pwm_count = 0;
	clr	a
	mov	_pwm_count,a
	mov	(_pwm_count + 1),a
00102$:
;	./src/main.c:94: if(r_duty_cycle > pwm_count)  
	clr	c
	mov	a,_pwm_count
	subb	a,_r_duty_cycle
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	mov	b,(_r_duty_cycle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	./src/main.c:95: PWM_R_Pin = 0;
;	assignBit
	clr	_P1_0
	sjmp	00105$
00104$:
;	./src/main.c:97: PWM_R_Pin = 1;
;	assignBit
	setb	_P1_0
00105$:
;	./src/main.c:99: if(g_duty_cycle > pwm_count)  
	clr	c
	mov	a,_pwm_count
	subb	a,_g_duty_cycle
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	mov	b,(_g_duty_cycle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	./src/main.c:100: PWM_G_Pin = 0;
;	assignBit
	clr	_P1_1
	sjmp	00108$
00107$:
;	./src/main.c:102: PWM_G_Pin = 1;
;	assignBit
	setb	_P1_1
00108$:
;	./src/main.c:104: if(b_duty_cycle > pwm_count)  
	clr	c
	mov	a,_pwm_count
	subb	a,_b_duty_cycle
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	mov	b,(_b_duty_cycle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	./src/main.c:105: PWM_B_Pin = 0;
;	assignBit
	clr	_P1_2
	sjmp	00112$
00110$:
;	./src/main.c:107: PWM_B_Pin = 1;
;	assignBit
	setb	_P1_2
00112$:
;	./src/main.c:108: }
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
