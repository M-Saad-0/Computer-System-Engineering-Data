#include <iostream>
using namespace std;
main()
{
	int mnth;
	cout<<"Enter a month number: ";
	cin>>mnth;
	if (mnth==1 || mnth==3 || mnth==5 || mnth==7 || mnth==8 || mnth==10 || mnth==12)
	{
		cout<<"The number of days are 31";
	}
	else if(mnth==4 ||mnth==6 || mnth==9 || mnth==11)
	{
		cout<<"The number of days are 30";
	}
	else if(mnth==2)
	{
		cout<<"The number of days are 29 (28 after every 4 years)";
	}
}