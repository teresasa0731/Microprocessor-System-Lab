#include "8051.h"
#include "delay.h"

#define led P1
#define INPUT0 P0_7	 // column 1
#define INPUT1 P0_6	 // column 2
#define INPUT2 P0_5	 // column 3
#define OUTPUT0 P0_4 // row 1
#define OUTPUT1 P0_3 // row 2
#define OUTPUT2 P0_2 // row 3

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

unsigned int curINPUT[9], state[9], prestate[9], count[9];
unsigned char patt = 0x80; // led value

void delay_ms(unsigned int input_ms);
void scan_row(unsigned int row)
{
	switch (row)
	{
	case 0:
		OUTPUT0 = 0; // row1 output 0
		OUTPUT1 = 1; // row2 output 1
		OUTPUT2 = 1; // row3 output 1
		break;
	case 1:
		OUTPUT0 = 1; // row1 output 1
		OUTPUT1 = 0; // row2 output 0
		OUTPUT2 = 1; // row3 output 1
		break;
	case 2:
		OUTPUT0 = 1; // row1 output 1
		OUTPUT1 = 1; // row2 output 1
		OUTPUT2 = 0; // row3 output 0
		break;
	default:
		break;
	}
}
void read_curINPUT(void)
{
	for (int i = 0; i < 3; i++)
	{
		scan_row(i);
		curINPUT[i * 3 + 0] = INPUT0;
		curINPUT[i * 3 + 1] = INPUT1;
		curINPUT[i * 3 + 2] = INPUT2;
	}
}
unsigned char shift_left(unsigned int bit, unsigned char patt)
{
	for (int i = 0; i < bit; i++)
	{
		patt = patt >> 1;
		if (patt == 0x00)
			patt = 0x80;
	}
	led = ~patt;
	delay_ms(20);
	return patt;
}
unsigned char shift_right(unsigned int bit, unsigned char patt)
{
	if (patt == 0x80)
		patt = 0x00 + 1;
	else
		patt = patt << bit;
	led = ~patt;
	delay_ms(20);
	return patt;
}
unsigned char light_up(unsigned int idx, unsigned char patt)
{
	switch (idx)
	{
	case 9:
		patt = patt;
		break;
	default:
		patt = (0x00 + 1) << idx;
		break;
	}
	led = ~patt;
	delay_ms(20);
	return patt;
}

void main(void)
{
	int long_flag = 0, double_cnt = 0, double_flag = 0;

	// initialize matrix
	for (int i = 0; i < 9; i++)
	{
		curINPUT[i] = LEVEL_HIGH;
		state[i] = BTN_RELEASED;
		prestate[i] = BTN_RELEASED;
		count[i] = 0;
	}

	while (1)
	{
		delay_ms(20);
		read_curINPUT();

		for (int i = 0; i < 9; i++)
		{

			// finate state machine
			switch (state[i])
			{
			case BTN_RELEASED:
				if (curINPUT[i] == LEVEL_LOW)
					state[i] = BTN_DEBOUNCED;
				else
					double_cnt++;

				break;
			case BTN_DEBOUNCED:
				if (curINPUT[i] == LEVEL_LOW)
				{
					state[i] = BTN_PRESSED;
				}
				else
					state[i] = BTN_RELEASED;
				break;
			case BTN_PRESSED:
				if (curINPUT[i] == LEVEL_LOW)
				{
					count[i]++;
					if (count[i] > 50)
					{
						state[i] = BTN_LONG_PRESSED;
						long_flag = 1;
					}

					else
						state[i] = BTN_PRESSED;
				}
				else
					state[i] = BTN_RELEASED;

				break;
			case BTN_LONG_PRESSED:
				if (curINPUT[i] == LEVEL_LOW)
					state[i] = BTN_LONG_PRESSED;
				else
				{
					state[i] = BTN_RELEASED;
					count[i] = 0;
				}
				break;
			default:
				break;
			}

			// button function

			// short press
			if (((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)) || (double_flag && (i == 8) && (double_cnt > 100)))
			{
				switch (i)
				{
				case 0:
					patt = shift_left(1, patt);
					break;
				case 1:
					patt = light_up(0, patt);
					break;
				case 2:
					patt = light_up(1, patt);
					break;
				case 3:
					patt = light_up(2, patt);
					break;
				case 4:
					patt = shift_right(1, patt);
					break;
				case 5:
					patt = light_up(4, patt);
					break;
				case 6:
					patt = light_up(5, patt);
					break;
				case 7:
					patt = light_up(6, patt);
					break;
				case 8:
					if (double_flag)
					{
						if (double_cnt < 100)
							patt = shift_left(3, patt);
						else
							patt = shift_left(1, patt);
						double_flag = 0;
					}
					else
					{
						double_flag = 1;
						double_cnt = 0;
					}

					break;
				default:
					break;
				}
				count[i] = 0;
			}
			// long press
			else if (state[i] == BTN_LONG_PRESSED)
			{
				switch (i)
				{
				case 0:
					patt = light_up(9, patt);
					break;
				case 4:
					patt = shift_right(1, patt);
					break;
				case 8:
					if (long_flag)
					{
						patt = shift_left(2, patt);
						long_flag = 0;
					}
					break;
				default:
					break;
				}
			}

			prestate[i] = state[i];
		}
	}
}
