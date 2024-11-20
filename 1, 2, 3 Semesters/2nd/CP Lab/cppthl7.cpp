#include <iostream>
using namespace std;
struct address
	{
		char city[15];
		int num;
		int sub[4];
	};
int main() 
{
	
	address taq[4]={
					{{'P','e','s','h','a','w','a','r'} , 25000, {1,2,3,4}},
					{"Karachi" , 20125, {6,8,7,5}},
					{"Lahore" , 21500, {3,2,5,6}},
					{"Islamabad" , 25240, {3,9,0,4}}
					};
	cout<<taq[1].city<<endl;
	cout<<taq[2].sub[1]<<endl;
	for(int i=0; i<4; i++)
	{
		cout<<taq[0].city[i];
		for(int j=0; j<4; j++)
		{
			cout<<taq[i].sub[j]<<endl;
		}
	}
}
