#include "param.h"
#include "adc.h"
#include "seven_segment.h"
#include "delay.h"

unsigned int adc_value;
unsigned int segment_out;
unsigned int segment_voltage ;
char led_out;

unsigned char seg[10] = {
	0x7E,  //0
	0x30,  //1
	0x6D,  //2
	0x79,  //3
	0x33,  //4
	0x5B,  //5
	0x5F,  //6
	0x70,  //7
	0x7F,  //8
	0x7B	 //9
};

// unsigned char seg_dot[3] = {
// 	0xFE,  //0.
// 	0xB0,  //1.
//   0xED   //2.
// };

void main()
{
  DOUT = 1; //Setting gpio input mode
  LOAD = 1; 
  CLK = 0;
  DIN = 0;

  Initial();

  while(1)
  {
    // adc_value = read_adc3202(0);    // Read voltage from ADC channel 0
    // led_out = adc_value >> 4;       // Right shift 4 bit to obtain 8-bit signal from the original 12 bits
    // P1 = ~led_out;                  // Display on LED
    // delay_ms(200);
    adc_value =  read_adc3202(1);    // Read voltage from ADC channel 1 
    segment_voltage = adc_value;
    segment_out = 100000/(0.2554*adc_value-40.9);        // 1 / (0.2554 * voltage – 0.0409)
  
    Write7219(0x08, seg[segment_out / 1000]);    // Display on MAX7219
    Write7219(0x07, seg[segment_out % 1000 / 100]+ 0x80);
    Write7219(0x06, seg[segment_out % 100 / 10]);
    Write7219(0x05, seg[segment_out % 10]);


    Write7219(0x04, seg[segment_voltage / 1000]+ 0x80);    // Display on MAX7219
    Write7219(0x03, seg[segment_voltage % 1000 / 100]);
    Write7219(0x02, seg[segment_voltage % 100 / 10]);
    Write7219(0x01, seg[segment_voltage % 10]);
    delay_ms(500);
  }
}