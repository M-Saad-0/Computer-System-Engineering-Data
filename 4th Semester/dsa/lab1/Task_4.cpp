#include <iostream>
using namespace std;
int *twoArr(int arr1[], int arr2[], int Bsize);
int main()
{
    int size1=0;
    cout<<"Enter the size of the array: ";
    cin>>size1;
    int arr1[size1];
    for(int i=0; i<size1; i++)
    {
        cout<<"\nEnter the element "<<i+1<<": ";
        cin>>arr1[i];
    }
    int size2=0;
    cout<<"Enter the size of the array: ";
    cin>>size2;
    int arr2[size2];
    for(int j=0; j<size2; j++)
    {
        cout<<"\nEnter the element "<<j+1<<": ";
        cin>>arr2[j];
    }

    int *ptr = twoArr(arr1, arr2, (size1+size2));

    for(int h=0; h<(size1+size2); h++)
    {
        cout<<"\nElement "<<h+1<<" : "<<*ptr<<endl;
        *ptr++;
    }
    
}

int *twoArr(int arr1[], int arr2[], int Bsize)
{
    int *aptr;
    aptr = new int[Bsize];

    for(int i=0; i<Bsize; i++)
    {
        if(i<Bsize/2)
            *aptr = arr1[i];
        else 
            *aptr=arr2[i];
        
        cout<<"\n"<<*aptr<<endl;
        *aptr++;
    }
    for(int j=0;j<Bsize;j++){aptr--;}
    return aptr;
}
