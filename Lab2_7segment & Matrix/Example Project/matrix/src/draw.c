#include "draw.h"
#include "delay.h"
#include "write.h"

// MAX7219inintialize and setup inside register
void Initial(void)
{   unsigned char i;

    Write7219(SHUT_DOWN, 0x01);          // normal mode(0xX1)
    Write7219(DISPLAY_TEST, 0x00); 
    Write7219(DECODE_MODE, 0x00);        // select non-decode mode
    Write7219(SCAN_LIMIT, 0x07);         // use all 8 LED
    Write7219(INTENSITY, 0x00);          // set up intensity
 
    for(i=1; i<=8; i++) { 
    	Write7219(i, 0x00);              // turn off all LED
    }
}

//write all 8 digits/lines of a single 7-segment display/dot matrix.
void draw(unsigned char *picture)
{
    unsigned char i;

    for(i=1; i<=8; i++) {
        Write7219(i, picture[i-1]);
    }
}

// when there are multiple 7-segment displays/dot matrices connected in series, we need to specify which 7-segment display/dot matrix to write its all 8 digits/lines.
void singledraw(unsigned char chosen, unsigned char *picture)
{
    unsigned char i;

    for(i=1; i<=8; i++) {
        Writesingle7219(chosen, i, picture[i-1]);
    }
}

// electric scroll
void shiftdraw(unsigned char *picture)
{    
    unsigned char i;
    static char shift = 0;

    for(i=1; i<=8; i++) {
        Writesingle7219(1, i, picture[(shift+i-1) % 16]);
        Writesingle7219(2, i, picture[(shift+i+8-1) % 16]);
        // Writesingle7219(2,i,picture[(shift+i+8-1)%16]);
    }
    shift += 1;

    if(shift > 16) {
        shift = 0;
    }

   delay_ms(1000);
}