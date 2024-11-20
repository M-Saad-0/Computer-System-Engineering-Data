#include "activity_L_7_1_2.cpp"
#include <iostream>
using namespace std;
double v3;
double a3;
class cylinder: public circle
{
protected:
    double height;
public:
    cylinder(): height(3.3), circle(4, 7, 8){}
    cylinder(double h, double r, double x, double y): height(h), circle(r, x, y){}
    void vol()
    {
        v3 = 3.14 * radius * radius * height;
    }
    void ar()
    {
        a3 = 2 * 3.14 * radius * radius * + 2 * 3.14 * radius * height;
    }
    void display()
    {
        cout<<"Area of cylinder: "<<a3<<endl;
        cout<<"Volume of cyliner: "<<v3<<endl;
    }
};

