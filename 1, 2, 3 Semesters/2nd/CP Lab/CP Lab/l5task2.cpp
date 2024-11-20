#include <iostream>
using namespace std;
main()
{
    int myArray[12], val=1;
    for(int i=0; i<12; i++)
    {
       cout<<"Enter value "<<i<<": ";
       cin>>myArray[i];
    }
    cout<<"\n\n";
    for(int j=0; j<12; j++)
    {
        cout<<"Value "<<j<<" :"<<myArray[j];

        if(val%3==0)
        {
            cout<<endl;
        }
        val++;
    }
}

