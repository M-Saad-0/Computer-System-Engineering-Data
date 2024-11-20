#include <iostream>
using namespace std;
main()
{
    int arr5[5];
    int*point = arr5;
    int num1, num2;
    cout<<"Enter 5 Values: ";
    for(int i=0; i<5; i++)
        cin>>*(point+i);
    cout<<"Enter Two integers from 0 to 4: ";
    cin>>num1>>num2;
    cout<<"arr5["<<num1<<"]: "<<*(point+num1)<<endl<<"arr5["<<num2<<"]: "<<*(point+num2);
}

