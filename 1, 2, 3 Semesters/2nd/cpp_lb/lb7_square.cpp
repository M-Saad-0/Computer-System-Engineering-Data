#include <iostream>
#include "lab_7.cpp"
using namespace std;
class square: public SHAPE{
    public:
        void draw()
        {
            cout<<"Draw a square. ";
        }
};