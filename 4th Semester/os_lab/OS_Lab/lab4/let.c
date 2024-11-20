#include <stdio.h>
int main()
{
	int arr1[2][2] = {{6, 3},{7, 5}};
	int (*ptr)[] = arr1;
	for (int i=0; i<4; i++)
	{
		printf("ptr: %x\n", (*ptr)[i]);
		((*ptr)[i])++;
	}
}
