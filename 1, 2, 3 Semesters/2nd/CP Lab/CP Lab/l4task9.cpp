#include <iostream>
using namespace std;
main()
{
    cout<<"1.	Coffee		2. Tea 		3. Coke		4. Orange Juice";
    int v1=0, v2=0, v3=0, v4=0, fav;
    for(int i=1; fav!=-1; i++)
    {
        cout<<"\nPlease input the favorite beverage of person # "<<i<<" : Choose 1, 2, 3, or 4 from the above menu or -1 to exit the program: ";
        cin>>fav;
        switch(fav){
    case(1):
        {v1++;break;}
    case(2):
        {v2++;break;}
    case(3):
        {v3++;break;}
    case(4):
        {v4++;break;}
        }
    }
    cout<<endl<<endl<<"Beverage			 Number of Votes\n*****************************************\nCoffee 				"<<v1<<endl<<"Tea				"<<v2<<endl<<"Coke				"<<v3<<endl<<"Orange Juice 			"<<v4<<endl<<"Total Votes Casted = "<<v1+v2+v3+v4;
}
