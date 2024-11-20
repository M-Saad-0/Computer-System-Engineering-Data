#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int pid[argc], s[argc];
    int factorial = 1;
    for(int i=1; i<argc; i++)
    {
        pid[i] = fork();
        if(pid[i]==0)
        {
            if(atoi(argv[i]) <= 0)
            {
                return 1;
            }

            int arg = atoi(argv[i]);

            for(int j = 1; j<=arg; j++)
            {
                factorial = factorial * j;
            }
            return factorial;
        }
    }

    for(int i=1; i<argc; i++)
    {
        int x = wait(&s[i]);
        if(WIFEXITED(s[i]))
        {
            printf("Normal return of Child %d: %d\n",i,WEXITSTATUS(s[i]));
        }
        else if(WIFSIGNALED(s[i]))
        {
            printf("The following signal closed the child %d: %d\n",i,WTERMSIG(s[i]));
        }
        else if(WIFSTOPPED(s[i]))
        {
            printf("The return of child %d: %d\n",i,WSTOPSIG(s[i]));
        }
    }
}