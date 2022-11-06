#include "buzz_func.h"

void buzzer_Do(void) {
	__asm
	DELAY_Do:  				;1047HZ, We need Delay 0.478mS	
						;440cycles @Fosc = 11.0592MHz
    			MOV R6,#10	
    						;+1cycle
	DELAY_Do_DL1:    
			MOV R7,#19
	STEP1:		DJNZ R7,STEP1
			DJNZ R6,DELAY_Do_DL1
						;+410cycle = 10 * (1 + (19*2) + 2)
			MOV R7,#13		;+27cycle = 1 + (13*2)
						;+2cycles => Total = 1758
	STEP2:		DJNZ R7,STEP2
	RET 
	__endasm;		
						
}

void buzzer_Re(void) {
	__asm
	DELAY_RE:  				;1175HZ, We need Delay 0.42553mS	
						;392cycles @Fosc = 11.0592MHz
    			MOV R6,#10	
    						;+1cycle
	DELAY_RE_DL1:    
			MOV R7,#17
	STEP3:		DJNZ R7,STEP3
			DJNZ R6,DELAY_RE_DL1
						;+370cycle = 10 * (1 + (17*2) + 2)
			MOV R7,#9		;+19cycle = 1 + (9*2)
	STEP4:		DJNZ R7,STEP4		;+2cycles => Total = 1567				
	__endasm;
}

void buzzer_Mi(void) {
	__asm
	DELAY_MI:  				;1319HZ, We need Delay 1.515mS	
						;349cycles @Fosc = 11.0592MHz
    			MOV R6,#10	
    						;+1cycle
	DELAY_MI_DL1:    
			MOV R7,#15
	STEP5:		DJNZ R7,STEP5
			DJNZ R6,DELAY_MI_DL1
						;+330cycle = 10 * (1 + (15*2) + 2)
			MOV R7,#7
	STEP6:		DJNZ R7,STEP6
						;+15cycle = 1 + (7*2)
						;+2cycles => Total = 1396
	__endasm;
}