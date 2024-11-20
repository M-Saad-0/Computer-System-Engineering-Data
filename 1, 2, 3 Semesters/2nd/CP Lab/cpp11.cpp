#include  <iostream>
using namespace std;
struct fruits
{
	int size;
	string color;
};
main()
{
	fruits x;
	x={23, "red"};
	cout<<x.color<<x.size;	
	fruits watermelon;
	cin>>watermelon.color>>watermelon.size;
	cout<<watermelon.color<<watermelon.size;
	x=watermelon;
	cout<<endl<<x.color<<x.size;	
}
