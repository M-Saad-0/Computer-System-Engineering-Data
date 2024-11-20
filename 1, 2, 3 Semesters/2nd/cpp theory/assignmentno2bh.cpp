#include <iostream>
using namespace std;
int main()
{
    int Array[9];
    for(int l=0; l<9;l++)
    {
    	/*Here in this for values will 
		be assigned to every element 
		of the array from the user*/
        cout<<"Enter Array["<<l<<"]: ";
        cin>>Array[l];
    }
    int s_lowest,lowest;
    lowest = Array[0];
    for(int i=1; i<9; i++)
    {
    	/*In this loop after every iteration
		 the value assigned to lowest variable
		  will get smaller and smaller and its 
		  previous value will be assigned to s_lowest
		   variable*/ 
        if(lowest>Array[i])
        {
            s_lowest=lowest;
            lowest=Array[i];
        }
        else if(s_lowest>Array[i] && Array[i]!=lowest)
        {
        	/*this else if makes it sure that it has the 
        	second lowest value*/
            s_lowest=Array[i];
        }
    }
    cout<<s_lowest<<" is the second lowest. ";
}
