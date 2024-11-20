#include <stdio.h>
int main()
{
	int arr1[2][2] = {{6, 3},{7, 5}};
	int arr2[2][2] = {{5, 6},{24, 43}};		
	int (*ptr2)[]=arr2;
	int (*ptr1)[]=arr1;
	int arr[4];
	for (int i=0; i<4; i++)
	{
		arr[i] = (*ptr1)[i]*(*ptr2)[i];
		(*ptr2)[i]++;
		(*ptr1)[i]++;		
	}
	
	printf("The answer is: \n");
	for(int j=0; j<4; j++)
	{
		printf("%d\n", arr[j]);
	}
	return 0;
}
