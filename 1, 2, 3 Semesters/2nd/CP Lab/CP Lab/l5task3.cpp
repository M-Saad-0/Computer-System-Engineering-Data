#include <iostream>
using namespace std;
main()
{
    int array1[10];
	
    for(int i=0; i<10; i++)
    {
    	cout<<"Enter value "<<i+1<<": ";
        cin>>array1[i];
    }

    for(int j=1; j<10; j++)
    {
        array1[0]=array1[0]+array1[j];
    }
    cout<<"The average value of the array: "<<array1[0]/10;
}

