#include "8051.h"

int cnt = 0;

void timer_delay(void)			    // Delay function, delays 1ms
{
	TH0 = (65536-1000) / 256;	// Load higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;   // Load lower 8 bits into Timer 0
	TR0 = 1;                    // Start Timer 0
	TF0 = 0;                    // Clear Timer 0 flag
	while(TF0 == 0);		    // Wait until Timer 0 flag is set (1ms)
	TR0 = 0;			        // Stop Timer 0
}


void main(void)
{
	P1 =  0x00;									// Initial wave signal
	TMOD = 0x01;								// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	while(1)
	{
		P1 = ~P1;		     					// Reverse wave signal
		for(cnt = 0; cnt < 1000; cnt ++)		// Do a thousand times
			timer_delay();						// Repeatedly call timer_delay
	}
}
