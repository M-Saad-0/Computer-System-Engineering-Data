	#include <stdio.h>
	#include <reg51.h>

	sbit RowA = P1^0;
	sbit RowB = P1^1;
	sbit RowC = P1^2;
	sbit RowD = P1^3;
	sbit C1 = P1^4;
	sbit C2 = P1^5;
	sbit C3 = P1^6;
	sbit C4 = P1^7;

	unsigned int value;
	unsigned int bcd;
	
	void READ_SWITCHES(void);
						
						
						

	void delay(int a){
			int i;
		for(i=0; i<a; i++);
	}

	int main(void){
			while(1)
			{
				READ_SWITCHES();
				P3 = value;
				P2 = bcd;
			}
	}


	void READ_SWITCHES(void){
			RowA = 0; 
			RowB = 1;
			RowC = 1;
			RowD = 1;
		
		if(C1 == 0) {bcd = 1; value =  0xF9;}
		if(C2 == 0) {bcd = 2; value =  0xA4;}
		if(C3 == 0) {bcd = 3; value =  0xB0;}
		
			RowA = 1; 
			RowB = 0;
			RowC = 1;
			RowD = 1;
		
		if(C1 == 0) {  bcd = 4; value =  0x99;}
		if(C2 == 0) {  bcd = 5; value =  0x92;}
		if(C3 == 0) {  bcd = 6; value =  0x82;}
		
			RowA = 1; 
			RowB = 1;
			RowC = 0;
			RowD = 1;
		
		if(C1 == 0) {  bcd = 7; value =  0xF8;}
		if(C2 == 0) {  bcd = 8; value =  0x80;}
		if(C3 == 0) {  bcd = 9; value =  0x98;}
		 
			RowA = 1; 
			RowB = 1;
			RowC = 1;
			RowD = 0;
		if(C1 == 0) {  bcd = 0Xff; value =  0xFF;}
		if(C2 == 0) {  bcd = 0; value =  0xC0;}
		if(C3 == 0) {  bcd = 0xff; value =  0xFF; }	
		
	}

