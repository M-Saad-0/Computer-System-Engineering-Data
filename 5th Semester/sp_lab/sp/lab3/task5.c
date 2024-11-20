#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int factorial(int num)
{
    if(num<=1)
        return 1;
    return factorial(num-1)*num;
}


int main(int argc, char *argv[])
{
    int l = atoi(argv[1]), pid=-1;
    for(int i=0; i<l; i++)
    {
        pid = fork();
        if(pid==0)
        {
            printf("Factorial: %d\n", factorial(i));
            break;
        }
        else
        {
            wait(NULL);
        }
    }
    printf("\n");
    return 0;
}