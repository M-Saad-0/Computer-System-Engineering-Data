#include <iostream>
using namespace std;
main()
{
    int ar[5];
    cout<<"Enter 5 values: ";
    for(int i=0; i<5; i++)
    {
        cin>>ar[i];
    }
    cout<<endl<<"The reversed array: ";
    for(int j=4; j>=0; j--)
    {
        cout<<ar[j]<<"   ";
    }

}

