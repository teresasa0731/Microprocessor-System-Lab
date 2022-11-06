#include "8051.h"
#include "delay.h"

#define Hall_In P2_4
#define LED P1
#define BTN P2_1

char hall_cnt = 0x00;								// Count the # of Hall sensor activations
char hall_last_state = 0;							// Record activation and deactivation of Hall sensor

void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
{
	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
	
	if((Hall_In == 0) && (hall_last_state == 1))	// Falling edge of hall sensor signal (activated)
    {
    	hall_cnt = hall_cnt + 1;					// Count 1 activation
    }
    	
    hall_last_state = Hall_In;						// Update last Hall sensor state
}

int main(void) {		

	unsigned int pre_btn=0; 

	// Initialization
	TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
	ET0 = 1;										// Enable Timer 0 interrupt
	EA = 1;											// Enable all interrupt
	TR0 = 1;										// Start Timer 0

    Hall_In = 1;									// Initialize Hall sensor signal (deactivated)

    while(1) 
    {
		if((BTN == 0) && (pre_btn == 1))			// Debounce
		{
			delay_ms(10);							// Wait until button signal stable
			if(BTN == 0)
			{
				hall_cnt = 0;						// Reset counter
			}
		}
		LED = ~hall_cnt;							// Display counted number on LED in binary format
		pre_btn = BTN;
        delay_ms(1);								// Delay 1 ms
    }
}
