#include<iostream>
 using namespace std; //abstract class shape 
class shape {  protected: 
  double area; 
    double volume;  
    public:  
    virtual double calculateArea()=0;  
    virtual double calculateVolume()=0;  
    virtual void display()=0; }; //deriving subclass point from abstract superclass shape 
    class point: public shape { 
        protected:   
            int x;   int y;  
        public:   
            point()   
            {    x=0;    y=0;   }   
            point(int x1,int y1) 
            {    x=x1;    y=y1;   }   
            void display()   
            {    cout<<"Point:\n";    
            cout<<"Point is at the position: ("<<x<<","<<y<<")";   
            } }; //deriving subclass circle from concrete class point 
            class circle: public point {  
        protected:   
            int radius; 
        public:   
            circle()   
                {        
                    x=4;    y=5;    radius=6;   }
            circle(int x2,int y2,int r)
               {    x=x2;    y=y2;    radius=r;   }
            double calculateArea()
               {   area = 3.14 * (radius*radius);   return area;   }   
            void display()   
            {    cout<<"Circle:\n";
                 cout<<"Area of a circle is: "<<calculateArea()<<endl;
            }     
}; //deriving subclass cylinder from class circle 
class cylinder: public circle {  
    protected:   
    int height;  
    public:   
    cylinder()   
    {        
        x=4;
        y=5;    
        radius=6;    
        height=7;
   }
   cylinder(int x3,int y3,int r1,int h)
      {    
        x=x3;
        y=y3;
        radius=r1;
        height=h;
        }
                          
    double calculateArea()
       {   
            area = (2*3.14*radius*height)+(2*3.14*(radius*radius));   
            return area;   
            }     
    double calculateVolume()   
    {   
        volume = 3.14 *(radius*radius)*height;   
        return volume;   }
    void display()
    {    
        cout<<"Cylinder:\n";    
        cout<<"Area of a cylinder is: "<<calculateArea()<<endl;    
        cout<<"Volume of a cylinder is: "<<calculateVolume()<<endl;    
    }     
};
int main()
 {  
    cout<<"Polymorphism demo:"<<endl;  
    cylinder c1;
    cylinder c2(13,14,15,16);  
    c1.display();  c2.display();    
    return 0; }