#include <stdio.h>
#include <sys/select.h>
#include <sys/time.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

void delay_using_select(int seconds)
{
    struct timeval timeout;
    timeout.tv_sec = seconds;
    timeout.tv_usec = 0;

    fd_set empty_set;
    FD_ZERO(&empty_set);

    select(0, &empty_set, NULL, NULL, &timeout);
}

int main(int argc, char *argv[])
{
    int x = alarm(100);

    delay_using_select(atoi(argv[1]));
    printf("Delayed For %d seconds\n", atoi(argv[1]));
    int y = alarm(2);   
    printf("%d", 100 - y);
}
