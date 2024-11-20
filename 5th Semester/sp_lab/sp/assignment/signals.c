#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void ctrlC(int signo)
{
    static int count = 0;
    if (signo == SIGINT)
    {
        count += 1;
        if (count == 3)
        {
            printf("Three Times!!\n");
            count = 0;
            // exit(0); // Uncomment this to exit after three signals
        }
    }
}

int main()
{
    struct sigaction sa;
    sa.sa_handler = ctrlC;
    sa.sa_flags = 0;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGINT, &sa, NULL);
    sigset_t mask;
    sigemptyset(&mask);
    sigaddset(&mask, SIGINT);
    // sigprocmask(SIG_BLOCK, &mask, NULL);
    int signo;
    // Allow SIGINT signals to be delivered directly
    // sigprocmask(SIG_BLOCK, &mask, NULL); // Remove this line

    int signo;
    while (1)
    {
        sigwait(&mask, &signo); // Wait for SIGINT signals
    }
}
