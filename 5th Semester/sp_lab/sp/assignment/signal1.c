#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <pthread.h>

void *wait_for_signals(void *arg) {
    sigset_t signal_set;
    int sig;

    // Block SIGINT and SIGTERM signals in this thread
    sigemptyset(&signal_set);
    sigaddset(&signal_set, SIGINT);
    sigaddset(&signal_set, SIGTERM);
    pthread_sigmask(SIG_BLOCK, &signal_set, NULL);

    while (1) {
        // Wait for a signal in the set
        sigwait(&signal_set, &sig);

        printf("Received signal: %d\n", sig);

        // Perform appropriate actions based on the received signal
        switch (sig) {
            case SIGINT:
                printf("Handling SIGINT\n");
                // Perform actions for SIGINT
                break;
            case SIGTERM:
                printf("Handling SIGTERM\n");
                // Perform actions for SIGTERM
                pthread_exit(NULL); // Exit the thread
                break;
            default:
                printf("Unexpected signal: %d\n", sig);
        }
    }

    return NULL;
}

int main() {
    pthread_t thread;

    pthread_create(&thread, NULL, wait_for_signals, NULL);

    printf("Main thread continuing...\n");

    // Simulate some work in the main thread
    sleep(5);

    printf("Main thread sending SIGINT\n");
    pthread_kill(thread, SIGINT);

    // Wait for the signal handling thread to finish
    pthread_join(thread, NULL);

    printf("Main thread exiting\n");
    return 0;
}
