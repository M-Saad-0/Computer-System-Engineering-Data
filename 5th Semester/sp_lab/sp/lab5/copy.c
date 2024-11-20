#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

int main(int argc, char* argv[])
{
    int fd1 = open(argv[1], O_RDONLY);
    char *buffer[10];
    if(fd1==-1)
    {
        perror("Error: ");
    }
    int fd2 = open(argv[2], O_WRONLY | O_CREAT, 777);
    if(fd2==-1)
    {
        perror("Error: ");
    }
    int br = read(fd1, buffer, 10);
    for(;;)
    {
        if(br==0)
            break;
        int bw = write(fd2, buffer, br);
        
        br = read(fd1, buffer, 10);
    }
    close(fd1);
    close(fd2);    
    }