#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
int main()
{
	int N;
	printf("Enter number of childs in fan: ");
	scanf("%d", &N);
	int x;
	for(int i=0; i<N; i++)
	{   
        	x = fork();
		if(x==0) break;
            	printf("This is process %d with process ID %d\n", i, getpid());
	}
	for (int i=0; i<N; i++) 
        wait(NULL);
}

