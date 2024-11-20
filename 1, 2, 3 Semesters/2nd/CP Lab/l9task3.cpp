#include <iostream>
using namespace std;
main()
{
    string sarr[2];
    string*sptr=sarr;
    cout<<"Enter your name: ";
    cin>>*sptr;
    cout<<"Enter your registration no: ";
    cin>>*(sptr+1);
    cout<<sarr[0]<<endl<<sarr[1];
}

