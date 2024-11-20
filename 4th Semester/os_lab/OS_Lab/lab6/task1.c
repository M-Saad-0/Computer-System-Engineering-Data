#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
int main()
{
	int x= fork();
	if(x==0)
	{
		int y = execlp("/usr/bin/ls", "ls", "-l", NULL);
		if(y==-1)
		{
			perror("Failed ");
		}
	}
	else
	    wait(NULL);

	return 0;

} 
