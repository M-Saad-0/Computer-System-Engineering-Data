#include <iostream>
using namespace std;
main()
{
	int num;
	cout<<"Enter a number: ";
	cin>>num;
	if(num%2==0)
	{
		cout<<"Even Number";
	}
	else if(num%2==1)
	{
		cout<<"Odd Number";
	}
	else
	{
		cout<<"Not a number or negative number";
	}
}