#include <iostream>
using namespace std;
main()
{
    string myArray[2];
    cout<<"Enter your name and registration number: ";
    for(int i=0; i<2; i++)
    {
        cin>>myArray[i];
    }
    for(int  j=0; j<2; j++)
    {
        (j==0)? cout<<"Name: ":cout<<"Registration No: ";
        cout<<myArray[j]<<endl;
    }
}

