#include "8051.h"

void delay_ms(unsigned int input_ms);


int main(void)
{
	
}

void delay_ms(unsigned int input_ms)
{
	unsigned int cnt1 = 0;
	unsigned char cnt2 = 0;
	
	for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	{	
		for(cnt2 = 0; cnt2 < 90; cnt2 ++);
	}
}