#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int min = 90000;
    for (int i = 0; i < argc - 1; i++)
    {
        if (min > atoi(argv[i + 1]))
            min = atoi(argv[i + 1]);
    }
    return min;
}