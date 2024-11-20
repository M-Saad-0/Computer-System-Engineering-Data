#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *func(void *p);
int main()
{
    long int tid;
    int x = 10, y = 20;
    int ret = pthread_create(&tid, NULL, func, NULL);
    int ret1 = pthread_join(tid, NULL);
    printf("This is my PID = %d and this is my TID = %ld\n", getpid(), pthread_self());    
    int z = x+y;
    printf("Sum: %d \n", z);
}  
void *func(void *p)
{
    int x = 2, y = 5;
    int z = x - y;
    printf("Diff: %d\n", z);
    printf("This is my PID = %d and this is my TID = %ld\n", getpid(), pthread_self()); 
}

