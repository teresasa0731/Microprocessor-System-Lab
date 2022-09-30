#include "8051.h"
#include "delay.h"

#define led P1
#define INPUT1 P0_7	 // column 1
#define INPUT2 P0_6	 // column 2
#define INPUT3 P0_5	 // column 3
#define OUTPUT1 P0_4 // row 1
#define OUTPUT2 P0_3 // row 2
#define OUTPUT3 P0_2 // row 3

void delay_ms(unsigned int input_ms); // delay func
void scan_row(unsigned int row)
{
	switch (row)
	{
	case 1:

		OUTPUT1 = 0; // row1 output 0
		OUTPUT2 = 1; // row2 output 1
		OUTPUT3 = 1; // row3 output 1
		break;

	case 2:
		OUTPUT1 = 1; // row1 output 1
		OUTPUT2 = 0; // row2 output 0
		OUTPUT3 = 1; // row3 output 1
		break;

	case 3:
		OUTPUT1 = 1; // row1 output 1
		OUTPUT2 = 1; // row2 output 1
		OUTPUT3 = 0; // row3 output 0
		break;

	default:
		break;
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

	unsigned int preINPUT[10];
	unsigned char patt = 0x80; // led value
	unsigned int cnt = 0;

	// initialize preINPUT matrix
	for (int i = 0; i < 10; i++)
	{
		preINPUT[i] = 1;
	}

	while (1)
	{
		scan_row(1);

		// but1:short left1;long no move
		if ((INPUT1 == 0) && (preINPUT[1] == 1))
		{
			delay_ms(20);
			if (INPUT1 == 0)
			{
				delay_ms(1500);
				if (INPUT1 != 0)
					patt = shift_left(1, patt);
				else
					patt = light_up(9, patt);
			}
		}
		preINPUT[1] = INPUT1;

		// but2:light up P1.0
		if ((INPUT2 == 0) && (preINPUT[2] == 1))
		{
			delay_ms(20);
			if (INPUT2 == 0)
				patt = light_up(0, patt);
		}
		preINPUT[2] = INPUT2;

		// but3:light up P1.1
		if ((INPUT3 == 0) && (preINPUT[3] == 1))
		{
			delay_ms(20);
			if (INPUT3 == 0)
				patt = light_up(1, patt);
		}
		preINPUT[3] = INPUT3;

		// scan row 2
		scan_row(2);

		// but4:light up P1.2
		if ((INPUT1 == 0) && (preINPUT[4] == 1))
		{
			delay_ms(20);
			if (INPUT1 == 0)
				patt = light_up(2, patt);
		}
		preINPUT[4] = INPUT1;

		// but5:short right1;long right
		if ((INPUT2 == 0) && (preINPUT[5] == 1))
		{
			delay_ms(20);
			if (INPUT2 == 0)
			{
				delay_ms(1500);
				if (INPUT1 != 0)
				{
					patt = shift_right(1, patt);
					cnt++;
				}
			}
		}

		else if ((INPUT2 == 0) && cnt)
		{
			patt = shift_right(1, patt);
			delay_ms(100);
		}
		else
		{
			cnt = 0;
		}
		preINPUT[5] = INPUT2;

		// but6:light up P1.4
		if ((INPUT3 == 0) && (preINPUT[6] == 1))
		{
			delay_ms(20);
			if (INPUT3 == 0)
				patt = light_up(4, patt);
		}
		preINPUT[6] = INPUT3;

		scan_row(3);

		// but7:light up P1.5
		if ((INPUT1 == 0) && (preINPUT[7] == 1))
		{
			delay_ms(20);
			if (INPUT1 == 0)
				patt = light_up(5, patt);
		}
		preINPUT[7] = INPUT1;

		// but8:light up P1.6
		if ((INPUT2 == 0) && (preINPUT[8] == 1))
		{
			delay_ms(20);
			if (INPUT2 == 0)
				patt = light_up(6, patt);
		}
		preINPUT[8] = INPUT2;

		// but9:short left1;long left2;fast2 left3
		if ((INPUT3 == 0) && (preINPUT[9] == 1) && (cnt == 0))
		{
			delay_ms(20);
			if (INPUT3 == 0)
			{
				delay_ms(500);
				if (INPUT3 != 0)
					patt = shift_left(1, patt);
				else
				{
					delay_ms(500);
					if (INPUT3 != 0)
						patt = shift_left(3, patt);
					else
						patt = shift_left(2, patt);
				}
			}
		}
		preINPUT[9] = INPUT3;
	}
}
