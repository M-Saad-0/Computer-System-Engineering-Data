#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <sys/wait.h>

int main()
{
    int fd[2];
    int r = pipe(fd);
    char buff[100];
    int x = fork();
    if(x==0)
    {
        int r = read(fd[0], buff, 100);
        write(STDOUT_FILENO, buff, r);
        r = read(STDIN_FILENO, buff, r);
        write(fd[1], buff, r);
    }
    if(x>0)
    {
        int r = read(STDIN_FILENO, buff, 100);
        write(fd[1], buff, r);
        wait(NULL);   
        r = read(fd[0], buff, 100);
        write(STDOUT_FILENO, buff, r);
    }
}
