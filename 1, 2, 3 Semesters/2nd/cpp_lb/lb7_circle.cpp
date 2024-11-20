#include "lab_7.cpp"
#include <iostream>
using namespace std;
class circle: public SHAPE{
    public:
        void draw()
        {
            cout<<"Draw a circle. "<<endl;
        }
};
