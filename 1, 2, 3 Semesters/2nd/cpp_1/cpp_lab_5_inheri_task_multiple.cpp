#include <iostream>
using namespace std;
class A{
    private:
        int x;
    protected:
        int y;
    public:
        int z;
        A(): x(0), y(0), z(0){}
        A(int xx, int yy, int zz): x(xx), y(yy), z(zz){}
        void show()
        {
            cout<<"x: "<<x<<endl<<"y: "<<y<<endl<<"z: "<<z<<endl<<endl;
        }
};
//Multiple open
class B{ 
    private:
        int w;
    public:   
        B(): w(9){}
        B(int ww): w(ww){}
        void showB()
        {
            cout<<"w: "<<w<<endl;
        }        
};
class C:public A, public B{
    private:
        int t;
    public:
        C(): A(), B(), t(6){}
        C(int xx, int yy, int zz, int ww, int tt): A(xx, yy, zz), B(), t(tt){}
        void showC(){
            show();
            showB();
            cout<<"t: "<<t;
        }
};
//Multiple close

//Multilevel open
class D: public A{
    private:
        int q;
    public:
        D(): A(), q(0){}
        D(int xx, int yy, int zz, int qq): A(xx, yy, zz), q(qq){}
        void showD()
        {
            cout<<"q: "<<q<<endl;
            show();
        }
};
class E: public D{
    private:
        int e;
    public:
        E(): D(), e(0){}
        E(int xx, int yy, int zz, int qq, int ee): D(xx, yy, zz, qq), e(ee){}

        void showE()
        {
            cout<<"e :"<<e<<endl;
            showD();
        }
};
// MulltiLevel close


// hierarchial open
class F: public A{
    private:
        int f;
    public:
        F(): A(), f(0){}
        F(int xx, int yy, int zz, int ff): A(xx, yy, zz), f(ff){}
        void showF()
        {
            cout<<"\nf: "<<f<<endl;
            show();
        }
    };

class G: public A{
    private:
        int g;
    public:
        G(): A(), g(0){}
        G(int xx, int yy, int zz, int gg): A(xx, yy, zz), g(gg){}
        void showG()
        {
            cout<<"\ng: "<<g<<endl;
            show();
        }
    };

// hierarchial close


//hybrid open

class H: public A{
    private:
        int h;
    public:
        public:
        H(): A(), h(0){}
        H(int xx, int yy, int zz, int hh): A(xx, yy, zz), h(hh){}
        void showH()
        {
            cout<<"\nh: "<<h<<endl;
            show();
        }
};
class I: public A{
    private:
        int i;
    public:
        public:
        I(): A(), i(0){}
        I(int xx, int yy, int zz, int ii): A(xx, yy, zz), i(ii){}
        void showI()
        {
            cout<<"i: "<<i<<endl;
            show();
        }
};
class J: public I{
    private:
        int j;
    public:
        J(): I(), j(0){}
        J(int xx, int yy, int zz, int ii,int jj): I(xx, yy, zz, ii), j(jj){}

        void showJ()
        {
            cout<<"\nj: "<<j<<endl;
            showI();
        }
};

//hybrid close

int main()
{
    cout<<"Multiple Inheritance: \n";
    C objC(1, 2, 3, 4, 5);
    objC.showC();
    
    cout<<endl<<endl<<"Multi-Level inheritance: \n";
    E objE(6, 7, 8, 9, 10);
    objE.showE();
    
    cout<<endl<<endl<<"Hierarchial inheritance: \n";
    F objF(11, 12, 13, 14);
    objF.showF();
    G objG(15, 16, 17, 18);
    objG.showG();

    cout<<endl<<endl<<"Hybrid inheritance: \n";
    J objJ(19, 20, 21, 22, 23);
    objJ.showJ();
    H objH(24, 25, 26, 27);
    objH.showH();


}