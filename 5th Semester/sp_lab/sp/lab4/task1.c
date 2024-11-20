#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int childs = argc - 1;
    pid_t pid[childs], status[childs];
    for (int i = 1; i <= childs; i++)
    {
        pid[i - 1] = fork();
        if (pid[i - 1] == 0)
        {
            execlp(argv[i], argv[i], NULL);
        }
        else
            wait(&status[i - 1]);
    }
    for (int i = 0; i < childs; i++)
    {
        if (WIFEXITED(status[i]) && !WEXITSTATUS(status[i]))
            printf("Child %ld terminated normally\n", (long)pid[i]);
        else if (WIFEXITED(status[i]))
            printf("Child %ld terminated with return status %d\n",
                   (long)pid[i], WEXITSTATUS(status[i]));
        else if (WIFSIGNALED(status[i]))
            printf("Child %ld terminated due to uncaught signal %d\n",
                   (long)pid[i], WTERMSIG(status[i]));
        else if (WIFSTOPPED(status[i]))
            printf("Child %ld stopped due to signal %d\n",
                   (long)pid[i], WSTOPSIG(status[i]));
    }
}