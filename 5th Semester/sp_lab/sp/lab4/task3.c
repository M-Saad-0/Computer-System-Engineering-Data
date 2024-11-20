#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>
int main(int argc, char *argv[])
{
    int min = fork(), max = 0, statusMin, statusMax;
    if (min > 0)
        max = fork();
    if (min == 0)
        execvp("./min", &argv[1]);
    if (max == 0)
        execvp("./max", &argv[1]);

    waitpid(min, &statusMin, 0);
    waitpid(max, &statusMax, 0);
    if (WIFEXITED(statusMin))
        printf("Min %d\n", WEXITSTATUS(statusMin));
    if (WIFEXITED(statusMax))
        printf("Max %d\n", WEXITSTATUS(statusMax));
    return 0;
}