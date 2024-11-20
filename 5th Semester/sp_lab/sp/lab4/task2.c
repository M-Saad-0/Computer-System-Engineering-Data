#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    int pid[2];

    pid[0] = fork();
    if(pid[0] == 0)
    {
        execl("./add", "./add", argv[1], argv[2], NULL);
    }
    pid[1] = fork();
    if(pid[1]==0)
    {
        execl("./multiply", "./multiply", argv[3], argv[4], NULL);
    }
}