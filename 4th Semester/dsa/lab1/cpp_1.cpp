#include <iostream>
using namespace std;
int main()
{
    int arr[10] = {10,9,8,7,6,5,4,3,2,1};
    int *ptr;
    ptr = arr;
    for(int i=0; i<=9; i++)
    {
        cout<<"Array Address: "<<&arr[i]<<endl;
        cout<<"Array Values: "<<*ptr<<endl;
        cout<<"Pointer point to array: "<<ptr++<<endl;
        cout<<"Pointer Address: "<<&ptr<<endl<<endl;
    }
}