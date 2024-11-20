#include <iostream>
using namespace std;
int main()
{
	int var1, var2, add;
	cout<<"Enter first integer: ";
	cin>>var1;
	cout<<"Enter the second integer: ";
	cin>>var2;
	int a=var1+var2;
	int*sum=&a;
	add=*sum;
	//var1+var2;
	//sum=&add;
	cout<<add;
}

