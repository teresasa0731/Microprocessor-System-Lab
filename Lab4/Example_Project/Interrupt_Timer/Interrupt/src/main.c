#include "8051.h"

int cnt = 0;							// Global variable for interrupt routine

void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
{
	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	
	cnt++;								// Count each interruption
	if(cnt >= 1000) {						// 1000 interruptions = 1000ms = 1s
		cnt = 0;						// Reset count
		P1 = ~P1;						// Reverse wave signal
	}
}

void main(void)
{
	// Initialization
	TMOD = 0x01;						// Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;			// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;			// Load initial lower 8 bits into Timer 0
	ET0 = 1;							// Enable Timer 0 interrupt
	EA = 1;								// Enable all interrupt
	TR0 = 1;							// Start Timer 0

	// Run until power off
	while(1);
}
