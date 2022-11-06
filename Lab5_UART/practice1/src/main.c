#include "8051.h"
#include "delay.h"
#include "seven_segment.h"

unsigned char ANS[] = {3,2,1,2,1,2,1};
unsigned char send_data;
unsigned char send_flag = 0;
unsigned char received_data;
unsigned char received_flag = 0;
unsigned int a = 1;

#define but3 P2_0
#define but4 P2_1
#define but1 P3_2
#define but2 P3_3

void main(void)
{
  unsigned char cnt1 = 0;
  unsigned char cnt2 = 0;
  unsigned char cnt3 = 0;
  unsigned char cnt4 = 0;
  // initialize
  Initial();
  // set timer and initialize communication port
  TMOD = 0x20;			// set timer1 to mode2 
  SCON = 0x50;       		// set serial mode1
  TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
  TR1 = 1;				// enable timer = 1
  IE = 0x90;				// enable serial port interrupt
                 
	while(1)
	{
    
		// scan input
		if (but1 == 0) {
			if (cnt1 < 3) {
				cnt1++;
				if (cnt1 == 3) {
				send_data = 1;
				send_flag = 1;
				}
			}
		}
		else { cnt1 = 0; }

		if (but2 == 0) {
			if (cnt2 < 3) {
				cnt2++;
				if (cnt2 == 3) {
					send_data = 2;
					send_flag = 1;
				}
			}
		}
		else { cnt2 = 0; }

		if (but3 == 0) {
			if (cnt3 < 3) {
				cnt3++;
				if (cnt3 == 3) {
					send_data = 3;
					send_flag = 1;
				}
			}
		}
		else { cnt3 = 0; }

		if (but4 == 0) {
			if (cnt4 < 3) {
				cnt4++;
				if (cnt4 == 3) {
					send_data = 4;
					send_flag = 1;
				}
			}
		}
		else { cnt4 = 0; }

		//sending
		if(send_flag == 1)
		{
			SBUF = send_data;	
			send_flag = 0;
		} 
		
		//receiving
		if(received_flag==1){
			if(received_data == ANS[a-1]){
				Write7219(8-a, received_data);
				Write7219(8, 1);
				a+=1;
		}else if (received_flag != 1)
				Write7219(8, 0);
			
			received_flag = 0;
		}
	}
}


void uart_isr(void) __interrupt (4) 
{  
    if (TI == 1)
      TI = 0;
    if( RI == 1) {
       RI = 0;                  // refresh RI
       received_data = SBUF;    // receive data from SBUF
       received_flag = 1;       // receiving finished
    }
}
