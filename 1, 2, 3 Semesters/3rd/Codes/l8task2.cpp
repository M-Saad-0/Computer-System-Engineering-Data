#include <iostream>
using namespace std;
main()
{
    int num1, num2;
    cout<<"Enter the first vlaue: ";
    cin>>num1;
    cout<<"Enter the second value: ";
    cin>>num2;
    cout<<"Before swapping\nFirst integer: "<<num1<<endl<<"Second interger: "<<num2;
    int*p=&num1;
    int*q=&num2;
    int*r;
    *r=*p;
    *p=*q;
    *q=*r;
    cout<<"\n\nAfter swapping\nFirst integer: "<<num1<<endl<<"Second interger: "<<num2;
}
