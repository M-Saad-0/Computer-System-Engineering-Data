#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#define NUM_THREAD 7
char *message[NUM_THREAD];
void *PrintHello(void *threadid)
{
    int *id_ptr, taskid;
    sleep(1);
    id_ptr = (int*)threadid;
    taskid = *id_ptr;
    printf("/n %s from thread %d \n\n ", message[taskid], taskid);
    pthread_exit(NULL);
}
int main()
{
    pthread_t threads[NUM_THREAD];
    int *taskid[NUM_THREAD];
    int rc, t;
    message[0] = "English: Hello World!";
    message[1] =  "French: Bonjour, le monde!";
    message[2] =  "Spanish: Hola al mundo";
    message[3] =  "Klingon: Nuq neH!";
    message[4] =  "German: Guten Tag, Welt!";   
    message[5] = "Russian: Zdravstvytye, mir!";
    message[6] =  "Japan: Sekai e konnichiwa!"; 
    message[7] = "Latin: Orbis, te saluto!";
    int i=0;
    for(i=0; i<NUM_THREAD; i++)
    {
        taskid[i] = (int*)malloc(sizeof(int));
        *taskid[i]=i;
        printf("Creating Thread %d\n", i);
        rc = pthread_create(&threads[i], NULL, PrintHello, (void *) taskid[i]);
        if(rc)
        {
            printf("Error return code from pthread_create() is %d", rc); exit(-1);       
        }    
    
    }
    
    pthread_exit(NULL);
}
