#include <stdio.h>
#include <unistd.h>

int main()
{
    // 1st
    int pid1[4];
    printf("%d\n", getpid());
    for (int i = 0; i < 4; i++)
    {

        pid1[i] = fork();
        if (pid1[i] == 0)
        {
            printf("%d\t", getpid());
            break;
        }
    }
    int pid2[3], pid3[2];
    if (pid1[0] == 0)
    {
        printf("%d\n", getpid());
        for (int i = 0; i < 3; i++)
        {
            pid2[i] = fork();
            if (pid2[i] == 0)
            {
                printf("%d\t", getpid());
                break;
            }
        }
        if (pid2[1] == 0)
        {
            for (int i = 0; i < 2; i++)
            {
                pid3[i] = fork();
                if (pid3[1] == 0)
                {
                    printf("%d\t", getpid());
                    break;
                }
                else if (pid3[i] == 0)
                {
                    printf("%d\t", getpid());
                }
            }
        }
    }
    if (pid1[1] = 0)
    {
        if ((fork()) == 0)
        {
            printf("%d\t", getpid());
        }
    }
    if (pid1[2] = 0)
    {
        fork();
        fork();
        printf("%d\t", getpid());
    }
}