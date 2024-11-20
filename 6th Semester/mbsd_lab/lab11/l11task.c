#include <reg51.h>

sbit rs = P3^7;
sbit rw = P2^6;
sbit en = P3^6;

sbit rd_adc = P3^0;
sbit wr_adc = P3^1;
sbit intr_adc = P3^2;

void delay(unsigned int);
void cmdwrt(unsigned char);
void datawrt(unsigned char);
void convert_display(unsigned char);

void main(void) {
  unsigned char i;
  unsigned char cmd[] = {0x38, 0x01, 0x06, 0x0c, 0x82};
  unsigned char data1[] = "Temperature:";
  unsigned char value;

  P1 = 0xFF;
  P2 = 0x00;

  for (i = 0; i < 5; i++) {
    cmdwrt(cmd[i]);
    delay(1);
  }

  intr_adc = 1;
  rd_adc = 1;
  wr_adc = 1;

  while (1) {
    wr_adc = 0;
    delay(1);
    wr_adc = 1;

    while (intr_adc == 1);
    rd_adc = 0;
    value = P1;
    convert_display(value);
    delay(1000);
    rd_adc = 1;
  }
}

void cmdwrt(unsigned char x) {
  P2 = x;
  rs = 0;
  rw = 0;
  en = 1;
  delay(1);
  en = 0;
}

void datawrt(unsigned char y) {
  P2 = y;
  rs = 1;
  rw = 0;
  en = 1;
  delay(1);
  en = 0;
}

void convert_display(unsigned char value) {
  unsigned char x1, x2, x3;

  cmdwrt(0xC0);

  x1 = (value / 10);
  x1 = x1 * 2;
  x1 = x1 + (0x30);

  x2 = value % 10;
  x2 = x2 + (0x30);

  x3 = 0xDF;

  datawrt(x1);
  datawrt(x2);
  datawrt(x3);
}
