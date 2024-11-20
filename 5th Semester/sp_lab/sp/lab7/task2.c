#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/select.h>

int main()
{
    int fd1 = open("f1.txt", O_RDONLY);
    int fd2 = open("f2.txt", O_RDONLY);
    char buffer[100];

    fd_set readset;
    FD_ZERO(&readset);
    FD_SET(fd1, &readset);
    FD_SET(fd2, &readset);
    int maxfd = fd1 > fd2 ? fd1 : fd2;
    int nrfds = select(maxfd + 1, &readset, NULL, NULL, NULL);
    if (FD_ISSET(fd1, &readset))
    {
        printf("f1.txt is ready!!\n");
    }
    if (FD_ISSET(fd2, &readset))
    {
        printf("f2.txt is ready!!\n");
    }
    return 0;
}