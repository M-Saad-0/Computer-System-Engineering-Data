#include <iostream>
using namespace std;
int sum(int);

int main()
{
    int number;
    cin>>number;
    cout<<sum(number);
}
int sum(int number)
{
    
    if(number!=0)
    {
        return sum(number-1)+number;
    }
}