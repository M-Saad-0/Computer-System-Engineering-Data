#include <iostream>
using namespace std;
int main()
{
    int size=0;
    float arr[size];
    float *ptr, sum=0;
    cout<<"Enter the size of the array: ";
    cin>>size;
    for(int i=0; i<size; i++)
    {
        cout<<"Enter element "<<i+1<<": ";
        cin>>arr[i];
    }

    ptr = arr;

    for(int j=0; j<size; j++)
    {
        sum = *ptr + sum;
        ptr++;
    }
    cout<<"Average: "<<sum/size;
}