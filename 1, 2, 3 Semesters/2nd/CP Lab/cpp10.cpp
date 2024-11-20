#include <iostream>
using namespace std;
struct rating{
	float r;
};
struct movies{
string title;
int ryear;
rating rate;
};
void display(movies g[3]);
main()
{
	movies ar[3];
	for(int i=0; i<3; i++)
	{
		cout<<"Enter movie title: ";
		cin>>ar[i].title;
		cout<<endl<<"Enter movie release date: ";
		cin>>ar[i].ryear;
		cout<<endl<<"Enter movie rating: ";
		cin>>ar[i].rate.r;
	}
	
		display(ar);
}
	
void display(movies g[3])
{
	for(int i=0; i<3; i++)
	
	{
		cout<<g[i].title<<endl;
		cout<<g[i].ryear<<endl;
		cout<<g[i].rate.r<<endl;
	}
	
}
