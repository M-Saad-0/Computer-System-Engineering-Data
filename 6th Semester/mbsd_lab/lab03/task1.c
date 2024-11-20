#include <reg51.h>

sbit led1 = P1^0;
sbit led2 = P1^1;
sbit led3 = P1^2;
sbit led4 = P1^3;
sbit led5 = P1^4;
sbit led6 = P1^5;
sbit led7 = P1^6;
sbit led8 = P1^7;
sbit switch1 = P2^0;
sbit switch2 = P2^1;
sbit switch3 = P2^2;

void main(void) {
    while (1) {
        if(switch1==0 && switch2==0 && switch3==0)
				{ P1=0x00; led8=1;}
				else if(switch1==0 && switch2==0 && switch3==1)
				{ P1=0x00; led7=1;}
				else if(switch1==0 && switch2==1 && switch3==0)
				{ P1=0x00; led6=1;}
				else if(switch1==0 && switch2==1 && switch3==1)
				{ P1=0x00; led5=1;}
				else if(switch1==1 && switch2==0 && switch3==0)
				{ P1=0x00; led4=1;}
				else if(switch1==1 && switch2==0 && switch3==1)
				{ P1=0x00; led3=1;}
				else if(switch1==1 && switch2==1 && switch3==0)
				{ P1=0x00; led2=1;}
				else if(switch1==1 && switch2==1 && switch3==1)
				{ P1=0x00; led1=1;}
}
}
