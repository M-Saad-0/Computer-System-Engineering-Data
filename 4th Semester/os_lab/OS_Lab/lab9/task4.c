#include <stdio.h>
#include <pthread.h>
void *task(void *p)
{
    int loopValue = *((int*)p);
    printf("This is thread %d\n", loopValue);
}
int main()
{
    pthread_t tid[10];
    int i=0;
    for(i; i<10; i++)
    {    
        pthread_create(&tid[i], NULL, task, (void*)&i);
        pthread_join(tid[i],  NULL);
    }    
}
