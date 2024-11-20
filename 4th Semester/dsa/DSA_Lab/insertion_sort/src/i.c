#include <stdio.h>
void swap(int *e1, int *e2)
{
	int temp = *e1;
	*e1 = *e2;
	*e2 = temp;
}
void i_sort(int arr[], int len)
{
	int i=0, j=0;
	for(i=0; i<len; i++)
	{	
		for(j=i-1; j>=0; j--)
		{
			if(arr[j+1]<arr[j])
				swap(&arr[j+1], &arr[j]);
			else 
				break;
		}
	}
}
int main()
{
	int arr[] = {2, 5, 4, 1, 0, 4, 6, 1};
	int len = sizeof(arr)/sizeof(int);
	i_sort(arr, len);
	for(int l=0; l<len; l++) printf("%d ", arr[l]);	
}
