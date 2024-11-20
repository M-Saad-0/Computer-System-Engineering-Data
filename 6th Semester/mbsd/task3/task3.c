#include <reg51.h>
#include <stdio.h>

sbit button = P3^2;

sbit pin =P2^0;
unsigned int count = 0;
unsigned int btn = 1;

void start_timer0(){
   TR0 = 1;
}
void timer0_interrupt() interrupt 1 {

			pin = ~pin;
		
			if(count==0){
			
				if(pin==0){
				
					TH0= 0xd8;
					TL0 = 0xef; 
				}
				else{
					TH0= 0x50;
					TL0 = 0x37; 
				}
			}else if(count==1){
			
				if(pin==0){
				
					TH0= 0xd8; 
					TL0 = 0xef; 
				}
				else{
					TH0= 0x63; 
					TL0 = 0xbf; 
				}
			}else if(count==2){
				if(pin==0){
				
					TH0= 0xd8; 
					TL0 = 0xef; 
				}
				else{
					TH0= 0xc5; 
					TL0 = 0x67; 
				}
			} else {
				if(pin==0){
				
					TH0= 0xd8; 
					TL0 = 0xef; 
				}
				else{
					TH0= 0xf6; 
					TL0 = 0x3b; 
				}
				}
			}
void init_timer0(){
   TMOD = 0x01;
   IE = 0x82;
} 

void main(void){ 
    P2 = 0;
    init_timer0();
    start_timer0();
		
    while (1){
			P1 = count;
		if(button ==0 && btn)
			{
				count++;
				btn = 0;
			}
			else if(button == 1)
			{btn = 1;}
			if(count==3){ 
				count=0;
			}
		}
    
 }
