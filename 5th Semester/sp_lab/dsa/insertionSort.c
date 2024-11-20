#include <stdlib.h>
#include <stdio.h>
void print(int arr[], int n)
{
    for (int i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}
int main(int argc, char *argv[])
{
    int n = argc - 1;
    int arr[n];
    for (int i = 1; i < argc; i++)
    {
        arr[i - 1] = atoi(argv[i]);
    }
    int j;
    for (int i = 1; i < n; i++)
    {
        int current = arr[i];
        for (j = i - 1; arr[j] > current&&j>=0; j--)
        {
            arr[j+1] = arr[j];
        }
        arr[j+1] = current;
        print(arr,n);

    }
    
}
