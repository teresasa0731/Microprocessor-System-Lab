#include "8051.h"
#include "delay.h"


unsigned char LED=0x80;
main()
{ 	
  EA=1;
  EX0=1; 
  EX1=1;	
  TCON=0x01; 
  while(1)
  { 
    P1=~LED;
    delay_ms(1000);	
    LED>>=1;
    if(LED==0)
      LED=0x80;
  }
} 

void EX0_int(void) __interrupt (0) // External interrupt 0
{
  unsigned char j;
  j=LED;      	
  P1=0x0F;
  delay_ms(10000); 
  LED=j; 
} 

void EX1_int(void) __interrupt (2) // External interrupt 1
{
  unsigned char j;
  j=LED;      	
  P1=0x00;
  delay_ms(10000); 
  LED=j; 
} 	
