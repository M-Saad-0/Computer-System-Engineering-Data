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