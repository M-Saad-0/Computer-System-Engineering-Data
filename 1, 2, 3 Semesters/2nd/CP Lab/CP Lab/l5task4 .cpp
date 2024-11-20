#include <iostream>
using namespace std;
main()
{
	int arr[10];
	for(int i=0; i<10; i++)
	{
		cout<<"Enter the value: "<<i+1<<": ";
		cin>>arr[i];
	}
	int max = arr[0];
	for(int j=0; j<10; j++)
	{
		if(max<arr[j])
		{
			max=arr[j];
		}
	}
	cout<<"The maximum value in the array is:   "<<max;
}
