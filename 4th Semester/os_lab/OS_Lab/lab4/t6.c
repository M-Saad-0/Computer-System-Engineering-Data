#include <stdio.h>
int main()
{
	int arr[6] = {2,3,4,5,7,7};
	int *p = arr;
	printf("%p\n", p);
	p=(p+3);
	printf("%p", p);
}
