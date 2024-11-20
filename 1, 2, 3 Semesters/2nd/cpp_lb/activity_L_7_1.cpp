#include <iostream>
using namespace std;
class shape{
    protected:
        double volume, area;
    public:
        virtual void vol() = 0;
        virtual void ar() = 0;
        virtual void display() = 0;
};
class point: public shape{
    protected:
        double x, y;
    public:
        point(): x(1.1), y(2.2){}
        point(double x, double y): x(x), y(y){}
        void display()
        {
            cout<<"X: "<<x<<endl;
            cout<<"Y: "<<y<<endl;
            cout<<"Area under the graph: "<<area;
        }
        void ar()
        {
            area = x*y;
        }
        void vol()
        {
            volume = 0;
        }
};
class circle: public point{
    protected:
        double radius;
    public:
        circle(): radius(2), point(){}
        circle(double r, double xx, double yy): radius(r){x=xx; y=yy;}
        void ar()
        {
            area = 2* 3.14 * radius * radius;
        }

        void display()
        {
            cout<<"Radius of circle: "<<radius<<endl;
            cout<<"Area of circle : "<<area<<endl;
        }
        void vol()
        {
            volume  = 0;
        }
};
class cylinder: public circle
{
protected:
    double height;
public:
    cylinder(): height(3.3), circle(4, 7, 8){}
    cylinder(double h, double r, double x, double y): height(h), circle(r, x, y){}
    void vol()
    {
        volume = 3.14 * radius * radius * height;
    }
    void ar()
    {
        area = 2 * 3.14 * radius * radius * + 2 * 3.14 * radius * height;
    }
    void display()
    {
        cout<<"Area of cylinder: "<<area<<endl;
        cout<<"Volume of cyliner: "<<volume<<endl;
    }
};

int main()
{
    point p1(23, 53);
    p1.ar();
    circle c1(12, 34, 54);
    c1.ar();
    c1.display();
    cylinder cl1;
    cl1.ar();
    cl1.vol();
    cl1.display();
}


