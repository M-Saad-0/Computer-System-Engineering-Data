#include <stdio.h>
#include <signal.h>

void sigint_handler(int signo) {
    printf("Received SIGINT signal!\n");
}

int main() {
    sigset_t new_mask, wait_mask;

    // Block SIGINT initially
    sigemptyset(&new_mask);
    sigaddset(&new_mask, SIGINT);
    sigprocmask(SIG_BLOCK, &new_mask, NULL);

    struct sigaction sa;
    sa.sa_flags = 0;
    sa.sa_handler = sigint_handler;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGINT, &sa, NULL);

    printf("Waiting for SIGINT...\n");

    // Wait for SIGINT using sigwait
    sigemptyset(&wait_mask);
    sigaddset(&wait_mask, SIGINT);
    int signo;
    sigwait(&wait_mask, &signo);

    printf("Continuing after signal...\n");

    // No need to restore signal mask explicitly

    return 0;
}
