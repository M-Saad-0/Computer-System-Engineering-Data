#include <iostream>
using namespace std;
class Complex{
    private:
        double re, im;
    public:
        Complex(double nr, double ni);
        void subComplex(Complex b1, Complex b2);
        Complex conjComplex();
        void showComplex();
        Complex();
};
Complex::Complex()
{
    re = 4.0;
    im = 5.0;
}
Complex::Complex(double nr, double ni)
{
    re = nr;
    im = ni;
}
void Complex::subComplex(Complex b1, Complex b2)
{
    re = b1.re - b2.re;
    im = b1.im - b2.im;
}
Complex Complex::conjComplex()
{
    Complex tmp;
    tmp.re = re;
    tmp.im = -im;
    return tmp;
}
void Complex::showComplex()
{   
    if(im<0)
        cout<<re<<" "<<im<<"i"<<endl;
    else
        cout<<re<<" + "<<im<<"i"<<endl;
}
int main()
{
    Complex c1(1.4, 5.2), c2(3.5, 4.1), result;
    Complex c_Sub;
    c_Sub.subComplex(c1, c2);
    c_Sub.showComplex();
    result = c_Sub.conjComplex();
    result.showComplex();
}