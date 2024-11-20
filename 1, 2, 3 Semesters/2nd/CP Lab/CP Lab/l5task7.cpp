#include <iostream>
using namespace std;
main()
{
    int arr[8];
    for(int i=0; i<8; i++)
    {
    	cout<<"Enter the value "<<i+1<<": ";
        cin>>arr[i];
    }
    int val;
    cout<<"Enter some value: ";
    cin>>val;
    for(int j=0; j<8; j++)
    {
        if(val==arr[j])
        {
            cout<<"Index of the value matched: "<<j<<endl;
        }
    }
}

