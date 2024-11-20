#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int sum = atoi(argv[1]) + atoi(argv[2]);
    printf("Sum of two arguments: %d\n", sum);
    return sum;
}