ORG 0030H			;origin start at memory address 0	
START:  
LOOP:  
		
		MOV R4,#25
DOAGAIN:	MOV R5,#25
DO:		
	SETB P3.7	
	ACALL DELAY_DO
	CLR P3.7
	ACALL DELAY_DO
	DJNZ R5,DO
	DJNZ R4,DOAGAIN
	
		MOV R4,#25
REAGAIN:	MOV R5,#25
RE:		
	SETB P3.7	
	ACALL DELAY_RE
	CLR P3.7
	ACALL DELAY_RE
	DJNZ R5,RE
	DJNZ R4,REAGAIN
	
		MOV R4,#25
MIAGAIN:	MOV R5,#25
MI:		
	SETB P3.7	
	ACALL DELAY_MI
	CLR P3.7
	ACALL DELAY_MI
	DJNZ R5,MI
	DJNZ R4,MIAGAIN
	SJMP END1
	
DELAY_Do:  		;1047HZ, We need Delay 0.478mS	
			;440cycles @Fosc = 11.0592MHz
    	MOV R6,#10	
    			;+1cycle
DELAY_Do_DL1:    
	MOV R7,#19
	DJNZ R7,$
	DJNZ R6,DELAY_Do_DL1
			;+410cycle = 10 * (1 + (19*2) + 2)
	
	MOV R7,#13
	DJNZ R7,$
			;+27cycle = 1 + (13*2)
	RET		;+2cycles => Total = 1758
	
DELAY_RE:  		;1175HZ, We need Delay 0.42553mS	
			;392cycles @Fosc = 11.0592MHz
    	MOV R6,#10	
    			;+1cycle
DELAY_RE_DL1:    
	MOV R7,#17
	DJNZ R7,$
	DJNZ R6,DELAY_RE_DL1
			;+370cycle = 10 * (1 + (17*2) + 2)
	
	MOV R7,#9
	DJNZ R7,$
			;+19cycle = 1 + (9*2)
	RET		;+2cycles => Total = 1567
	
DELAY_MI:  		;1319HZ, We need Delay 1.515mS	
			;349cycles @Fosc = 11.0592MHz
    	MOV R6,#10	
    			;+1cycle
DELAY_MI_DL1:    
	MOV R7,#15
	DJNZ R7,$
	DJNZ R6,DELAY_MI_DL1
			;+330cycle = 10 * (1 + (15*2) + 2)
	
	MOV R7,#7
	DJNZ R7,$
			;+15cycle = 1 + (7*2)
	RET		;+2cycles => Total = 1396

END1:
     SJMP END1
END

