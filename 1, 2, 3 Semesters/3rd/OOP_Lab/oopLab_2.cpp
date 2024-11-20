#include <iostream>
using namespace std;
class Complex{
    private:
        double re, im;
    public:
        Complex();
        Complex(double real, double img);
        void showComplex();
        //two important functions
        void addComplex(Complex c1, Complex c2);
        Complex negComplex();

};
    //function definition
    Complex::Complex()
    {
        re = 0.0;
        im = 0.0;
    }
    Complex::Complex(double real, double img)
    {
        re = real;
        im = img;
    }
    void Complex::showComplex()
    {
        if(im>=0)
            cout<<re<<" + i"<<im<<endl;
        else
            cout<<re<<im<<"i"<<endl;
    }
    void Complex::addComplex(Complex c1, Complex c2)
    {
        re = c1.re + c2.re;
        im = c1.im + c2.im;
    }
    Complex Complex::negComplex()
    {
        Complex tmp;
        tmp.re = -re;
        tmp.im = -im;
        return tmp;
    }

int main()
{
    Complex c1(2,4), c2(0.5,6.2);
    c1.showComplex();
    c2.showComplex();
    Complex c;
    c.addComplex(c1, c2);
    c.showComplex();
    Complex c3(9, 6);
    c3 = c.negComplex();
    c3.showComplex();
}