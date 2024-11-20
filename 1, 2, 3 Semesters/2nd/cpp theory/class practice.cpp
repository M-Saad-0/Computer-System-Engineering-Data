#include <iostream>
#include <string>
using namespace std;
int main()
{
	string Sum;
	
	string name[4]={"Muhammad Saad","Not Muhammad Saad","Yes Muhammad Saad","Ok Muhammad Saad"};
	//cin>>name[4];
	cout<<name[2]<<endl;//name;
	string bame = "Muhammad Saad";
	cout<<"This is a string using string library: "<<bame<<endl;
	cout<<endl<<bame.size()<<"\n"<<name[4].size()<<endl;
	Sum=name[0]+bame;
	cout<<"sum="<<Sum<<endl;
	string bus;
	getline(cin, bus);//--> it is better for inputing string from the user
	cout<<bus;
	string big_bus;
	cin>>big_bus;
	cout<<big_bus; 
	//bus.assign(big_bus);
	//cout<<endl<<endl<<"bus"<<bus<<"big_bus"<<big_bus;
	bus.swap(big_bus);
	cout<<endl<<endl<<"bus"<<bus<<"big_bus"<<big_bus;
	
}
