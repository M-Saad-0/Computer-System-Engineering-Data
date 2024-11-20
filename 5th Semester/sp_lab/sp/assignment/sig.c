#include <stdio.h>
#include <signal.h>

void sigint_handler(int signo) {
    printf("Received SIGINT signal!\n");
}

int main() {
    sigset_t new_mask, old_mask;

    // Block SIGINT initially
    sigemptyset(&new_mask);
    sigaddset(&new_mask, SIGINT);
    sigprocmask(SIG_BLOCK, &new_mask, &old_mask);

    struct sigaction sa;
    sa.sa_flags=0;
    sa.sa_handler=sigint_handler;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGINT, &sa, NULL);
    printf("Waiting for SIGINT...\n");

    // Temporarily replace signal mask and wait for a signal
    sigsuspend(&old_mask);

    printf("Continuing after signal...\n");

    // Restore original signal mask
    sigprocmask(SIG_SETMASK, &old_mask, NULL);

    return 0;
}
