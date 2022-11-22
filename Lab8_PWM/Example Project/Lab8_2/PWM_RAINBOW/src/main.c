#include "8051.h"
#include "delay.h"

#define PWM_R_Pin  P1_0
#define PWM_G_Pin  P1_1
#define PWM_B_Pin  P1_2

#define cnt 100
#define freq 65536 - cnt 	
#define PWM_CNT_UPPER 100
	  
int pwm_count=0;

int r_duty_cycle = 0;
int g_duty_cycle = 0;
int b_duty_cycle = 0;
int duty_cycle = 0;
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
    
    while(1)
    {
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		r_duty_cycle = i;
    		delay_ms(50);
    	}
    	
    	
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
			g_duty_cycle = i;
    		delay_ms(50);
    	} 
    	
    	
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		r_duty_cycle = r_duty_cycle - i;
    		delay_ms(50);
    	}    
    	 	
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
			b_duty_cycle = i;
    		delay_ms(50);
    	} 
    	
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		g_duty_cycle = g_duty_cycle - i;
    		delay_ms(50);
    	}  
    	
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		r_duty_cycle = i;
    		delay_ms(50);
    	}

    	
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		g_duty_cycle = i;
    		delay_ms(50);
    	}

    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		r_duty_cycle = r_duty_cycle - i;
    		g_duty_cycle = g_duty_cycle - i;
    		b_duty_cycle = b_duty_cycle - i;
    		delay_ms(50);
    	}	
    }            
}
void PWM_Dimming_LED(void) __interrupt (1)
{
    TH0 = freq >> 8;
    TL0 = freq & 0xFF;   
    
    pwm_count++;
    if(pwm_count >= PWM_CNT_UPPER)
        pwm_count = 0;
      
	if(r_duty_cycle > pwm_count)  
		PWM_R_Pin = 0;
	else 
		PWM_R_Pin = 1;
	
	if(g_duty_cycle > pwm_count)  
		PWM_G_Pin = 0;
	else 
		PWM_G_Pin = 1;
	
	if(b_duty_cycle > pwm_count)  
		PWM_B_Pin = 0;
	else 
		PWM_B_Pin = 1;
}