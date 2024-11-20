#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int prod = atoi(argv[1]) * atoi(argv[2]);
    printf("Multiplication of two arguments: %d\n", prod);
    return prod;
}