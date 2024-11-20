#include <iostream>
using namespace std;
main()
{
    int esum=0;
    int n1, n2;
    cout<<"Enter a number: ";
    cin>>n1;
    cout<<"Enter another number: ";
    cin>>n2;
    if(n1<n2)
    {
        for(n1; n1<n2;n1++)
        {
            if(n1%2==0)
            {
                esum=esum+n1;
            }
        }
    }
    if(n2<n1)
    {
        for(n2; n2<n1;n2++)
        {
            if(n2%2==0)
            {
                esum=esum+n2;
            }
        }

    }
    cout<<"The sum of the even integers = "<<esum;
}
