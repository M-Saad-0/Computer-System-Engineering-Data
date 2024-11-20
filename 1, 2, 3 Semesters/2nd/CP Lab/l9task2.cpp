#include <iostream>
using namespace std;
main()
{
    int linech=1;
    int ar2[12];
    int*pt=ar2;
    for(int i=0; i<12; i++)
    {
        cout<<"Enter value "<<i+1<<": ";
        cin>>*(pt+i);
    }
    for(int j=0; j<12; j++)
    {
        cout<<"Value "<<j+1<<": "<<*(pt+j)<<"    ";
        if(linech%3==0)
            cout<<endl;
        linech++;
    }
}

