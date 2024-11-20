#include <stdio.h>

void st_1()
{
    static int count = 0;   //initialized at compile time (is stored on disk)
    count++;
    if(count==3)
        printf("st_1 Reached");
}

void st_2()
{
    static int count; //initialized at runtime (loads into memory on runtime)
    count=0; //So we can reinitialize the static integer
    count++;
    printf("%d", count);
    if(count==3)
        printf("st_2 Reached");
}

int main()
{
    st_1();
    st_2();
    st_1();
    st_2();
    st_1();
    st_2();
    st_1();
    st_2();
    st_1();
    st_2();
    return 0;
}
