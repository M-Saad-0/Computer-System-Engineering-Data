#include <iostream>
using namespace std;
main()
{
    int num, factrl=1, i=1;
    cout<<"Enter an inteher: ";
    cin>>num;
    while(i<=num)
    {   
        
        factrl=i*factrl;
        i++;
    }
    
    cout<<"The factorial of the number is: "<<factrl;

}
