#include <iostream>
#include <chrono>
#include <thread>

using namespace std;
main()
{
    int hr, mt, sc;
    for(hr=0; hr<24; hr++)
    {
        for(mt=0; mt<60; mt++)
        {
            for(sc=0; sc<60; sc++)
            {   cout << '\a'<<endl;

                system("clear");
            	cout<<hr<<" : "<<mt<<" : "<<sc;
                this_thread::sleep_for(1000ms);
            }
        }
    }
}
