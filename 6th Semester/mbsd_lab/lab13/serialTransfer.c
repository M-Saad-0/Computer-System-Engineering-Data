#include <reg51.h>
#include <studio.h>
#define input P1

sbit rd = P3^4;
sbit wr = P3^5;
sbit intr= P3^2;

void adc();
void serial_com();
void sample_rate(unsigned int i);

void main(void) {
	serial_com();
	while(1) {
		adc();
		SBUF = input;
		while(TI==0);
			TI = 0;
	}
}

void adc() {
	sample_rate(2);
	rd = 1;
	wr = 0;
	wr = 1;
	while(intr==1);
		rd = 0;
}

void serial_com() {
	TMOD = 0x20;
	TH1 = 0xFD;
	SCON = 0x50;
	PCON = 0x00;
	TR1 = 1;
}

void sample_rate(unsigned int i) {
	for(i=0; i<125; i++) {}
}