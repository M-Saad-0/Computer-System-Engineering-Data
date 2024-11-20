#include <stdio.h>

int main()
{
    static float arr[100];
    for(int i=0; i<100; i++)
        scanf("%f", &arr[i]);
    return 0;
}

//size of initialized is 16424 bytes and of uninitialized is 16008 bytes
