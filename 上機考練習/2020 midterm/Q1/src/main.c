#include "8051.h"
#include "delay.h"

#define led P1
#define PB1 INT0 	// left shift
#define PB2 INT1	// right shift
#define PB3 P2_0 	// KEEP
#define PB4 P2_1 	// mode: 2b

// key state
#define LEVEL_HIGH 1
#define LEVEL_LOW 0

// button state
#define BTN_RELEASED 0
#define BTN_DEBOUNCED 1
#define BTN_PRESSED 2

typedef struct// 6 bytes
{
    unsigned char currINPUT : 1; // bit 0
    unsigned char currState : 2; // bit 1,2
    unsigned char prevState: 2; // bit 3,4
}STATES;

STATES states[4];

unsigned char patt = 0x80;

//gain input data
void read_currINPUT(void)
{
	states[0].currINPUT = PB1;
	states[1].currINPUT = PB2;
	states[2].currINPUT = PB3;
	states[3].currINPUT = PB4;
}

void shiftLeft(int mode){
	patt = patt >> 1;
	if (patt == 0x00)
		patt = 0x80;
	led = ~patt;
	if(mode)
		delay_ms(500);
	return;
}

void shiftRight(int mode){
	if (patt == 0x80)
		patt = 0x00 + 1;
	else
		patt = patt << 1;
	led = ~patt;
	if(mode)
		delay_ms(500);
	return;
}

void main(void)
{ 
	for (unsigned int a = 0; a < 4; a++)
	{
		states[a].currINPUT = LEVEL_HIGH;
		states[a].currState = BTN_RELEASED;
		states[a].prevState = BTN_RELEASED;
	}
	led = ~patt;

	while(1) {
		delay_ms(20);
		//detect keyboard
		read_currINPUT();
		for (unsigned int i = 0; i < 4; i++)
		{
			// finate state machine
			switch (states[i].currState)
			{
				case BTN_RELEASED:
					if (states[i].currINPUT == LEVEL_LOW)
						states[i].currState = BTN_DEBOUNCED;
					else
						states[i].currState = BTN_RELEASED;
					break;
				case BTN_DEBOUNCED:
					if (states[i].currINPUT == LEVEL_LOW)
						states[i].currState = BTN_PRESSED;
					else
						states[i].currState = BTN_RELEASED;
					break;
				case BTN_PRESSED:
					if (states[i].currINPUT == LEVEL_LOW)
						states[i].currState = BTN_PRESSED;
					else
						states[i].currState = BTN_RELEASED;
					break;
				default:
					break;
			}
			switch (i)
			{
				case 0:
					if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED))
						shiftLeft(0);
					break;
				case 1:
					if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED))
						shiftRight(0);
					break;
				case 2:
					if ((states[i].currState == BTN_PRESSED) && (states[i].prevState == BTN_PRESSED))
						shiftLeft(1);
					break;
				case 3:
					if ((states[i].currState == BTN_PRESSED) && (states[i].prevState == BTN_PRESSED))
						shiftRight(1);
					break;
				default:
					break;
			}
			states[i].prevState = states[i].currState;
		}
	}
}