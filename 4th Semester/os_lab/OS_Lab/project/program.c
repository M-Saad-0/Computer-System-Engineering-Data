#include <stdio.h>
#include <time.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

#define MAX_BUFFER_SIZE 256

void *toCompare(void *); //two processes will be compared and then two threads
void *killProcess(void*);

void track_time(void *(*function)(void *), void *arg)
{
    clock_t start, end;

    start = clock();
    function(arg);
    end = clock();

    printf(": %f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);
}

int main(int argc, char *argv[])
{
    pthread_t tid;

    if (*argv[argc - 1] == 'c')
    {
        pthread_create(&tid, NULL, toCompare, argv[1]);
        printf("Time for first thread\n");
        track_time(toCompare, argv[1]);
        pthread_create(&tid, NULL, toCompare, argv[2]);
        printf("Time for second thread\n");
        track_time(toCompare, argv[2]);

        int pid1 = fork();
        if (pid1 == 0)
        {
            toCompare(argv[1]);
            printf("Time for first process\n");
            track_time(toCompare, argv[1]);
        }
        else
        {
            int pid2 = fork();
            if (pid2 == 0)
            {
                toCompare(argv[2]);
                printf("Time for second process\n");
                track_time(toCompare, argv[2]);
            }
        }
    }
    else if (*argv[argc - 1] == 'k')
    {
        char *processName = argv[1];
        pthread_create(&tid, NULL, killProcess, processName);
       
    }
    else if (*argv[argc - 1] == 'm')
    {
        printf("It is going to be bloodshed");
        int pid = atoi(argv[1]);
        pthread_create(&tid, NULL, monitorProcess, &pid);
    }

    pthread_exit(NULL);
    return 0;
}
void *toCompare(void *ptr)
{
    char *command = (char *)ptr;
    execlp(command, command, NULL);
    perror("execlp"); // Print an error message if execlp fails
    pthread_exit(NULL);
}


void *killProcess(void *p)
{
    char *processName = (char *)p;

    char command[50];
    printf("%d", *processName);
    sprintf(command, "killall -9 %s", processName);
    if (system(command) == 0)
    {
        printf("All processes with name '%s' have been forcefully terminated.\n", processName);
    }
    else
    {
        printf("Failed to forcefully terminate processes with name '%s'.\n", processName);
    }

    pthread_exit(NULL);
}

