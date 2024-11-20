#include <iostream>
using namespace  std;
void average(int*k, int size)
{
	for(int i=0; i<size; i++)
	{
		*k=*(k-i)+*k;	
	}
	*k=*k/size;
}
main()
{
	int array[6]={3,2,3,4,5,6};
	
	average(&array[5], 6);
	cout<<"The average of the array: "<<array[5];
}