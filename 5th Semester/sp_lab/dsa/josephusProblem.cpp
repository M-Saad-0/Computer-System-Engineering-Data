#include <iostream>
#include <stdlib.h>
using namespace std;
int winner(int n, int k)
{
    if(n==1)
    {
        return 0;
    }
    return (winner(n-1, k)+k)%n;
}
int main(int argc, char *argv[])
{
    cout<<"Winner: "<<winner(atoi(argv[1]), atoi(argv[2]))<<endl;
    return 0;
}