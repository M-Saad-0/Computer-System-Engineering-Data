#include <iostream>
using namespace std;
int main()
{
    int great;
    int myArray[10] = {54,23,5,3,13,53,654,23,234,7};
    great=myArray[0];
    //One value from array is assigned to great variable
    for (int i=1; i<10; i++)
    {
    	/*In this loop after every iteration the
		value of great variabla get bigger and 
		bigger untill it untill it is the greatest in array*/
        if (great<myArray[i])
        {
            great=myArray[i];
        }
    }
    cout<<"The largest element in the array is: "<<great;
}
