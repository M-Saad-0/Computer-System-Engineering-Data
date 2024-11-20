
#include<unistd.h>
#include<fcntl.h>
#include<stdio.h>
#include<stdlib.h>
#include<errno.h>
#include <sys/types.h>
#include <sys/select.h>

int main()
{
    int r = mkfifo("fifo", 0777);
    int fd = open("fifo", O_RDWR);
    fd_set readset;
    char buff[255];
    while(1)
    {
        sleep(1);
        FD_ZERO(&readset);
        FD_SET(STDERR_FILENO, &readset);
        FD_SET(fd, &readset);
        int maxFd = (fd>STDIN_FILENO)? fd:STDIN_FILENO;
        int nrf = select(maxFd+1,&readset, NULL, NULL, NULL);
        if(FD_ISSET(STDERR_FILENO, &readset))
        {
            int rd = read(STDIN_FILENO, buff, 255);
            int wr = write(fd, buff, rd);
        
        }
        else if(FD_ISSET(fd, &readset))
        {
            int rd = read(fd, buff, 255);
            write(STDOUT_FILENO, "Other: ", 8);
            int wr = write(STDOUT_FILENO, buff, rd);
        }

    }
    unlink("fifo");
    return 0;
}