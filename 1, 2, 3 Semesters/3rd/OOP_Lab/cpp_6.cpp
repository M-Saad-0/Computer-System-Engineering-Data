#include <iostream>
using namespace std;
class Heater{
	private:
		int temperature;
	public:
		Heater()
		{
			temperature = 15;
		}
		void warmer()
		{
			temperature+=5;
		}
		void cooler()
		{
			temperature-=5;
		}
		
		int show()
		{
			return temperature;
		}
		
};
int main()
{
	Heater h1;
	h1.cooler();
	cout<<h1.show();
	return 0;
} 
