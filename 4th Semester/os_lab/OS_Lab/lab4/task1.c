#include <stdio.h>
int fact(int n);
int main()
{
	int number;
	printf("Enter a number: ");
	scanf("%d", &number);
	int factorial = fact(number);
	printf("The factorial is: %d", factorial);
	printf("\n");
	return 0;
}
int fact(int n)
{
	int f=1;
	for(int i=1; i<=n; i++)
	{
		f = i*f;
	}
	return f;
}
