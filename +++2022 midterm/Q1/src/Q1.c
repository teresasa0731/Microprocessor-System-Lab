#include "8051.h"

#define led P1
#define PB1 INT0
#define PB2 INT1
#define SW 	P0

// key state
#define LEVEL_HIGH 1
#define LEVEL_LOW 0

// button state
#define BTN_RELEASED 0
#define BTN_DEBOUNCED 1
#define BTN_PRESSED 2
#define BTN_LONG_PRESSED 3
#define BTN_DOUBLE_RELEASED 4
#define BTN_DOUBLE_CLICKED 5

typedef struct
{
    unsigned char currINPUT : 1; // bit 0
    unsigned char currState : 3; // bit 1,2,3
    unsigned char prevState	: 3; // bit 4,5,6
	unsigned int  count;
}STATES;

STATES states[2];
unsigned char patt;


void delay_ms(unsigned int input_ms);
void read_curINPUT(void);
void shiftLeft(void);
void shiftRight(void);
void inversedLight(unsigned int mode);


void read_curINPUT(void)
{
	states[0].currINPUT = PB1;
	states[1].currINPUT = PB2;
}

void shiftLeft(void){
	unsigned char buf = patt & 0x01;

	patt = (patt >> 1) | buf << 7;
	return;
}

void shiftRight(void){
	unsigned char buf = patt & 0x80;
	patt = (patt << 1) | buf >> 7;
	return;
}

void inversedLight(unsigned int mode){
	if(mode == 0)
		patt = ~patt;
	else
		patt = patt ^0x80;

}

int main(void)
{
	//initialized
	led = SW;
	patt = led;
	int long_flag = 0, double_cnt = 0, double_flag = 0;

	// initialize matrix
	for (int i = 0; i < 2; i++)
	{
		states[i].currINPUT = LEVEL_HIGH;
		states[i].currState = BTN_RELEASED;
		states[i].prevState = BTN_RELEASED;
		states[i].count = 0;
	}

	while (1)
	{
		delay_ms(20);
		read_curINPUT();
		for (unsigned int i = 0; i < 2; i++)
		{
			// finate state machine
			switch (states[i].currState)
			{
			case BTN_RELEASED:
				if (states[i].currINPUT == LEVEL_LOW)
					states[i].currState = BTN_DEBOUNCED;
				else
					double_cnt++;

				break;
			case BTN_DEBOUNCED:
				if (states[i].currINPUT == LEVEL_LOW)
					states[i].currState = BTN_PRESSED;
				else
					states[i].currState = BTN_RELEASED;
				break;
			case BTN_PRESSED:
				if (states[i].currINPUT == LEVEL_LOW)
				{
					states[i].count++;
					if(i == 0){
						if (states[i].count > 50)
						{
							states[i].currState = BTN_LONG_PRESSED;
							long_flag = 1;
						}
						else
							states[i].currState = BTN_PRESSED;
					}else if (i == 1)
					{
						if (states[i].count > 100)
						{
							states[i].currState = BTN_LONG_PRESSED;
							long_flag = 1;
						}
						else
							states[i].currState = BTN_PRESSED;
					}	
				}
				else
					states[i].currState = BTN_RELEASED;
				break;
			case BTN_LONG_PRESSED:
				if (states[i].currINPUT == LEVEL_LOW)
					states[i].currState = BTN_LONG_PRESSED;
				else
				{
					states[i].currState = BTN_RELEASED;
					states[i].count = 0;
				}
				break;
			default:
				break;
			}
		}

			//button function

			if (((states[0].currState == BTN_RELEASED) && (states[0].prevState == BTN_PRESSED)) || double_flag && (double_cnt > 100))
			{
				if (double_flag)
				{
					if (double_cnt < 100)
						shiftLeft();
					else
						shiftRight();


					double_flag = 0;
				}else
				{
					double_flag = 1;
					double_cnt = 0;
				}
				states[0].count = 0;
			}
			
			else if((states[0].currState == BTN_RELEASED) && (states[0].prevState == BTN_LONG_PRESSED)){
				inversedLight(0);
				double_flag = 0;
			}
			else if((states[1].currState == BTN_RELEASED) && (states[1].prevState == BTN_LONG_PRESSED)){
				inversedLight(1);
				double_flag = 0;
			}
			states[0].prevState = states[0].currState;
			states[1].prevState = states[1].currState;
			led = patt;
	}//end while
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