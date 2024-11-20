#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
int main(int argc, char *argv[])
{
    int pid = fork();
    if(pid == 0)
    {
        execlp("./task1.o", "./task1.o", argv[1], argv[2], argv[3], argv[4], NULL);
    }
    else if(pid>0)
    {
        wait(NULL);
    }

}
