#include <iostream>
using namespace std;
int add(int, int);
int sub(int, int);
void sum(int*x,int*y)
{
	*x=*x+*y;
	x=0;
}
int operation(int g, int h, int(*k)(int))
{
	int sum = (*k)(g,h);
	return sum;
}
int main()
{
	int a,b;
	cin>>a>>b;
	sum(&a,&b);
	//cout<<s;
	//cout<<*p;
	cout<<a;

	void*ptr; //--> can point any data type variable
	ptr = &b;
	cout<<ptr;
	int c,d;
	c=operation(2,4,sub);
	cout<<endl<<c;//--> only add, sum, operation are being used here
}
/*p = null, p=0, p= nullptr  -->  for destroying pointer*/
int add(int c, int d)
{
	return c+d;
}
int sub(int e, int f)
{
	return e-f;	
}