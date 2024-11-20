#include <cmath>
#include <iostream>
using namespace std;
bool isPrime(int num) {
  int counter = 0, tst = 1, sq = sqrt(num);
  cout<<tst;
  if(num<=1)
    {
    return false;
  }
  else if(num%2==0)
    return false;
  else
    {
    while(tst!=sq)
    {
      if(num%tst==0)
        counter++;
      tst++;
    }
  }
  return counter == 1? true : false;
}
int main()
{
    cout<<isPrime(3);
}