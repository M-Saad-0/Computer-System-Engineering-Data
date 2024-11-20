#include <iostream>
using namespace std;
main()
{
	int arr[5]={1,2,3,4, 5};
	int*p;
	p=arr;//pointer is just looking at the first element of the array
	cout<<*p;
	
	*p=10;
	cout<<arr[0]<<endl;
	p++;
	cout<<*p<<endl;
	*p=20;
	cout<<*p<<endl;
	p=&arr[2];	
	cout<<*p;
	*p=30;
	cout<<"\n"<<*p<<endl;
	p=arr+3;
	cout<<*p<<endl;
	*p=40;
	cout<<*p<<endl;
	//*(p+4)=50;
	//cout<<*p<<endl;
	p=arr;
	cout<<*p<<endl;
	p=p+4;
	*p=50;
	cout<<*p<<endl<<"This is updated array: ";
	p=arr;
	for(int i=0; i<5;i++)
	{
		cout<<arr[i];
		
	}
	cout<<endl<<"This is by another method: ";
	for(int j=0; j<5; j++)
	{
		cout<<*(p+j)<<"     ,    ";
	}
}