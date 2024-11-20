#include <iostream>
using namespace std;
int sum(int);
int main()
{
   int num;
   cin>>num, odd_sum;
   if(num%2==1)
   {
        odd_sum=sum(num);
   }
   else if(num%2==0)
   {
       num--;
       odd_sum=sum(num);
   }
   cout<<odd_sum;
}
int sum(int ok)
{
    if(ok!=0)
    {
    return ok + sum(ok-2);
    }
}