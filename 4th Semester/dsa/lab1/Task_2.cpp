#include <iostream>
using namespace std;
int maxValue(int arr[], int Size);
int main()
{
    int size=10;
    int arr[size];
    cout<<"Enter the size of the array: ";
    cin>>size;
    for(int i=0; i<size; i++)
    {
        cout<<"Enter element "<<i+1<<": ";
        cin>>arr[i];
    }
    int maximum = maxValue(arr, size);
    cout<<"The maximum value is: "<<maximum<<endl;
}
int maxValue(int arr[], int Size)
{
    int i=0, temp = arr[0];
    while(i<Size)
    {
        if (temp<arr[i])
        {
            temp=arr[i];
        }
        i++;
    }
    return temp;
}