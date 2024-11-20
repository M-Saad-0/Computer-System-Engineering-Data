#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdlib.h>
int main()
{
    int x = fork();
    if(x==0)
        {sleep(4);
        exit(4);}
    else
    {
        int s;
        int ret = wait(&s);
        if(WIFEXITED(s))
        {
            printf("Child exited normally with status %d.",WEXITSTATUS(s));
        }
        else if(WIFSIGNALED(s))
        {
            printf("Terminating is %d\n", WTERMSIG(s));
        }
        else if(WIFSTOPPED(s))
        {
            printf("%d", WSTOPSIG(s));
        }
    }
}