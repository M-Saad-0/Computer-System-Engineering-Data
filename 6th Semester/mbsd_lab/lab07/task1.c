#include <reg51.h>

sbit pin = P3^0;
int i = 0;

void startTimer0()
{
	TR0 = 1; // Start Timer 0
}

void startTimer()
{
	TMOD = 0x01; // Set Timer 0 in mode 1 (16-bit timer)
	IE = 0x82;   // Enable Timer 0 interrupt
}

void timer() interrupt 1
{
	TH0 = 0x3C; // Set high byte for 200 ms delay
	TL0 = 0xAF; // Set low byte for 200 ms delay
}

void main(void)
{ 
	startTimer0();
	startTimer();
	while (TF0 == 0); // Wait until timer overflows (200 ms)
	{
		for (i = 0; i < 3; i++)
		{
			startTimer();startTimer0();
			if (i == 2 && TF0 == 1)
				break;
		}
		pin = ~pin; // Toggle the LED
	}
}
