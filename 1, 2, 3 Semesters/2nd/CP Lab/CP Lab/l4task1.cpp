#include <iostream>
using namespace std;
main()
{
    float num1,num2;
    char symbl;
    while(1)
    {
        cout<<"Enter the first integer: ";        
        cin>>num1;
        cout<<"Enter the symbol: ";
        cin>>symbl;
        cout<<"Enter the second integer: ";
        cin>>num2;
        switch(symbl)
        {
            case('+'):
            {
                cout<<"Result: "<<num1+num2<<endl;
                break;
            }
            case ('-'):
            {
                cout<<"Result: "<<num1-num2<<endl;
                break;
            }
            case('/'):
            {
               cout<<"Result: "<<num1/num2<<endl;
                    if(num2==0)
                     {
                      exit(1);
                     }
                 
                break;
            }
            case('*'):
            {
                cout<<"Result: "<<num1*num2<<endl;
                break;
            }
            
        }
        
    }
}