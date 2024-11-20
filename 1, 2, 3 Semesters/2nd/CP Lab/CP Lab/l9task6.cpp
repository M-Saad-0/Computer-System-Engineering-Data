#include <iostream>
using namespace std;
int addition(int m, int n)
{
    return m+n;
}
int subtraction(int m, int n)
{
    return m-n;
}
int multiplication(int m, int n)
{
    return m*n;
}
int division(int m, int n)
{
    return m/n;
}
int calcuator(int m, int n, int(*l)(int, int))
{
    int result = (*l)(m,n);
    return result;
}
main()
{
    int num, num1=6, num2=3;
    num=calcuator(num1,num2,division);
    cout<<num;
}

