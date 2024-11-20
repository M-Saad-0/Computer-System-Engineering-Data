#include <iostream>
using namespace std;
main()
{
	int num;
	string mn="Monday", tu="Tuesday", wn="Wednesday";
	string th="Thursday", fr="Friday", sat="Saturday", su="Sunday";
	cout<<"Enter a number: ";
	cin>>num;
	if (num==1)
	{
		cout<<mn;	
	}	
	else if (num==2)
	{
		cout<<tu;	
	}	
	else if (num==3)
	{
		cout<<wn;	
	}	
	else if (num==4)
	{
		cout<<th;	
	}	
	else if (num==5)
	{
		cout<<fr;	
	}	
	else if (num==6)
	{
		cout<<sat;	
	}	
	else if (num==7)
	{
		cout<<su;	
	}	
} 