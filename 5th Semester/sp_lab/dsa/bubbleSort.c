#include <stdlib.h>
#include <stdio.h>
void swap(int *n1, int *n2)
{
    int tmp = *n1;
    *n1 = *n2;
    *n2 = tmp;
}
int main(int argc, char *argv[])
{
    int n=argc-1;
    int arr[n];
    for(int i=1; i<argc; i++)
    {
        arr[i-1] = atoi(argv[i]);
    }
    for(int i=0; i<n; i++)
    {
        for(int j=0; j<n-i; j++)
        {
            if(arr[j]>arr[j+1] && j+1<n)
            {
                swap(&arr[j], &arr[j+1]);
            }
        }
    }
    for(int i=0; i<n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}
