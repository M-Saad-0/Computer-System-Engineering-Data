#include <iostream>
using namespace std;
main()
{
	cout<<"1.Coffee     2.Tea     3.Coke     4.Orange juice"<<endl;
	int vt1=0, vt2=0, vt3=0, vt4=0, fav, no=0;
	cout<<"Choose 1, 2, 3, or 4 from the above menu or -1 to exit the program"<<endl;
	do{
		no++;
		cout<<"Please input the favorite beverage of person#"<<no<<": ";
		cin>>fav;
		if (fav==1){
			vt1++;
		}	
		else if (fav==2){
			vt2++;
		}
		else if (fav==3){
			vt3++;
		}
		else if (fav==4){
			vt4++;
		}
		
	}while(fav!=-1);
	cout<<"\n\n\n\n\nBeverage               Votes"<<endl;
	cout<<"*****************************"<<endl;
	cout<<"Coffee                   "<<vt1<<endl;
	cout<<"Tea                      "<<vt2<<endl;
	cout<<"Coke                     "<<vt3<<endl;
	cout<<"Orange Juice             "<<vt4<<endl<<endl;
	
	
	
	}	

