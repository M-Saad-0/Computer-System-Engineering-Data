#include <stdio.h>
int binarySearch(int arr[], int start, int length, int toSearch)
{
    int mid = start/2+length/2;
    if(arr[mid]==toSearch) return mid;
    while(start<=length)
    {
        if(arr[mid]==toSearch) return mid;
        if(arr[mid]<toSearch) start = mid+1;
        else if(arr[mid]>toSearch) length = mid-1;    
        mid = (start+length)/2;
    }
    return -1;
}
int main()
{
    int arr[] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21};
    int length = sizeof(arr)/sizeof(int);
    int start = 0;
    printf("Enter a number to search: ");
    int num;
    scanf("%d", &num);
    int index = binarySearch(arr, start, length-1, num);
    printf("Here is the index of the number: %d", index);
}