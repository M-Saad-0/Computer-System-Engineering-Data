
#include <reg51.h>


	unsigned int i = 0x00;
	unsigned int j = 0x00;

void Delay(){
	int k=0;
	for(k=0;k<10000;k++){}
}

void bigDelay() {
	int m=0;
	for(m; m<20;m++)
		Delay();
	
}

void main()
{

	while(1){
	for(i=0; i<=0x90; i=i+0x10) {
			for(j=0x00; j<=0x0p9; j=j+0x01) {
				bigDelay();
				P1 = i|j;
	}}}
}
