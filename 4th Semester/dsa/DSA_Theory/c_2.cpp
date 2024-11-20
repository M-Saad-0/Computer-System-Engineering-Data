#include <iostream>
using namespace std;
int *sort(int arr[], int length);
int main()
{
	int arr[10];
	cout<<"Enter 10 integer: ";
	for(int i=0; i<10; i++)
		cin>>arr[i];
	int *p = sort(arr, sizeof(arr)/sizeof(int));
	cout<<"\nThe sorted array is: [";
	for(int j=0; j<10; j++)
	{
		cout<<*p; p++;
		if(j<9)
			cout<<", ";
		else if(j==9)
			cout<<"]\n";				
	}
}
int *sort(int arr[], int length)
{
	for(int i=0; i<10; i++)
	{
		for(int j=0; j<(10-i)-1; j++)
		{
			if(arr[j]>arr[j+1])
			{
				int temp = arr[j];
				arr[j] = arr[j+1];
				arr[j+1] = temp;
			}
		}
	}
	int* ptr = arr;
	return ptr;
}
