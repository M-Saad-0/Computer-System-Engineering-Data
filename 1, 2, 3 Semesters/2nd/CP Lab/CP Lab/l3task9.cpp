#include <iostream>
using namespace std;
main()
{
	float unts, bill, srch;
	string ID;
	cout<<"Enter the number of units: ";
	cin>>unts;
	cout<<"Enter customer ID: ";
	cin>>ID;
	cout<<"\n\nUnits consumed: "<<unts<<endl;
	cout<<"Customer ID: "<<ID<<endl;
	if(unts<199)
	{
		bill=unts*1.20;
		cout<<"The amount of charge @Rs. 1.20 per unit: "<<bill<<endl;
	}	
	if(unts >=200 && unts<400)
	{
		bill=unts*1.50;
		cout<<"The amount of charge @Rs. 1.50 per unit: "<<bill<<endl;
	}
	if(unts >=400 && unts<600)
	{
		bill=unts*1.80;
		cout<<"The amount of charge @Rs. 1.80 per unit: "<<bill<<endl;
	}
	if(unts >=600)
	{
		bill=unts*2;
		cout<<"The amount of charge @Rs. 2 per unit: "<<bill<<endl;
	}
	if(bill>400)
	{
		srch=bill*0.15;
		cout<<"Surcharge Amount: "<<srch<<endl;
		bill=bill+srch;
	}
	cout<<"Net Amount Paid by the Customer: "<<bill;
}