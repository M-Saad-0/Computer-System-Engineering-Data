#include <iostream>
using namespace std;
class Complex{
    private:
        double re, img;
        static int countObject;
    public:
        Complex();
        Complex(double r, double im);
        void setRe(double r);
        void setIm(double im);
        double getRe() const;
        double getIm() const;
        void showComplex();
        static int getCount();
        ~Complex();
};
Complex::~Complex()
{
    cout<<"Destroying the object.......";

}
int Complex::countObject = 0;
Complex::Complex()
{
    countObject++;
    re = 0.0; 
    img = 0.0;
}
Complex::Complex(double r, double im)
{
    countObject++;
    re = r;
    img = im;
}
void Complex::setRe(double r){re = r;}
void Complex::setIm(double im){img = im;}
double Complex::getRe() const {return re;} 
double Complex::getIm() const {return img;}
int Complex::getCount()
{
    return countObject;
} 
void Complex::showComplex() 
{
    if(img<0)
    {cout<<"Complex No: "<<re<<" "<<img<<"i"<<endl;}
    else if(img>=0)
    {cout<<"Complex No: "<<re<<" + "<<img<<"i"<<endl;}
}
int main()
{
    cout<<"Before Counter: "<<Complex::getCount()<<endl;
    // Complex C[5];
    // double r, i;
    // for(int j=0; j<5; j++)
    // {
    //     cout<<"Enter the real number: ";
    //     cin>>r;
    //     cout<<"Enter the Imaginary Number: ";
    //     cin>>i;
    //     C[j].setRe(r);
    //     C[j].setIm(i);
        
    // }
    // for(int i=0; i<5; i++)
    // {
    //     C[i].showComplex();
    // }

    Complex*V = new Complex();
    cout<<"Counter: "<<Complex::getCount()<<endl;
    V->setIm(4);
    V->setRe(7);
    V->showComplex();
    delete V;
    return 0;
}