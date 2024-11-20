#include <iostream>
using namespace std;
void merge_sort(int a[], int length);
void merge_sort_recursion(int a[], int l, int r);
void merge_sorted_arrays(int a[], int l, int m, int r);
int main()
{
    int arr[] = { 9, 4, 8, 1, 7, 0, 3, 2, 5, 6};
    int size = sizeof(arr)/sizeof(int)-1;
    merge_sort(arr, size);
    for(int i=0; i<=size; i++)cout<<" "<<arr[i];
}
void merge_sort(int a[], int length)
{
    merge_sort_recursion(a, 0, length);
}
void merge_sort_recursion(int a[], int l, int r)
{
    //=l + (r - l) / 2
    if(l<r)
    {
        int mid = (l+r)/2;
        merge_sort_recursion(a, l, mid);
        merge_sort_recursion(a, mid+1, r);
        merge_sorted_arrays(a, l, mid, r);
    }
}
void merge_sorted_arrays(int a[], int l, int m, int r)
{
    int left_length = m-l+1;
    int right_length = r-m;
    int tarr1[left_length];
    int tarr2[right_length];
    int k, i, j;
    for(int i=0; i<left_length; i++) tarr1[i]=a[l+i]; for(int j=0; j<right_length; j++) tarr2[j]=a[m+1+j];
    for(i=0, j=0, k=l; k<=r; k++)
    {
        if((i<left_length) && (j>=right_length || tarr1[i]<=tarr2[j]))
        {
            a[k]=tarr1[i];
            i++;
        }
        else
        {
            a[k]=tarr2[j];
            j++;
        }
    }
}