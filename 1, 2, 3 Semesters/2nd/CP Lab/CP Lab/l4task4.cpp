#include <iostream>
using namespace std;
main()
{   
    int number, count=1;
    cout<<"Enter a number: ";
    cin>>number;
    do{
        cout<<number<<" x "<<count<<" = "<<number*count<<endl;
        count++;
    }while(count<=10);
}