include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
    int pid;
    for(int i=1; i<=argc; i++)
    {
        pid = fork();
        if(pid == 0)
            {
                execlp(argv[i], argv[i], NULL);            
            }
        else if(pid>0)
            {
               wait(NULL);
            }    
    }
}

