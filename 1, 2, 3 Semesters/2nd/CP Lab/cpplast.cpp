#include <iostream>
using namespace std;
class rect
{
    private:
        int width;
        int length;
    public:
        int area()
        {
            return width*length;
        }
        void setvals(int, int);
    rect(int x, int y)   //
    {
        //cout<<"This is a constructor";
        width=y;
        length=x;
    }
    ~rect()  //destructor can be used to clear the memory after the program ends
    {
        cout<<"This is a distructor";
    }
    rect ();

};
rect::rect()
    {
        width=5;
        length=30;
    }

//void rect::setvals/*scope resolusion operaotor*/(int x, int y)
//{
  //  width=y;
    //length=x;
//}
main()
{
    rect r(4,4);
  //  r.setvals(4,4);
    cout<<r.area();
    rect x;
    cout<<x.area();
}
