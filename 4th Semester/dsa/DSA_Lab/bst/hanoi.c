#include <stdio.h>
void print(int start, int end);
void hanoi(int n, int start, int end)
{
	if(n==1)
		print(start, end);
	else
	{
		int other = 6 - (start+end);
		hanoi(n-1, start, other);
		print(start, end);
		hanoi(n-1, other, end);
	}
}
void print(int start, int end)
{
	printf("%d -> %d\n", start, end);
}
int main()
{
	hanoi(3, 1, 3);
}
