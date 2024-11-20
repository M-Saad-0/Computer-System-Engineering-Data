#include <iostream>
using namespace std;
main()
{
    int ar1[5], ar2[6],sum;
    
    for(int i=0; i<11;i++)
    {
    	if(i<=4)
    	{
		cout<<"Enter element "<<i+1<<" of first array: ";
		cin>>ar1[i];
		}
		else if (i>4)
		{
			cout<<"Enter element "<<i-4<<" of second array: ";
			cin>>ar2[i-5];
		}	
	}
    sum=ar1[0] + ar1[1] + ar1[2] + ar1[3] 
	+ ar1[4] + ar2[0] + ar2[1] + 
	ar2[2] + ar2[3] + ar2[4] + ar2[5];
    cout<<"The sum of the two entered arrays is: "<<sum<<endl;
}

