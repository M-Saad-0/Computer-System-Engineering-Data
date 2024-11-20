#include <iostream>
#include <windows.h>
using namespace std;
int main()
{
    int hr, mt, sc;
    for(hr=0; hr<24; hr++)
    {
        for(mt=0; mt<60; mt++)
        {
            for(sc=0; sc<60; sc++)
            {   //cout << '\a'<<endl;
                system("cls");
                cout<<hr<<" : "<<mt<<" : "<<sc;
                Sleep(1000);

            }
        }
    }
}
