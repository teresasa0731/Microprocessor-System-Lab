#include "8051.h"
#include "delay.h"
#include "seven_segment.h"

unsigned char received_data;
unsigned char received_flag = 0;

void main(void)
{
	// set timer and initialize communication port
  TMOD = 0x20;			// set timer1 to mode2 
	SCON = 0x50;      // set serial mode1
  TH1 = 250;     		// baudrate = 9600, fosc = 11.0592MHz
  TR1 = 1;				  // enable timer = 1
	IE = 0x90;				// enable serial port interrupt

  Initial();     	  // 7-seg initialization  
   
	while(1) {
    // after receiving the data, show the result on 7-segment display
		if (received_flag == 1) {
			Write7219(1, received_data);
			received_flag = 0;
		} 
	}
}


void uart_isr(void) __interrupt (4) 
{  
    if( RI == 1) {
       RI = 0;                  // refresh RI
       received_data = SBUF;    // receive data from SBUF
       received_flag = 1;       // receiving finished
    }
}
