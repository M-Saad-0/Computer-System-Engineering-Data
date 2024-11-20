#include <stdio.h>
#include <pthread.h>
void *childThread(void *ptr)
{
    int i;
    for(i=0; i<=20; i++)
        printf("Child Count: %d\n", i);
    pthread_exit(0);
}
int main()
{
    pthread_t tid;
    int ret;
    ret = pthread_create(&tid, NULL, childThread, NULL);
    if(ret<0)
    {
        printf("Thread Creation Failed\n"); 
        return 1;
    }
    pthread_join(tid, NULL);
    printf("Parent is Counting...");
    return 0;
}