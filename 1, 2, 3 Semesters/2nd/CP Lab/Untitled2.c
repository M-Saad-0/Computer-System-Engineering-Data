#include<stdio.h>
int main()
{
	int i, num1=3, num2=4, j;
	for(i=1; i<5; i++)
	{
		for(j=1; j<41; j++)
		{
			if(i%2!=0)
				{
					printf("%c",num1);
					
				}
			else
				{
					printf("%c", num2);
				}		
		}
	 } 
}

