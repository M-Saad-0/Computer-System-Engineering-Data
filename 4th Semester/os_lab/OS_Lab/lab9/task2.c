#include <pthread.h>
#include <stdio.h>
void *ChildThread(void *a)
{
	int count=*((int*)a), i=0;
    for(i; i<count; i++) printf("Line %d\n", i);    
    pthread_exit(NULL);
}

int main(void)
{
    pthread_t hThread;
    int count = 9;
    pthread_create(&hThread, NULL, ChildThread, (void*)&count);
    pthread_exit(NULL);
    printf ("Parent is continuing....\n");
    return 0;
}
