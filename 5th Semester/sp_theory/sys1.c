#include <stdio.h>
#include <errno.h>
int main()
{
	pclose(stdout);
	perror("Today it is very hot.");
}
