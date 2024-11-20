#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main()
{
    int array[] = {7, 2, 3, 6, 1, 8, 4, 1, 5, 2, 9, 5, 0, 3, 8, 1, 6, 5, 1, 0, 2, 9, 4, 1, 9, 7, 0, 5, 5, 2, 4, 1, 8, 3, 4, 0, 8, 1, 6, 4, 9, 2, 3, 5, 0, 7, 2, 2, 9, 7, 2, 0, 7, 5, 8, 1, 2, 8, 4, 7, 0, 1, 7, 2, 4, 5, 1, 2, 4, 9}, pid, cSum = 0, pSum = 0, status[10];

    for(int i=0; i<10; i++)
    {
        pid = fork();
        if(pid == 0)
        {
            for(int j=0; j<10; j++)
                cSum = cSum + array[j+i*10];
            
            printf("Here is the sum: %d\n", cSum);

            break;
        }
        else
        {
            wait(&status[i]);
        }
    }

    if(pid==0)
    {
        return cSum;
    }
    else
    {
        for(int i=0; i<10; i++)
        {
            if(WIFEXITED(status[i]))
            {
                    printf("Here is the sum: %d\n", WEXITSTATUS(status[i]));
                pSum = WEXITSTATUS(status[i]) + pSum;
            }
        }
    }

    printf("Here is the sum: %d\n", pSum);

    for(int i=0; i<50; i++)
    {
        pSum += array[i];
    }
    printf("Here is the sum: %d\n", pSum);
    return 0;
}