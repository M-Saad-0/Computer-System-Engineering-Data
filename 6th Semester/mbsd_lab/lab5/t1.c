
#include <reg51.h>

void delay()
{
	int i=0;
	for(i=0; i<10000; i++)
	{
	}
}

void main()
{
	P1 = 0x40;
	delay();
	P1 = 0x79;
	delay();
	P1 = 0x24;
	delay();
	P1 = 0x30;
	delay();
	P1 = 0x19;
	delay();
	P1 = 0x12;
	delay();
	P1 = 0x02;
	delay();
	P1 = 0x78;
	delay();
	P1 = 0x00;
	delay();
	P1 = 0x10;
	delay();
}

//_gfe dcba	hex
//0100 0000	40
//0111 1001 79
//0010 0100 24
//0011 0000 30
//0001 1001 19
//0001 0010 12
//0000 0010 02
//0111 1000 78
//0000 0000 00
//0001 0000 10

/*


#include <reg51.h>

void delay()
{
  // No need for delay function in this case
}

void main()
{
  unsigned char hex_values[] = {0xbf, 0x86, 0xdb, 0xcf, 0xe6, 0xed, 0xfd, 0x87, 0xff, 0xef};
  int i;

  for (i = 0; i < sizeof(hex_values); i++) {
    P1 = hex_values[i];
    // Add a small delay here if needed (optional)
  }
  
  // Loop can be repeated indefinitely for continuous display (optional)
  while (1) {
    // ...
  }
}

0xbf: 10111111
0x86: 10000110
0xdb: 11011011
0xcf: 11001111
0xe6: 11100110
0xed: 11101101
0xfd: 11111101
0x87: 10000111
0xff: 11111111
0xef: 11101111*/