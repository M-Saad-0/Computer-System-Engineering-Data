#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv)
{
    int arr[argc-1];
    for(int i=1; i<argc; i++)
    {
        arr[i-1] = atoi(argv[i]);
    }
    for(int i=0; i<argc-1; i++)
}