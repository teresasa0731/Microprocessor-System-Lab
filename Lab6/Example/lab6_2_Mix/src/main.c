#include "8051.h"
#include "delay.h"

int main(void) 
{    
	while(1) {    
		delay_ms(100);
		P1=0X55;
		delay_ms(100);
		P1=0XAA;
	}
}