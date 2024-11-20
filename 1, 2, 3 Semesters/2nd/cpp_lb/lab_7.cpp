#include "lb7_square.cpp"
#include "lb7_circle.cpp"
class SHAPE
{
private:
    
public:
    virtual void draw() = 0;
    
};
int main()
{
    SHAPE *sh;
    circle c1;
     square s1;
    sh = &c1;
    sh->draw();
    sh = &s1;
    sh->draw();
}
