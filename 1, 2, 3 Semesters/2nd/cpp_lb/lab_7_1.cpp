#include <iostream>
using namespace std;
class SHAPE
{
private:
    
public:
    virtual void draw(){
        cout<<"Draw a shape. "<<endl;
    }
    
};

class circle: public SHAPE{
    public:
        void draw()
        {
            cout<<"Draw a circle. "<<endl;
        }
};

class square: public SHAPE{
    public:
        void draw()
        {
            cout<<"Draw a square. ";
        }
};
int main()
{
    SHAPE *sh, sh1;
    circle c1; square s1;
    sh = &sh1;
    sh->draw();
    sh = &c1;
    sh->draw();
    sh = &s1;
    sh->draw();
}