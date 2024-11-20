#include <reg51.h>
#include <stdio.h>

sbit button = P3^2;
unsigned int count = 0;
unsigned int j = 0;


unsigned int sinWave[] = {50, 60, 70, 80, 90, 100, 110, 100, 90, 80, 70, 60, 50, 50, 60, 70, 80, 90, 100, 110, 100, 90, 80, 70, 60, 50};
unsigned int triangleWave[] = {100, 90,  80, 70, 60, 50};
unsigned int squareWave[] = {50, 200};

void delay(int i) {
	for(j=0; j<i; j++) {
	}
}


void counter() interrupt 0 {
	count++;
	if(count==3) {
		count = 0;
	}
}
void waveChanger(){
			if(count==0){
				unsigned int i=0;
				for(i=0; i<25; i++)
					P1 = sinWave[i];
				delay(500);
				
			}else if(count==1){
				unsigned int i=0;
				for(i=0; i<6; i++)
					P1 = triangleWave[i];
				delay(500);
			} else {
				unsigned int i=0;
				for(i=0; i<2; i++)
					P1 = squareWave[i];
				delay(500);
				}
			}

			

void main(void){ 
		EA = 1;
    EX0 = 1;
		IT0= 1;
		while(1) {
			waveChanger();
		}
    
 }
