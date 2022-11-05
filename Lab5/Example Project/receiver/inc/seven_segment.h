#ifndef SEVEN_SEGMENT_H

#define SEVEN_SEGMENT_H

#define DOUT P3_4                 
#define LOAD P3_5      
#define CLK  P3_6           

#define DECODE_MODE  0x09  
#define INTENSITY    0x0A 
#define SCAN_LIMIT   0x0B  
#define SHUT_DOWN    0x0C  
#define DISPLAY_TEST 0x0F  
#define matrixnum       1

void Write7219(unsigned char address,unsigned char dat);
void Writesingle7219(unsigned char chosen,unsigned char address,unsigned char dat);
void sendbyte(unsigned char address,unsigned char dat);
void Initial(void) ;
void draw(unsigned char *picture);
void singledraw(unsigned char chosen,unsigned char *picture);
void shiftdraw(unsigned char *picture);

#endif