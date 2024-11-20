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
    if (argc == 1)
    {
        fd1 = STDIN_FILENO;
        fd2 = STDOUT_FILENO;
        rd = read(fd1, buffer, 100);
        wr = write(fd2, buffer, rd);
    }
    if (argc == 2)
    {
        fd1 = open(argv[1], O_RDONLY);
        fd2 = STDOUT_FILENO;
        for (;;)
        {
            rd = read(fd1, buffer, 100);
            if (rd == 0)
                break;
            wr = write(fd2, buffer, rd);
        }
    }
    if (argc == 3)
    {
        fd1 = STDIN_FILENO;
        fd2 = open(argv[2], O_APPEND, S_IRWXU);
        rd = read(fd1, buffer, 100);
        wr = write(fd2, buffer, rd);
    }
    if (argc == 4)
    {
        fd1 = open(argv[1], O_RDONLY);
        fd2 = open(argv[2], O_APPEND, S_IRWXU);
        for (;;)
        {
            rd = read(fd1, buffer, 100);
            if (rd == 0)
                break;
            wr = write(fd2, buffer, rd);
        }
    }
    close(fd1);
    close(fd2);
    return 0;
}