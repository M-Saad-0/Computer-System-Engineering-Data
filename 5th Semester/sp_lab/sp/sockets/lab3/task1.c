#include <stdio.h>
#include <unistd.h>

int main()
{
    int numberOfChilds = 0;
    scanf("%d", &numberOfChilds);
    for(int i=0; i<numberOfChilds; i++)
    {
        if((fork()) > 0)
            break;
        else
            printf("%d\n", getpid());
    }
    return 0;
}