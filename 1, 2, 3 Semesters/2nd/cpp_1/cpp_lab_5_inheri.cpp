#include <iostream>
using namespace std;
class A{
    private:
        int x;
    protected:
        int y;
    public:
        int z;
        A(): x(0), y(0), z(0){}
        A(int xx, int yy, int zz): x(xx), y(yy), z(zz){}
        void show()
        {
            cout<<"x: "<<x<<endl<<"y: "<<y<<endl<<"z: "<<z<<endl<<endl;
        }
};
class B:public A{ //change to private and protected and prove what happens
    private:
        int w;   // inheritance is from parent to child and not from child to parent
    public:
        B(): A(), w(0){}
        B(int ww, int xx, int yy, int zz): A(xx, yy, zz){
            w = ww;
            
        }  //constructor chaining
        void showB()
        {
            show();
            cout<<"B class: "<<"w: "<<w<<endl<<endl;
        }        
};



int main()
{
    A objA, obj2A(1, 2, 3);
    objA.z = 5;
    objA.show();
    obj2A.show();
    B objB, obj2B(1, 2, 4, 5);
    objB.show();
    obj2B.showB();
}