#include <iostream>
using namespace std;
int *arrDouble(int arr[], int size);
int main()
{
    int size=0;
    cout<<"Enter the size of the array: ";
    cin>>size;
    int arr[size];
    for(int i=0; i<size; i++)
    {
        cout<<"\nEnter the element "<<i+1<<": ";
        cin>>arr[i];
    }

    int *arrptr = arrDouble(arr, size);
    
    for(int h=0; h<size*2; h++)
    {
        cout<<"\nElement "<<h+1<<" : "<<*arrptr<<endl;
        *arrptr++;
    }
}
int *arrDouble(int arr[], int size)
{
    int *aptr;
    aptr = new int[size*2];
    for(int i=0; i<size*2; i++)
    {
        if(i<size)
            *aptr = arr[i];
        else
            *aptr=-1;
        
        cout<<"\n"<<*aptr<<endl;
        *aptr++;
    }
    for(int j=0;j<size*2;j++){aptr--;}
    return aptr;
}