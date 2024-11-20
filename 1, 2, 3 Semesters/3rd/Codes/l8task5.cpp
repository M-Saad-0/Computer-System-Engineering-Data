#include <iostream>
using namespace std;
main()
{
    int num;
    cout<<"Enter some number: ";
    cin>>num;
    int*ptr=&num;
    for(int i=1; i<=num; i++)
    {
        cout<<*ptr-(num-i)<<"   ";
    }
}
