#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int l = atoi(argv[1]), pid=-1;
    printf("No.\tProcess ID\tParent ID\tChild ID\n");
    for(int i=0; i<l; i++)
    {
        pid = fork();
        if(pid>0)
        {
            printf("%d\t%d\t%d\t%d\n", i, getpid(), getppid(), pid);
            break;
        }
    }
}