#include <reg51.h>
#include <stdio.h>

sbit port =P1^1;
sbit button=P3^2;
int val;
int c=1;
void delay(unsigned int x);
void sine_wave();
void square();
void traingular_wave();
void sawtooth_wave();

void delay(unsigned int x){
	unsigned int i;
	for(i=0;i<x;i++);
	
}
void sine_wave(){
	int sine[]={128,192,238,255,238,192,128,64,17,0,17,64, 128,192,238,255,238,192,128,64,17,0,17,64};
	int i;
	for(i=0;i<23; i++){
		P1=sine[i];
		delay(15);	
	}	
}
void square(){
	P1=0x00;
	delay(100);
	P1=0xFF;
	delay(100);
	

	
}

void triangular_wave() {
    int i;
    for(i = 0; i < 256; i++) {
        P1 = i;  
        delay(10);
    }
    for(i = 255; i >= 0; i--) {
        P1 = i;  
        delay(10);
    }
}

void sawtooth_wave() {
    int i;
    for(i = 0; i < 256; i++) {
        P1 = i;  
        delay(10);
    }
}

void init_interrupt() {
    IT0 = 1;  
    EX0 = 1;  
    EA = 1;   
}

void i_e() interrupt 0{
	
	c++;
	if(c==4){
		c=0;
	}
	
	
}


void main(void)
 { 
   
   init_interrupt(); 
   while(1)
   {   
	if(c<3 && button==0)
	{
	    c++;
	}
	else if(c==3 && button==0)
	{
	    c=0;
	}
	if(c==0)
	{
	    if(button==0)
	    {
	       c=1;
	    }
	    else
	    {
		    sine_wave();
	     }
	}
	
	else if(c==1)
	{
	    if(button==0)
	    {
		    c=2;
	    }
      else
	    {

		  square();
	    }
	}
	else if(c==2)
	{
               if(button==0)
	       {
		         c=3;
	       }
               else
	       {
		       triangular_wave();
				 }
	 }
	 
	else if(c==3)
	{
	    if(button==0)
	    {
	       c=0;
	    }
            else
	    {
		    sawtooth_wave();
	    }	
	}
   }

}