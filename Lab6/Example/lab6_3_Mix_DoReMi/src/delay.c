#include "delay.h"

void delay_ms(unsigned char ms) { //ms will save in *dpl
	ms;
	__asm
	DELAY:  MOV R5,dpl 	;R5 = ms
				;delay i*1ms
	DL1:    MOV R6,#2
	DL2:    MOV R7,#230
	DL3:    DJNZ R7,DL3
		DJNZ R6,DL2
		DJNZ R5,DL1
	__endasm;
}