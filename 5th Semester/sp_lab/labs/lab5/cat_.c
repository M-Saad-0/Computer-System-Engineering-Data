#include <stdio.h>
#include <unistd.h>
#include <error.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    int src,dst;
    char *buffer[100];
    if (argc==1)
    {
        src = STDIN_FILENO;
        dst = STDOUT_FILENO;

    }

else if (argc == 2)
{
    src = open(argv[1],O_RDONLY);
    dup2 (src , STDIN_FILENO);
    close(src);
}

else if (argc == 3)
{
    dst = open(argv[2], O_WRONLY);
    dup2 ( dst , STDOUT_FILENO);
    close(dst);
}

else 
{
    src = open(argv[1], O_RDONLY);
    dst = open (argv[3],O_WRONLY);
    dup2(src,STDIN_FILENO);
    dup2(dst,STDOUT_FILENO);
}

    int rd = read(STDIN_FILENO, buffer, 100);
    int wr = write(STDOUT_FILENO, buffer, rd);
}

