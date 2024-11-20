#include <iostream>
using namespace std;
struct info
{
	string stu_reg[41];
	string stu_nm[41];
	string stu_semno[41];

};
main()
{
	info student_t;
	string reg_chk;
	string yes_no;
	for(int i=0; i<41; i++)
	{
		
		cout<<"Enter registration No. of student "<<i+1<<" : ";
		cin>>student_t.stu_reg[i];
		cout<<"Enter name of student "<<i+1<<" : ";
		cin>>student_t.stu_nm[i];
		cout<<"Enter semester no. of student "<<i+1<<" : ";
		cin>>student_t.stu_semno[i];
		if(i%5==0 && i!=0)
			{
				cout<<"Type 'No' if you want to stop and 'Yes' if not: ";
				cin>>yes_no;
				if(yes_no=="No" || yes_no=="no" || yes_no=="NO" )
				{
					break;
				}
			}
	}

	cout<<"Enter the regitration no. of the student whose information you want to find: ";
	cin>>reg_chk;
	for(int j=0; j<41; j++)
	{
		if(reg_chk==student_t.stu_reg[j])
		{
			cout<<"Student Number is: "<<j+1<<endl;
			cout<<"Student name: "<<student_t.stu_nm[j]<<endl;
			cout<<"Student registration no: "<<student_t.stu_reg[j]<<endl;
			cout<<"Student semester no: "<<student_t.stu_semno[j]<<endl;
		}
	}
	
}
