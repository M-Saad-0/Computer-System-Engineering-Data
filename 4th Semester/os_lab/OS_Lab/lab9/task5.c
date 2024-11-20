#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

void *childT(void *p);

struct data{
    int element;
    char *string;
};

int main()
{
    pthread_t t;
    static struct data dt;
    
    printf("Enter a number and a string: ");
    scanf("%d", &dt.element);
    dt.string = (char*)malloc(sizeof(char)*20);
    scanf("%s", dt.string);
    
    for(int i=0; i<=3; i++)
    {
	pthread_create(&t, NULL, childT, (void*)&dt);
  	pthread_join(t, NULL);
    }
}
void *childT(void *p)
{
    struct data d = *((struct data*)p);
    printf("%s - %d\n", d.string, d.element);
}


