#include "8051.h"
#include "delay.h"

#define led P1
#define but1 P2_0	
#define but2 P2_1
#define but3 INT0
#define but4 INT1

//7-segment setting
#define DOUT P2_2
#define LOAD P2_1
#define CLK  P2_0   

#define DECODE_MODE  0x09  
#define INTENSITY    0x0A 
#define SCAN_LIMIT   0x0B  
#define SHUT_DOWN    0x0C  
#define DISPLAY_TEST 0x0F  
#define matrixnum       1


unsigned int ANS[7] = {1,2,3,4,1,2,3};
unsigned int a = 0;
unsigned char send_data;
unsigned char send_flag = 0;
unsigned char received_data;
unsigned char received_flag=0;

// send address and data into max7219
void sendbyte(unsigned char address, unsigned char dat)
{
   unsigned char i;
   
   for (i=0; i<8; i++) {         // get last 8 bits(address)
      CLK = 0; 
      DOUT = (address & 0x80);   // get msb and shift left
      address <<= 1; 
      CLK = 1; 
   } 
 
   for (i=0; i<8; i++) {         // get first 8 bits(data)
      CLK = 0; 
      DOUT = (dat & 0x80);       // get msb and shit left
      dat <<= 1;
      CLK = 1;
   }
}

// write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address, unsigned char dat)
{
    unsigned char cnt;
    LOAD = 0;

  	for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
 	{
        sendbyte(address, dat);
    }
    
    LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
}

int main(void)
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
		if(send_flag==1)
		{
			SBUF = send_data;	
			send_flag=0;
		} 
		
		//receiving
		if(received_flag==1){
			if(received_data == ANS[a]){
				Write7219(7-a, received_data);
				Write7219(8, 1);
				a++;
			}
			else
				Write7219(8, 0);
			
			received_flag = 0;
		}
	}
}

void uart_isr(void) __interrupt (4)
{  
    if (TI == 1)
    	TI = 0;
}

void uart_isr(void) __interrupt (4) 
{  
    if( RI == 1) {
       RI = 0;                  // refresh RI
       received_data = SBUF;    // receive data from SBUF
       received_flag = 1;       // receiving finished
    }
}