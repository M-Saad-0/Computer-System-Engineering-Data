#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int fd1, fd2, rd, wr;
    char buffer[100];
    mode_t fdmode = (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
    if(argc == 1)
    {
        fd1 = STDIN_FILENO;
        fd2 = STDOUT_FILENO;
        rd = read(fd1, buffer, 100);
        wr = write(fd2, buffer, rd); 
    }
    else if(argc == 2)
    {
        fd1 = open(argv[1], O_RDONLY);
        fd2 = STDOUT_FILENO;
        rd = read(fd1, buffer, 100);
        for(;;)
        {
            if (rd==0)
                break;
            wr = write(fd2, buffer, rd); 
            rd = read(fd1, buffer, 100);
        }
    }
    else if(argc == 3)
    {
        fd1 = STDIN_FILENO;
        fd2 = open(argv[2], O_APPEND, fdmode);
        rd = read(fd1, buffer, 100);
        wr = write(fd2, buffer, rd); 
    }
    else if(argc == 4)
    {
        fd1 = open(argv[1], O_RDONLY);
        fd2 = open(argv[3], O_APPEND, fdmode);
        rd = read(fd1, buffer, 100);
        for(;;)
        {
            if (rd==0)
                break;
            wr = write(fd2, buffer, rd); 
            rd = read(fd1, buffer, 100);
        } 
    }
    close(fd1);
    close(fd2);
    return 0;
}
