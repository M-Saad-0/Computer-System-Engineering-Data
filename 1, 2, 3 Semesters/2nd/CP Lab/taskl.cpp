#include <iostream>
using namespace std;
class cb
{
    private:
    int width;
    int length;
    int height;

    public:
    int volume()
    {
        return length*height*width;
    }
    cb(int x, int y,  int z)
    {
        width=x;
        height=y;
        length=z;
    }
    ~cb()
    {
        cout<<" of the dimension "<<height<<","<<length<<","<<width;
    }
};
main()
{
    int w,y,z;
    cin>>w>>y>>z;
    cb x(w,y,z);
    cout<<"The volume is: "<<
    x.volume();
}

