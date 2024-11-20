#include <stdio.h>
#include <unistd.h>
int main()
{
  int x;
  for (int i=0; i<6; i++)
  {
    x = fork();
    if(x>0)
      break;
  }
  printf("This my id %d and this is my parent id %d\n", getpid(), getppid());
}

