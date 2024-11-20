#include <iostream>
using namespace std;
int partition(int array[], int low, int high);
void swap(int *x, int *y);
void quicksort(int array[], int length);
void recursion(int array[], int low, int high);
int main()
{
    int arr[] = {5, 4, 7, 9, 8, 0, 1, 3, 2, 6};
    int size = sizeof(arr)/sizeof(uint);
    quicksort(arr, size-1);
    for(int i=0; i<size-1; i++)cout<<arr[i]<<" ";
}
void quicksort(int array[], int length)
{
    recursion(array, 0, length);
}
void recursion(int array[], int low, int high)
{
    if(low<high)
    {
        int index = partition(array, low, high);
        recursion(array, low, index-1);
        recursion(array, index+1, high);
    }
}
void swap(int *x, int *y) {int temp=*x; *x=*y; *y=temp;}
int partition(int array[], int low, int high)
{
    int pivot_value = array[high];
	int i = low;
	for(int j=low; j<high; j++)
	{
		if(array[j]<=pivot_value)
		{
			swap(&array[i], &array[j]);
			i++;
		}
	}
    
    swap(&array[high], &array[i]);
    return i;
}