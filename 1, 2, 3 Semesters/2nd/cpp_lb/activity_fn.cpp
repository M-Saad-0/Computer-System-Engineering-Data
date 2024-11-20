#include <iostream>
using namespace std;
class Company
{
    static int hiring;
public:
    Company(){
        hiring++;
    }
    static int counter()
		{
			return hiring;
		}

};
int Company::hiring = 0;
int main()
{
    Company h1[1000];
    cout<<Company::counter();
}