#include "activity_L_7_1_1.cpp"
#include <iostream>
double v2;
double a2;
using namespace std;
class circle: public point{
    protected:
        double radius;
    public:
        circle(): radius(2), point(){}
        circle(double r, double xx, double yy): radius(r){x=xx; y=yy;}
        void ar()
        {
            a2 = 2* 3.14 * radius * radius;
        }

        void display()
        {
            cout<<"Radius of circle: "<<radius<<endl;
            cout<<"Area of circle : "<<a2<<endl;
        }
        void vol()
        {
            v2  = 0;
        }
};