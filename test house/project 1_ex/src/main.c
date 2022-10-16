#include "8051.h"

unsigned char i;

void S(unsigned char address,unsigned char dat){
    for(i=0;i<8;i++){
        P2_5=0;P2_7=(address&0x80);address<<=1;P2_5=1;
    }
    for(i=0;i<8;i++){
        P2_5=0;P2_7=(dat&0x80);dat<<=1;P2_5=1;
    }
}

void W(unsigned char address,unsigned char dat){
    P2_6=0;
    for(i=1;i<=2;i++){
        S(address,dat);
    }
    P2_6=1;
}

unsigned char j;void D(unsigned long n){
    for(j=1;j<9;j++){
        if(n||j==1)
            W(j,n%10);
        else 
            W(j,0x0f);
        n/=10;
    }
}

struct bool{
    unsigned char b1:1;
    unsigned char b2:1;
    unsigned char b3:1;
    unsigned char r:1;
    unsigned char bs:1;
    unsigned char ac:1;
    unsigned char eq:1;
    unsigned char f:1;
};

struct bool g={1,1,1,1,1,1,1,0};

unsigned char K(void)
{
    while (1){
        if((P3_2==0)&&(g.r==1)){
            while (P3_2==0);
            return 10;
        }
        if((P3_3==0)&&(g.bs==1)){
            while (P3_3==0);
            return 11;
        }
        if((P2_0==0)&&(g.ac==1)){
            while (P2_0==0);
            return 12;
        }
        if((P2_1==0)&&(g.eq==1)){
            while (P2_1==0);
            return 13;
        }
        for(P0_4=0,P0_5=1,P0_6=1,P0_7=1;!(P0_4&P0_5&P0_6&P0_7);P0_7=P0_6,P0_6=P0_5,P0_5=P0_4,P0_4=1){
            if((P0_1==0)&&(g.b1==1)){
                while (P0_1==0);
                return (!P0_4)*5-(!P0_4)*4+(!P0_5)*4+(!P0_6)*7;
            }
            if((P0_2==0)&&(g.b2==1)){
                while (P0_2==0);
                return (!P0_4)*2+(!P0_5)*5+(!P0_6)*8;
            }
            if((P0_3==0)&&(g.b3==1)){
                while(P0_3==0);
                return (!P0_4)*3+(!P0_5)*6+(!P0_6)*9;
            }
        }
        g.b1=P0_1;
        g.b2=P0_2;
        g.b3=P0_3;
        g.r=P3_2;
        g.bs=P3_3;
        g.ac=P2_0;
        g.eq=P2_1;
        for(i=0;i<255;i++);
    }
}

void main(void)
{
    unsigned long n1=0;
    unsigned long n2=0;
    unsigned char o=0;
    unsigned char r1=0;
    unsigned char r2=0;
    W(0x0C,0x01);
    W(0x0F,0x00);
    W(0x09,0xff);
    W(0x0B,0x07);
    W(0x0A,0x08);
    for(j=1;j<=8;j++)
        W(j,0x0f);
    while(1){
        o=K();
        if(o<10){
            if(g.f){
                n1=0;g.f=0;
            }
            if(n1<10000000)
                n1=n1*10+o;
                r2=r1+(!r1)*r2;r1=0x00;
        }else if(o==10){
            n1=(r2==0x10)*(n1+n2)+(r2==0x20)*(n2-n1)+(r2==0x40)*(n1*n2)+(r2==0x80)*(n2/n1)+(!r2)*n1;
            r2=0;
            n2=n1;
            g.f=1;
            r1=r1<<1;
            if(r1==0){
                r1=0x10;
                }
            }else if(o==11){
                n1/=10;
            }else if(o==12){
                n2=0;
                n1=0;
                r1=0;
                r2=0;
            }else if(o==13){
                n1=(r2==0x10)*(n1+n2)+(r2==0x20)*(n2-n1)+(r2==0x40)*(n1*n2)+(r2==0x80)*(n2/n1)+(!r2)*n1;n2=n1;
                g.f=1;
                r1=0;
                r2=0;
            }
        P1=~r1;
        D(n1);
    }
}