#include <iostream>
using namespace std;
main()
{
    string reg_no, name;
    cout<<"Enter you registration number: ";
    cin>>reg_no;
    cout<<"Enter your name: ";
    cin>>name;
    string*pntr=&reg_no;
    cout<<*pntr<<endl;
    *pntr=name;
    cout<<*pntr;

}
