#include <iostream>
using namespace std;
main()
{
	int ar[10];
	int*pr=ar;
	cout<<"Enter 10 vlaues: ";
	for(int i=0; i<10; i++)
    {
        cin>>*(pr+i);
	}
	for(int j=0; j<10; j++)
    {
        cout<<*(pr+j)<<"  ";
	}
	
}


