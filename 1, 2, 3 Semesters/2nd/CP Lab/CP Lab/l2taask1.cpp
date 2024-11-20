#include <iostream>
using namespace std;
main()
{
	float F, C, K;
	cout<<"Enter the temperature in Fahrenheit: ";
	cin>>F;
	C=F/1.8-32/1.8;
	K=C+273;
	cout<<"The temperature in Celciuss is: "<<C<<endl;
	cout<<"The temperature in Kelvin is: "<<K;
	
}
