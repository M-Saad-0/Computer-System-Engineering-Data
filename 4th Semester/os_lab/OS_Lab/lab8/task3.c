#include <stdio.h>
#include <pthread.h>
int global_data = 5;
void *kidfunc(void *p)
{
    printf("Kid here. Global data was %d.\n", global_data);
    global_data = 15;
    printf ("Kid Again. Global data was now %d.\n", global_data);
}
int main()
{
    pthread_t kid;
    pthread_create(&kid, NULL, kidfunc, NULL);
    printf ("Master thread here. Global data = %d\n", global_data);
    global_data = 10;
    pthread_join(kid, NULL);
    printf ("End of program. Global data = %d\n", global_data);
}