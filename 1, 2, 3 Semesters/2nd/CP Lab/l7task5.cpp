#include <iostream>
using namespace std;
void grade();
float grade (int);
char grade (float);
int main()
{
    grade();    
}
void grade()
{
    int marks,percentage;
    cin>>marks;
    percentage=grade(marks);
    float to_grade;
    to_grade=float(percentage);
    cout<<grade(to_grade);
}
float grade(int marks)
{
    return (marks*100)/150;
}
char grade(float percentage)
{
    char grade;
    if(percentage>90)
    {
        grade='A';
    }
    else if(percentage>70)
    {
        grade='B';
    }
    else if (percentage>60)
    {
        grade='C';
    }
    else if(percentage>50)
    {
        grade='D';
    }
    else
    {   
        grade='F';
    }
    return grade;
}
