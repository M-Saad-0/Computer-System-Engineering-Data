#include <iostream>
using namespace std;
void average(float*pn)
{
    for(int i=1; i<5; i++)
    {
        *pn=*pn+*(pn+i);
    }
    cout<<"The Average of the array is: "<<*pn/5;
}
main()
{
    float arr[5]={1,3,5,7,11};
    average(arr);
}
