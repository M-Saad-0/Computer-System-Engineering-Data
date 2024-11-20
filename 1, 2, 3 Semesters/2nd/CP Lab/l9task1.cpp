#include <iostream>
using namespace std;
main()
{
	int ar[8]={2,3,4,5,6,7,8,9};
	int*pr=ar;
	for(int i=0; i<8; i++)
    {
        cout<<*(pr+i)<<endl;

    }

}
