#include <stdio.h>
#include <unistd.h>

int main()
{
    int pid;
    for(int i=1; i<=5; i++)
    {
        for(int j=1; j<=5-i; j++)
        {
            pid = fork();
            if(pid==0)
                printf("%d", pid);
        }
    }
    return 0;
}