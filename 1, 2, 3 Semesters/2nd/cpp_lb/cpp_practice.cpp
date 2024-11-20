#include <iostream>
using namespace std;
#include <string.h>
class grandfather
{
private:
    char *name;
    char *dep;
    int sal;
    int sY;
public:
    grandfather(/* args */);
    ~grandfather();
    grandfather(char name1[], char dep1[], int sal1, int sY1);
    void display();
    grandfather(const grandfather &deep);
};

grandfather::grandfather():sal(0), sY(0){
    name = new char[0];
    strcpy(name, "");
    dep = new char[0];
    strcpy(dep, "");
}

void grandfather :: display()
{
    cout<<"Name: "<<name;
    cout<<"\nDepartment: "<<dep;
    cout<<"\nSalary: "<<sal;
    cout<<"\nService years: "<<sY<<endl;
}
grandfather::grandfather(char name1[], char dep1[], int sal1, int sY1):sal(sal1), sY(sY1){
    name = new char[strlen(name1) + 1];
    strcpy(name, name1);
    dep = new char[strlen(dep1) + 1];
    strcpy(dep, dep1);
}
grandfather::~grandfather()
{
    delete[] name;
    delete[] dep;
}
grandfather::grandfather(const grandfather &deep)
{
    sal = deep.sal;
    sY = deep.sY;
    name = new char[strlen(deep.name) + 1];
    dep = new char[strlen(deep.dep) + 1];
    strcpy(deep.name, name);
    strcpy(deep.dep, dep);
}

int main()
{
    grandfather obj1;
    obj1.display();
    char name[100], dep[100];
    int sal, sY;
    cout<<"\nEnter name and department and salary and service years: ";
    cin.getline(name, 100);
    cin.getline(dep, 100);
    cin>>sal>>sY;
    grandfather obj2(name, dep, sal, sY);
    obj2.display();
    grandfather obj3 = obj2;
    obj3.display();
    cout<<endl;

}