#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <string.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

#define ITERATE 50
#define MAX_BUFFER_SIZE 256
#define MAX_NAME_SIZE 50


struct process {
    float maxMem;
    float maxCpu;
    char process[30];
    int pid;
    int index;
};

struct process intenseProcess;
pthread_mutex_t mutex;
pthread_cond_t cond;

void max(char arr[MAX_BUFFER_SIZE][MAX_NAME_SIZE], float mem[MAX_BUFFER_SIZE]) {
    char str[30] = "";
    float memMax = 0;
    int index = -1;
    for (int i = 0; i < ITERATE; i++) {
        if (memMax < mem[i] && strcmp(str, arr[i]) != 0 && arr[i][0] == 'g') {
            memMax = mem[i];
            strcpy(str, arr[i]);
            index = i;
        }
    }
    intenseProcess.maxMem = memMax;
    strcpy(intenseProcess.process, str);
    intenseProcess.index = index;
}

void* closeMaxProcess(void* arg) {

    pthread_mutex_lock(&mutex);
    pthread_cond_wait(&cond, &mutex);
    pthread_mutex_unlock(&mutex);

    int* index = (int*)arg;
    int choice;
    pid_t pid = fork();
    if(pid == 0) {
        printf("Do you want to close %s using %f memory? (1-Yes, 0-No): \n", intenseProcess.process, intenseProcess.maxMem * (6144 / 100));
        scanf("%d", &choice);
        if (choice == 1 ) {
            printf("Closing %s.\n\n\n", intenseProcess.process);
            int result = execlp("killall", "killall", intenseProcess.process, NULL);
            if (result == -1) {
                perror("Failed to execute killall command\n\n\n");
            }
        } 
        else {
            printf("Process not closed.\n\n\n");
        }
        exit(1);
    }   
    return NULL;
}


void *getIntenseProcess(void *p) {
    char command[MAX_BUFFER_SIZE];
    char buffer[MAX_BUFFER_SIZE];

    float mem[MAX_BUFFER_SIZE];
    float cpu[MAX_BUFFER_SIZE];
    int pid[MAX_BUFFER_SIZE], i = 0;
    char pnames[MAX_BUFFER_SIZE][MAX_NAME_SIZE]; 

    time_t startTime = time(NULL);
    time_t endTime = startTime + 6;

    while (i<ITERATE) {
        FILE *topOutput = popen("top -b -n 1", "r");
        if (topOutput == NULL) {
            printf("Failed to execute the top command.\n");
            return 0;
        }

        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);

        sscanf(buffer, "%d %*s %*s %*s %*s %*s %*s %*s %f %f %*s %s", &pid[i], &cpu[i], &mem[i], pnames[i]);

        i++;
    }

    max(pnames, mem);

    int index = intenseProcess.index;
    intenseProcess.maxCpu = cpu[index];
    intenseProcess.pid = pid[index];
    printf("PID: %d\nCPU: %f%%\nMem: %f%%\nProcess Name: %s\n", pid[index], cpu[index], mem[index], pnames[index]);

    pthread_mutex_lock(&mutex);
    pthread_cond_signal(&cond);
    pthread_mutex_unlock(&mutex);

    return NULL;
}

int main() {
    pthread_mutex_init(&mutex, NULL);
    pthread_cond_init(&cond, NULL);

    for (int i = 0; i < 10; i++) {
        pthread_t tid1, tid2;
        pthread_create(&tid1, NULL, getIntenseProcess, NULL);
        pthread_create(&tid2, NULL, closeMaxProcess, NULL);

        pthread_join(tid1, NULL);
        pthread_join(tid2, NULL);
    }

    pthread_mutex_destroy(&mutex);
    pthread_cond_destroy(&cond);

    return 0;
}

char *notToKill[2] = {"gnome-shell", "gnome-terminal-"};