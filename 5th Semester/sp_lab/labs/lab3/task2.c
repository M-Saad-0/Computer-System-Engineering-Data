//Fan
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int pid;
    for(int i=0; i<atoi(argv[1]); i++)
    {
        pid = fork();
        if(pid == 0)
        {
            printf("My id: %d\nMy parent id: %d\nMy child id: %d\nLoop variable: %d\n**\n", getpid(), getppid(), pid, i);
            break;
        }
    }
    return(0);
}
