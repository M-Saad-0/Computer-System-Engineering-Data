#include <stdio.h>
int main()
{
    int x;
    scanf("%d",&x);
    int p1=0;
    int x2=1;
    while(p1!=2)
    {
        p1++;
        x2=x2*x;
    }
    x2=x2/4;
    int p2=0;
    int x3=1;
    while(p2!=4)
    {
        p2++;
        x3=x3*x;
    }
    x3=x3/4;
    int p3=0;
    int x4=1;
    while(p3!=6)
    {
        p3++;
        x4=x4*x;
    }
    x4=x4/4;
    int p4=0;
    int x5=1;
    while(p4!=8)
{
        p4++;
        x5=x5*x;
        
    }
    x5=x5/4;
    int sum=x+x2+x3+x4+x5;
    printf("%d", sum);
}
