#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

void sigchld_handler(int sig)
{
    printf("Child process terminated.\n");
}

int main()
{
    pid_t pid;
    sigset_t mask, old;
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);
    sigprocmask(SIG_BLOCK, &mask, &old);
    pid = fork();

    if (pid == 0)
    {
        printf("Child process: Running...\n");
        sleep(2);
        printf("Child process: Exiting.\n");
        exit(0);
    }
    else if (pid > 0)
    {
        int sig;
        printf("\nUsing sigwait()\n");
        sigwait(&mask, &sig);

        printf("Parent process: Child terminated.\n");
    }
    else
    {
        perror("fork");
        exit(1);
    }

    return 0;
}
