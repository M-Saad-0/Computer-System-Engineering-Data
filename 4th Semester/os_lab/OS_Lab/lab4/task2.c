#include <stdio.h>
int main(void)
{
	int a, *p;
	printf("Enter a number: ");
	scanf("%d", &a);
	p=&a;
	printf("The value of a is: %d \n", a);
	printf("The address of a is: %p \n", &a);
	printf("The address p is pointing to: %p \n", p);
	printf("The value p is pointing to: %x \n", *p);
	printf("The address of p is: %p \n",&p);
	return 0;
}

