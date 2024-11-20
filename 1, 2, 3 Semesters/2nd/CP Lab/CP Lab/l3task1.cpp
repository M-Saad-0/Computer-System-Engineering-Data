#include <iostream>
using namespace std;
main()
{
	int num1;
	int num2;
	int num3;
	cout<<"Enter the first number: ";
	cin>>num1;
	cout<<"Enter the second number: ";
	cin>>num2;
	cout<<"enter the third number: ";
	cin>>num3;
	if (num1>num2 && num1>num3)
	{
		cout<<"The first number is greater: "<<num1;
	}
	else if (num2>num1 && num2>num3)
	{
		cout<<"The second number is greater: "<<num2;
	}
	else if (num3>num1 && num3>num2)
	{
		cout<<"The third number is greater: "<<num3;
	}
	else
	{
		cout<<"The numbers are equal";
	}
}
