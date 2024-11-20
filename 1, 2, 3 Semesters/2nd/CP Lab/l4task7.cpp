#include <iostream>
using namespace std;
main()
{
    int bs, pr, result=1;
    cout<<"Enter the base: ";
    cin>>bs;
    cout<<"Enter the power: ";
    cin>>pr;
    do
    {
        pr--;
        result=result*bs;
    }while(pr!=0);

    cout<<"The result is: "<<result;
}
