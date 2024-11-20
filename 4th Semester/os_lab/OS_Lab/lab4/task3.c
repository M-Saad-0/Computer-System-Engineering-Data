#include <stdio.h>
void fac(int *n);
int main()
{
	int num, t;
	printf("Enter a number: ");
	scanf("%d", &num);
	t=num;
	fac(&num);
	printf("The factorial of %d is: %d\n",t,num);
}
void fac(int *n)
{
	int temp=*n;
	*n=1;
	for(int i=1; i<=temp; i++)
		*n=i*(*n);
}
