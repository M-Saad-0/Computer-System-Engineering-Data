#include <reg51.h>

void HIGH(void);
void LOW(void);

unsigned char R1;
unsigned char R7; 
sbit IN1 = P1^0;
sbit IN2 = P1^1;
sbit RD = P3^3;
sbit WR = P3^4;
sbit INTR = P3^5;
sbit P3_7 = P3^7;


void main(void) {
    unsigned char A, B; 
    
    
    IN1 =1;  
    IN1 = 0; 
    
    while (1) {
        RD = 1;  
        WR = 0; 
        INTR = 1;  
        WR = 1;  
			
        while (INTR==0); 
        RD = 0; 
        P3_7 = 0; 

        TMOD = 0x00; 

        R1 = P0;    
        A = R1;     
        B = 0x03;   
        A = A * B;  
        P2 = A;     

        A = ~A;	     
        R7 = A;     

        TR0 = 1;    
        IN2 = 0; 
        HIGH(); 
        TR0 = 1;    
        LOW();  	

        
    }
}

void HIGH(void) {
    IN2 = 1;   
    TF0 = 0;    
    TH0 = R7;   
    
    while (!TF0); 

    TF0 = 0;      
}

void LOW(void) {
    unsigned char A;

    IN2 = 0;  
    A = 0xFF;  
    A -= R7;   
    TH0 = A;   
    
    while (!TF0); 

    TF0 = 0;      
}
