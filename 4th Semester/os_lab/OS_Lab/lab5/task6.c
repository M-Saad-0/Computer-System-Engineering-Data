#include <stdio.h>
#include <unistd.h>
int main()
{
    int x;
    for(int i=0; i<4; i++)
    {
        x = fork();
        if(x==0)
          printf("My id %d and my parent id %d.\n", getpid(), getppid());
    }
}

