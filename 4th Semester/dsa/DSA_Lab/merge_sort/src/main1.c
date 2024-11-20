#include <stdio.h>
void merge(int arr[], int l, int mid, int r)
{
    int n1 = mid-l+1;
    int n2 = r-mid;
    int t1[n1];
    int t2[n2];

    for(int i=0; i<n1; i++)
        t1[i] = arr[l+i];
    for(int i=0; i<n2; i++)
        t2[i] = arr[mid+1+i];
    
    int i=0;
    int j=0;
    int k=l;
    while(i<n1 && j<n2)
    {
        if(t1[i]<t2[j])
        {
            arr[k] = t1[i];
            i++;
        }
        else
        {
            arr[k] = t2[j];
            j++;
        }
        k++;
    }
    while(i<n1)
    {
        arr[k] = t1[i];
        k++; i++;
    }
    while(j<n2)
    {
        arr[k] = t2 [j];
        k++; j++;
    }
    
}

void mergeSort(int arr[], int l, int r)
{
    if(l<r)
    {
        int mid = l/2+r/2;
        mergeSort(arr, l, mid);
        mergeSort(arr, mid+1, r);
        merge(arr, l, mid, r);
    }
}
int main()
{
    int arr[] = {7, 1, 2, 3 ,15 ,21};
    mergeSort(arr, 0, 6);
    for(int i=0; i<6; i++)
    {
        printf("%d ", arr[i]);
    }
}