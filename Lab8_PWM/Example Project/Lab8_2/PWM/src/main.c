#include "8051.h"
#include "delay.h"
#define PWM_Pin P1_0
#define cnt 100
#define freq 65536 - cnt 	
#define PWM_CNT_UPPER 100	  
int pwm_count=0;
int duty_cycle = 10;
int main(void)
{	      
    int i;
    P1 = 0x7F;
    TMOD = 0x01;
    TH0 = freq >> 8;
    TL0 = freq & 0xFF;  
    ET0 = 1;								
    EA = 1;									
    TR0 = 1;
    while(1);                  
}
void PWM_Dimming_LED(void) __interrupt (1) 
{
    pwm_count++;
    if(pwm_count>=PWM_CNT_UPPER)
        pwm_count=0;
    
    
    if(duty_cycle > pwm_count)
    	    P1_0 = 0;
        else
            P1_0 = 1; 
    TH0 = freq >> 8;
    TL0 = freq & 0xFF;             
}




