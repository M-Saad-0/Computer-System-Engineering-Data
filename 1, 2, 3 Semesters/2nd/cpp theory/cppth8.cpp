#include <iostream>
using namespace std;
//void ui(int*);
//define arsize 10
void ui(int pt[])
{
	for(int i=0; i<10; i++)
	{
	*(pt+i)=40;
	}
	for(int j=0; j<10; j++)
	{
		*pt=*pt+*(pt+j);
	}
	cout<<*pt<<endl;
}
int main()
{
	int arsize=10;
	int OneArray[arsize]={1,2,3,4,5,6,7,8,9,0};
	ui(OneAxrray);
	                
		for(int j=0; j<10; j++)
	{
		cout<<OneArray[j]<<endl;
	}      
	return 0;
}
