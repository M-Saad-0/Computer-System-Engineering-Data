#include <stdio.h>

int *sort(int arr[])
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
	return arr;
}
int main()
{
	int arr[10];
	printf("Enter 10 integer: ");
	for(int i=0; i<10; i++)
		scanf("%d", &arr[i]);
	int *p = sort(arr);
	printf("\nThe sorted array is: [");
	for(int j=0; j<10; j++)
	{
		printf("%d", *p); p++;
		if(j<9)
			printf(", ");
		else if(j==9)
			printf("]\n");				
	}
}

