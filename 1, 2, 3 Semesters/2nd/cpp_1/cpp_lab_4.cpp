#include <iostream>
#include <string.h>
using namespace std;
class employee{
    private:
        double salary, s_years;
        char *name, *dep;
    public:
        employee(): salary(0.0), s_years(0.0), name(""), dep(""){}
        employee(double s, double y, char n[], char d[]): salary(s), s_years(y){
            name = new char[strlen(n)+1];
            dep = new char[strlen(d)+1];
            strcpy(dep, d);
            strcpy(name, n);
        }
        employee(const employee &e)
        {
            int n_len, d_len;
            n_len = strlen(e.name);
            d_len = strlen(e.dep);
            name = new char[n_len + 1];
            dep = new char[d_len + 1];
            strcpy(name, e.name);
            strcpy(dep, e.dep);
            salary = e.salary;
            s_years = e.s_years;
        }
        void input()
        {
            char n[100], d[100];
            cout<<"Enter your name: ";
            cin.getline(n, 100);
            cout<<"Enter your department: ";
            cin.getline(d, 100);
            cout<<"Enter your service years and salary: ";
            cin>>s_years>>salary;
            dep = new char[20];
            name = new char[20];
            strcpy(dep, d);
            strcpy(name, n);
        }
        ~employee()
        {
            delete[]name;
            delete[]dep;
        }
        void show(){
            cout<<"Name: "<<name;
            cout<<"\nDepartment: "<<dep;
            cout<<"\nSalary: "<<salary;
            cout<<"\nService Years: "<<s_years;
        }
};
int main()
{
    employee e1, e2(5000, 4, "Saad", "DCSE");
    employee e4, e3 = e2;
    e4.input();
    employee e5 = e4;
    cout<<"e1 Oblect: \n";
    e1.show();
    cout<<"\n\ne2 Oblect: \n";
    e2.show();
    cout<<"\n\ne3 Oblect: \n";
    e3.show();
    cout<<"\n\ne5 Oblect: \n";
    e5.show();
}