#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int max=0;
    for (int i = 0; i < argc - 1; i++)
    {
        if (max < atoi(argv[i + 1]))
            max = atoi(argv[i + 1]);
    }
    return max;
}