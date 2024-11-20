#include <iostream>
using namespace std;
main()
{
	float mnr, mjr, area, pi;
	pi=3.14;
	cout<<"Enter the Minor axis: ";
	cin>>mnr;
	cout<<"Enter the major axis: ";
	cin>>mjr;
	area=pi*mnr*mjr;
	cout<<"The area of the ellipse is: "<<area;
}