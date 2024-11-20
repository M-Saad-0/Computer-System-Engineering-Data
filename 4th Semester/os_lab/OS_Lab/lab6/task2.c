#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
int main()
{
	int arr[10];
	printf("Enter an array: ");
	for(int i=0; i<10; i++)
	{
		scanf("%d", &arr[i]);
	}	    
	int max = arr[0];
	for(int j=0; j<10; j++)
	{
		if(max<arr[j])
		{
			max = arr[j];
		}
	}
	printf("The array: /n [");
	for(int k=0; k<10; k++) printf("%d ",arr[k]);
	printf("]\nThe max value of the array is: %d", max);

} 
