#ifndef DRAW

#define DRAW

//define reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

// function declaration
void Initial(void);
void draw(unsigned char *picture);
void singledraw(unsigned char chosen,unsigned char *picture);
void shiftdraw(unsigned char *picture);

#endif