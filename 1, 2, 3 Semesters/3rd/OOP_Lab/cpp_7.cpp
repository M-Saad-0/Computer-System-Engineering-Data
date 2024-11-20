#include <iostream>
using namespace std;
class Point{
	private:
		int x, y;
	public:
		Point()
		{
			x = 8, y = 4;
		}
		Point(int num1, int num2)
		{
			x = num1;
			y = num2;
		}
		void setX(int x1) 
		{
			x=x1;
		}
		int getX() const
		{
			return x;
		}
		void setY(int y1) 
		{
			y=y1;
		}
		int getY() const
		{
			return y;
		}
};
int main()
{
	Point p1, p2(2, 5), p3;
	p1.setX(4);
	p1.setY(3);
	cout<<"("<<p1.getX()<<", "<<p1.getY()<<")\n";
	cout<<"("<<p2.getX()<<", "<<p2.getY()<<")\n";
	cout<<"("<<p3.getX()<<", "<<p3.getY()<<")";
	return 0;


}
