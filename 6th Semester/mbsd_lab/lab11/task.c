void writedata(char t){
		RS =1;
		P2 = t;
		E = 1;
		delay(100);
		E =0;
		delay(100);
}

void writecmd(int z){
		RS =0;
		P2 = z;
		E = 1;
		delay(100);
		E =0;
		delay(100);
}

double adc() {
	double temp;
	READ=1;
	WRITE=1;
	delay(1);
	WRITE=1;
	while(INTERRPUT=1);
	READ=0;
	temp=input;
	delay(3);
	return temp;
}

void delay(int a){
		int i;
	for(i=0; i<a; i++);
}