#include <iostream>
using namespace std;
int main()
{
	while(1)
	{
	int day, hour, min, sec;
	cout<<"In order 'Day', 'Hour', 'Minute', 'Seconds': ";
	cin>>day>>hour>>min>>sec;
	cout<<(day-1)*86400+hour*3600+min*60+sec*1<<endl;
}
}
