#include "8051.h"
#include "delay.h"
#include "buzz_func.h"


#define PB1 INT0
#define PB2 INT1
#define PB3 P2_0
#define PB4 P2_1

#define scan_cnt 10

int stable_stage_Do = 0;
int stable_cnt_Do = 0;
int stable_stage_Re = 0;
int stable_cnt_Re = 0;
int stable_stage_Mi = 0;
int stable_cnt_Mi = 0;
int stable_stage_Do1 = 0;
int stable_cnt_Do1 = 0;
int stable_stage_Re1 = 0;
int stable_cnt_Re1 = 0;
int stable_stage_Fa = 0;
int stable_cnt_Fa = 0;


int main(void) {
	
	while(1) {

	/*Input*/

		//button PB2 = Do 
		if((PB2 == 0) && (stable_stage_Do == 1)) {
			if(stable_cnt_Do < scan_cnt) {
				stable_cnt_Do ++;
				if(stable_cnt_Do == scan_cnt) {
					stable_stage_Do = 0;
				}
			}
		}
		else if((PB2 == 1) && (stable_stage_Do == 0)) {
			if(stable_cnt_Do < scan_cnt) {
				stable_cnt_Do ++;
				if(stable_cnt_Do == scan_cnt) {
					stable_stage_Do = 1;
				}
			}
		} else {
			stable_cnt_Do = 0;
		}

		//button PB3 = Re 
		if((PB3 == 0) && (stable_stage_Re == 1)) {
			if(stable_cnt_Re < scan_cnt) {
				stable_cnt_Re ++;
				if(stable_cnt_Re == scan_cnt) {
					stable_stage_Re = 0;
				}
			}
		}
		else if((PB3 == 1) && (stable_stage_Re == 0)) {
			if(stable_cnt_Re < scan_cnt) {
				stable_cnt_Re ++;
				if(stable_cnt_Re == scan_cnt) {
					stable_stage_Re = 1;
				}
			}
		} else {
			stable_cnt_Re = 0;
		}
		
		//button PB4 = Mi 
		if((PB4 == 0) && (stable_stage_Mi == 1)) {
			if(stable_cnt_Mi < scan_cnt) {
				stable_cnt_Mi ++;
				if(stable_cnt_Mi == scan_cnt) {
					stable_stage_Mi = 0;
				}
			}
		}
		else if((PB4 == 1) && (stable_stage_Mi == 0)) {
			if(stable_cnt_Mi < scan_cnt) {
				stable_cnt_Mi ++;
				if(stable_cnt_Mi == scan_cnt) {
					stable_stage_Mi = 1;
				}
			}
		} else {
			stable_cnt_Mi = 0;
		}

		//button PB1+PB2 = Do# 
		if((PB1 == 0) && (PB2 == 0) && (stable_stage_Do1 == 1)) {
			if(stable_cnt_Do1 < scan_cnt) {
				stable_cnt_Do1 ++;
				if(stable_cnt_Do1 == scan_cnt) {
					stable_stage_Do1 = 0;
				}
			}
		}
		else if((PB1 == 0) && (PB2 == 0) && (stable_stage_Do1 == 0)) {
			if(stable_cnt_Do1 < scan_cnt) {
				stable_cnt_Do1 ++;
				if(stable_cnt_Do1 == scan_cnt) {
					stable_stage_Do1 = 1;
				}
			}
		} else {
			stable_cnt_Do1 = 0;
		}

		//button PB1+PB3 = Re# 
		if((PB1 == 0) && (PB3 == 0) && (stable_stage_Re1 == 1)) {
			if(stable_cnt_Re1 < scan_cnt) {
				stable_cnt_Re1 ++;
				if(stable_cnt_Re1 == scan_cnt) {
					stable_stage_Re1 = 0;
				}
			}
		}
		else if((PB1 == 0) && (PB3 == 0) && (stable_stage_Re1 == 0)) {
			if(stable_cnt_Re1 < scan_cnt) {
				stable_cnt_Re1 ++;
				if(stable_cnt_Re1 == scan_cnt) {
					stable_stage_Re1 = 1;
				}
			}
		} else {
			stable_cnt_Re1 = 0;
		}

		//button PB1+PB4 = Fa 
		if((PB1 == 0) && (PB4 == 0) && (stable_stage_Fa == 1)) {
			if(stable_cnt_Fa < scan_cnt) {
				stable_cnt_Fa ++;
				if(stable_cnt_Fa == scan_cnt) {
					stable_stage_Fa = 0;
				}
			}
		}
		else if((PB1 == 0) && (PB2 == 0) && (stable_stage_Fa == 0)) {
			if(stable_cnt_Fa < scan_cnt) {
				stable_cnt_Fa ++;
				if(stable_cnt_Fa == scan_cnt) {
					stable_stage_Fa = 1;
				}
			}
		} else {
			stable_cnt_Do1 = 0;
		}

	

	/*Compute*/	

	/*Output*/
		if(stable_stage_Do == 0)
		{
			P1_7 = 0;
			
			P3_7 = 1;
			buzzer_Do();
			P3_7 = 0;
			buzzer_Do();
			
			P1_7 = 1;
		}		
		if(stable_stage_Re == 0)
		{
			P1_5 = 0;
			
			P3_7 = 1;
			buzzer_Re();
			P3_7 = 0;
			buzzer_Re();
			
			P1_5 = 1;
		}
		if(stable_stage_Mi == 0)
		{
			P1_3 = 0;
			
			P3_7 = 1;
			buzzer_Mi();
			P3_7 = 0;
			buzzer_Mi();
			
			P1_3 = 1;
		}
		if(stable_stage_Do1 == 0)
		{
			P1_3 = 0;
			
			P3_7 = 1;
			buzzer_Do1();
			P3_7 = 0;
			buzzer_Do1();
			
			P1_3 = 1;
		}
		if(stable_stage_Re1 == 0)
		{
			P1_3 = 0;
			
			P3_7 = 1;
			buzzer_Re1();
			P3_7 = 0;
			buzzer_Re1();
			
			P1_3 = 1;
		}
		if(stable_stage_Fa == 0)
		{
			P1_3 = 0;
			
			P3_7 = 1;
			buzzer_Fa();
			P3_7 = 0;
			buzzer_Fa();
			
			P1_3 = 1;
		}
    } //end while
}
