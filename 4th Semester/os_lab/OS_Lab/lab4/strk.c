#include <stdio.h>
#include <time.h>
int main()
{
    time_t T = time(NULL);
    struct tm tm = *localtime(&T);
}