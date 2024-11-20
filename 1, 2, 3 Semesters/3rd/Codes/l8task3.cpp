#include <iostream>
using namespace std;
main()
{
    int number;
    cout<<"Enter an integer: ";
    cin>>number;
    int*pn=&number;
    for(int i=1; i<=5; i++)
    {
        *pn+=1;
    }
    cout<<*pn;
}
