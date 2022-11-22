#ifndef SEVEN_SEGMENT_H

#define SEVEN_SEGMENT_H

void sendbyte(unsigned char address, unsigned char dat);
void Write7219(unsigned char address, unsigned char dat);
void Initial(void);

#endif