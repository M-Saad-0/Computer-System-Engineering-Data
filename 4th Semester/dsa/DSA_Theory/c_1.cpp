#include <iostream>
using namespace std;
int binarySearch(int arr[], int toSearch, int length);
int main()
{
    int arr[9] = {6, 12, 17, 23, 38, 45, 77, 84, 90};
    cout<<"Enter a number to search: ";
    int number, length;
    cin>>number;
    length = sizeof(arr)/sizeof(int);
    int index = binarySearch(arr, number, length);
    cout<<"The index is at: "<<index<<"."<<endl;
}
int binarySearch(int arr[], int toSearch, int length)
{
    int mid = (length-1)/2, st = 0, en = length-1;
    if(arr[st]==toSearch || arr[en]==toSearch)
    	return toSearch==arr[st]? st :  en;
    
    while (en-st!=-1)
    {
        if(arr[mid]>toSearch)
        {
            en = mid-1;
        }
        else if(arr[mid]<toSearch)
        {
            st = mid+1;
        }
        else if(arr[mid]==toSearch)
        {
            break;
        }
        mid = (en+st)/2;
    }
    return en-st==-1? -1 : mid;
}
