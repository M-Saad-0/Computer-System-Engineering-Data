#include <iostream>
using namespace std;
main()
{
	int n1, n2, gr;
	cout<<"Enter the 1st number: ";
	cin>>n1;
	cout<<"Enter the 2nd number: ";
	cin>>n2;
	gr=(n1>n2)? n1:n2;
	cout<<"Greater  of the two is "<<gr;
}