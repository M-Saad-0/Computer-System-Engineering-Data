#include <iostream>
#include "activity_L_7_1_0.cpp"
double v1;
double a1;
using namespace std;
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
            a1 = x * y;
        }
        void vol()
        {
            v1 = 0;
        }
};