#include "delay.h"

void delay_ms(unsigned int input_ms)
{
	// unsigned int cnt1 = 0;
	// unsigned char cnt2 = 0;
	
	// for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	// {	
	// 	for(cnt2 = 0; cnt2 < 200; cnt2 ++);
	// }

	input_ms;					// to avoid unrefferenced warning
	__asm				// start of assembly code
	DELAY:  MOV R5,dpl 	// R5 = ms
						// delay i*1ms
	DL1:    MOV R6,#2
	DL2:    MOV R7,#230
	DL3:    DJNZ R7,DL3
			DJNZ R6,DL2
			DJNZ R5,DL1
	__endasm;			// end of assembly code, don't forget to add ";"
}