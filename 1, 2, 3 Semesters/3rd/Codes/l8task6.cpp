#include <iostream>
using namespace std;
main()
{
    int n, sum=0;
    cout<<"Enter a number: ";
    cin>>n;
    int*pr=&n;
    int*qr=&sum;
    for(int i=0; i<n; i++)
    {
        if((*pr-i)%2==0)
        {
            *qr=*qr+(*pr-i);
        }
    }
    cout<<"Sum of even number: "<<*qr;
}
