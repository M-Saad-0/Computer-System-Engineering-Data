#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

int main()
{
    pid_t pid0 = fork();
    int status;
    //on success 
    if(pid0>0)
    {
        int w = wait(&status);
        perror("Parent Error: ");
        fprintf(stderr, "Parent Error: %s\t, Return value %d\n", strerror(errno), w);
    }
    //on error
    else if(pid0==0)
    {
        int w = wait(&status);
        perror("Child Error: ");
        fprintf(stderr, "Child Error: %s\t, Return value %d\n", strerror(errno), w);
    }
}