#include <iostream>
using namespace std;
main()
{
	int nm;
	cout<<"Enter any number: ";
	cin>>nm;
	if(nm%5==0 && nm%7==0 && nm%11!=0)
	{
		cout<<"\nMultiple of 5\nDivisible by 7 and not by 11.";
	}
	else
	{
		cout<<"\nThe number is either divisible by 11 or is not a multiple of 5 and 7";
	}
}