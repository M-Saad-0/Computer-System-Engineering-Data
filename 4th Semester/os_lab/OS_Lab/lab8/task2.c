#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
void *kidFunc(void *p)
{
    printf("Kid ID is %d\n", getpid());
}
int main()
{
    pthread_t kid;
    pthread_create(&kid, NULL, kidFunc, NULL);
    printf("Parent is %d\n", getpid());
    pthread_join(kid, NULL);
    printf("Thread ID: %ld\n", pthread_self());
}
