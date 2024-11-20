#include <signal.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int count = 0;
void signal_handler(int signo)
{
    if (signo == SIGUSR1)
    {
        count++;
    }
}

int main(int argc, char *argv[])
{
    int N = atoi(argv[1]);
    struct sigaction sa;
    sa.sa_handler = signal_handler;
    sa.sa_flags = 0;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGUSR1, &sa, NULL);

    int pid = fork();
    if (pid == 0)
    {
        for (int i = 0; i < N; i++)
            kill(getppid(), SIGUSR1);
        return 0;
    }
    if (pid > 0)
    {
        wait(NULL);
    }
    printf("Count: %d\n", count);
}