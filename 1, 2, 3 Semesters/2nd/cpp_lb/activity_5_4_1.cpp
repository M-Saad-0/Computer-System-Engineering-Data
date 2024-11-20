#include <iostream>
using namespace std;
class Point{
    protected:
        double x, y;
    public:
        Point(float x, float y);
        Point();
};
    Point::Point(float x, float y):x(x), y(y){}
    Point::Point(): x(2.5), y(4.5){}

class Circle: public Point{
    private:
        double radius, h, k;
    public:
        Circle(double r, double h, double k);
        Circle();
        Circle(float x, float y, double r); 
        double circumf();
        double rd();
};
    Circle::Circle(double r, double h, double k): radius(r), h(h), k(k){}
    Circle::Circle(): radius(5), h(3), k(5){}
    Circle::Circle(float x, float y, double r): Point(x, y), radius(4){}
    double Circle:: circumf(){return 2*(3.14)*radius;}
    double Circle::rd(){return x*x + y*y;}



class Cylinder: public Circle{
    private:
        double height, radius_cl;
    public:
        Cylinder(double r, float x, float y);
        double vol();
        double area();
};
    Cylinder::Cylinder(double r, float x, float y): height(5), radius_cl(r), Circle(x, y, r){}
    double Cylinder::vol(){return circumf()*radius_cl*height;}
    double Cylinder::area(){return circumf()*(radius_cl + height);}


int main()
{
    float x = 3.5, y = 6.1;
    Cylinder c1(2.5, x, y);
    cout<<"Area of cylinder: "<<c1.area()<<endl;
    cout<<"Volume of cylinder: "<<c1.vol()<<endl;
    cout<<"Radius of circle: "<<c1.rd()<<endl;
    cout<<"Circumference of circle: "<<c1.circumf()<<endl;
}
