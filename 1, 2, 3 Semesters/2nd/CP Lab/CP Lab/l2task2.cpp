#include <iostream>
using namespace std;
main() 
{
	int a, b, c, d, e;
	cout<<"Enter five integers a, b, c, d and e: "<<endl;
	cout<<"Enter the integer 'a': ";
	cin>>a;
	cout<<"Enter the integer 'b': ";
	cin>>b;
	cout<<"Enter the integer 'c': ";
	cin>>c;
	cout<<"Enter the integer 'd': ";
	cin>>d;
	cout<<"Enter the integer 'e': ";
	cin>>e;
	
	int nmrtr, dntr, result;
	nmrtr=a*a*a+b-d/b;
	dntr=a*b+a*c*e/b+a*a*c/b-5; //by simplifying
	result=nmrtr/dntr;
	cout<<"The result is: "<<result;
}
