#include "8051.h"
#include "delay.h"

#define PWM_Pin	P1_0
#define Led  	P1_7

#define cnt 100	
#define freq 65536 - cnt 	
#define PWM_CNT_UPPER 100
	  
int pwm_count = 0;
int duty_cycle = 0;
int main(void)
{	      
    int i;

	//set timer mode : timer1 -> 16-bit timer
    TMOD = 0x01;		
    TH0 = freq >> 8;
    TL0 = freq & 0xFF;  
    								
	//EA : turn on interrupt
	EA = 1;	
	ET0 = 1;	//TF0 
	EX0 = 1; 	//INT0
  	EX1 = 1;	//INT1	

	//TCON:set timer(4bit) / set INT(4bit)
	TR0 = 1;
	IT0 = 1;
	IT1 = 0; 

    PWM_Pin = 0;
	Led = 0;

    while(1)
    {
    	for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		duty_cycle = i;
    		delay_ms(50);
    	}

		for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		duty_cycle -= i;
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

	if(duty_cycle > pwm_count)  
		PWM_Pin = 0;
	else 
		PWM_Pin = 1;

}

void EX0_int(void) __interrupt (0) // External interrupt 0
{
    	
  P1 = 0x00;
  delay_ms(10000); 
  P1 = 0x7F;

} 

void EX1_int(void) __interrupt (2) // External interrupt 1
{
  	
  P1 = 0x00;
  delay_ms(10000); 
  P1 = 0x7F;

} 	