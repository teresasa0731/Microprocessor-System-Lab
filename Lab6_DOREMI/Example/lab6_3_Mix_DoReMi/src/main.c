#include "8051.h"
#include "buzz_func.h"
#include "delay.h"

#define scan_cnt 10

int stable_stage_Do = 0;
int stable_cnt_Do = 0;
int stable_stage_Re = 0;
int stable_cnt_Re = 0;
int stable_stage_Mi = 0;
int stable_cnt_Mi = 0;


int main(void) {
	while(1) {

	/*Input*/      
		//button P2_1 = Do 
		if((P2_1 == 0) && (stable_stage_Do == 1)) {
			if(stable_cnt_Do < scan_cnt) {
				stable_cnt_Do ++;
				if(stable_cnt_Do == scan_cnt) {
					stable_stage_Do = 0;
				}
			}
	
		}
		else if((P2_1 == 1) && (stable_stage_Do == 0)) {
			if(stable_cnt_Do < scan_cnt) {
				stable_cnt_Do ++;
				if(stable_cnt_Do == scan_cnt) {
					stable_stage_Do = 1;
				}
			}
		} else {
			stable_cnt_Do = 0;
		}
		
		//button P2_0 = Re 
		if((P2_0 == 0) && (stable_stage_Re == 1)) {
			if(stable_cnt_Re < scan_cnt) {
				stable_cnt_Re ++;
				if(stable_cnt_Re == scan_cnt) {
					stable_stage_Re = 0;
				}
			}
		}
		else if((P2_0 == 1) && (stable_stage_Re == 0)) {
			if(stable_cnt_Re < scan_cnt) {
				stable_cnt_Re ++;
				if(stable_cnt_Re == scan_cnt) {
					stable_stage_Re = 1;
				}
			}
		} else {
			stable_cnt_Re = 0;
		}
		
		//button INT1 = Mi 
		if((INT1 == 0) && (stable_stage_Mi == 1)) {
			if(stable_cnt_Mi < scan_cnt) {
				stable_cnt_Mi ++;
				if(stable_cnt_Mi == scan_cnt) {
					stable_stage_Mi = 0;
				}
			}
		}
		else if((INT1 == 1) && (stable_stage_Mi == 0)) {
			if(stable_cnt_Mi < scan_cnt) {
				stable_cnt_Mi ++;
				if(stable_cnt_Mi == scan_cnt) {
					stable_stage_Mi = 1;
				}
			}
		} else {
			stable_cnt_Mi = 0;
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
    	} //end while
}




