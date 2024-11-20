#include <reg51.h>
#include <stdio.h>

sbit pin = P3^0;
int i = 0;

void startTimer0()
{
	TR0 = 1;
}

void startTimer()
{
	TMOD = 0x01;
	IE = 0x82;
}

void timer() interrupt 1
{
	TH0 = 0xff;
	TL0 = 0xbe;
}

void main(void)
{ 
	startTimer0();
  startTimer();
  while (TF0==0);
{
	for(i=0;i<3;i++){startTimer();if(i==2&&TF0==0)break;}
		pin  = ~pin;
}
}