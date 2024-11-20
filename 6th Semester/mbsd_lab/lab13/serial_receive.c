#include <reg51.h>

void serial_com() {
	TMOD = 0x20;
	TH1 = 0xFD;
	SCON = 0x50;
	PCON = 0x00;
	TR1 = 1;
}

void main(void) {
	serial_com();
	while(1) {
		while(RI==0);
			RI = 0;
		P1 = SBUF;
	}
}