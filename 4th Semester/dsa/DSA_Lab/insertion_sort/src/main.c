#include <stdio.h>
void insertion_sort(int arr[], int size);
void swap(int *e1, int *e2){int t=*e1;*e1=*e2=*e2;*e2=t;}
int main()
{
    int arr[] = {12, 45, 23, 51, 19, 8};
    int size = sizeof(arr)/sizeof(int);
    insertion_sort(arr, size);
}
void insertion_sort(int arr[], int size)
{
    for(int i=1; i<size; i++)
    {
        int j = i-1;
        while(arr[j]>arr[j+1])
        {
	    swap(&arr[j+1], &arr[j]);	
            j--;
	    
        }
    }
    for(int i=0; i<size; i++)
        printf("%d ", arr[i]);
}
//  6 4 7 5 3 1 4
//  j i
//  current = arr[i] = 4
//  while current(4)<arr[j]
//  i = 1
//  j = 0
//  loop-true
//  arr[j+1] = arr[j] | 4 -> 6 | j = -1
//  j = -1 arr[0] = 4
// 6 4 7 5 3 1 4
//           j i
//  
