#include <iostream>
using namespace std;
class Complex
{
	private:						//access specifiers
		double real, imginary;
	public:
		Complex(double r, double i)
		{
			real = r;
			imginary = i;
			cout<<"1st constructor";	
		}
		Complex()
		{
			real = 1;
			imginary = 1;	
			cout<<"2nd constructor";
		}
		
		void showComplex()
		{
			cout<<" = "<<real<<" + i"<<imginary<<"\n";
			
		}
		
};
int main()
{
	Complex z(-2,3);
	z.showComplex();
	Complex z2;
	z2.showComplex();
}  
