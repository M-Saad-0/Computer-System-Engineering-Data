#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int this_is_global;
void thread_func(void *ptr);
int main()
{
    int pid, status, local_main;
    pthread_t thread1, thread2;
    printf("First, we create two threads to see better what context they share.\n");
    this_is_global = 1000;
    printf("Set this_is_global=%d\n", this_is_global);
    pthread_create(&thread1, NULL, (void*)&thread_func, (void*)NULL);
    pthread_create(&thread2, NULL, (void*)&thread_func, (void*)NULL);
    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);
    printf("After threads, this_is_global=%d\n",this_is_global);
    printf("\n");
    printf("Before fork(), local=%d, this_is_global=%d\n", local_main, this_is_global);
    pid = fork();
    if(pid==0)
    {
        printf("In child, pid %d: &global: %p, &local: %p\n", getpid(), &this_is_global, &local_main);
        local_main=13;
        this_is_global=23;
        printf("Child set local_main=%d, this_is_global=%d\n", local_main, this_is_global);
        exit(0);
    }
    else
    {
        printf("In parent, pid %d: &global: %p, &local: %p\n", getpid(), &this_is_global, &local_main);
        wait(NULL);
        printf("In parent, local_main=%d, this_is_global=%d\n", local_main, this_is_global);
        exit(0);
        
    }
}
void thread_func(void *ptr)
{
    int local_thread;
    printf("Thread %ld, pid %d, addresses: &global: %p, &local %p\n", pthread_self(), getpid(), &this_is_global, &local_thread);
    this_is_global++;
    printf("In thread %ld, incremented this_is_global=%d\n", pthread_self(), this_is_global);
    pthread_exit(0);
}
    

