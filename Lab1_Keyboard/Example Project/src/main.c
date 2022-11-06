#include "8051.h"
#include "delay.h"

#define led P1
#define but1 P2_0 // left shift
#define but2 P2_1	// right shift
#define but3 INT0 // mode: 1b
#define but4 INT1 // mode: 2b

void main(void)
{ 

	unsigned char patt = 0x80; 	//led value
	unsigned int prebut1 = 0;    		//debounce
	unsigned int prebut2 = 0 ;
	unsigned int mode;
	but1 = 1;                 	//initialize
	but2 = 1;
	mode = 0;

	while(1) {
		// shift one or two bits
		if (but3 == 0)	// one bits
			mode = 0;
		else if(but4 == 0)	// two bits
			mode = 1;

		// left shift
		if((but1 == 0) && (prebut1 == 1)) {
			delay_ms(10);
			if(but1 == 0) {
				if(mode == 0){
					patt = patt >> 1;
					if(patt == 0x00)	// reset
						patt = 0x80;
				}
				else {
					patt = patt >> 2;
					if(patt == 0x00)	// reset
						patt = 0x80;
				}
			}
		}

		// right shift
		if((but2 == 0) && (prebut2 == 1)) {
			delay_ms(10);
			if(but2 == 0) {
				if(mode == 0) {
					patt = patt << 1;
					if(patt == 0x00)
						patt = 0x01;
				}
				else {
					patt = patt << 2;
					if(patt == 0x00)
						patt = 0x01;
				}
			}
		}
		
		led =~ patt;	
		prebut1 = but1;
		prebut2 = but2;
		delay_ms(10);
	}
}