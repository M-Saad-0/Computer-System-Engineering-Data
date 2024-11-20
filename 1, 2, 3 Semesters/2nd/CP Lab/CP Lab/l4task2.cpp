#include <iostream>
using namespace std;
main()
{
    int num;
    cout<<"Emter an integer: ";
    cin>>num;
    if (num<1 || num>10)
    {
        exit(1);
    }
    for (int i=1; i<=num; i++)
    {
        cout<<"*";
    }
}