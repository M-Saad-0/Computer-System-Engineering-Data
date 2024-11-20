#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <string.h>

int main()
{
    int arr[1000], pid[3], gsum = 0;
    for (int i = 0; i < 1000; i++)
        arr[i] = i;

    int mk = mkfifo("fifo", S_IRWXU);
    int fd = open("fifo", O_RDWR, S_IRWXU);
    for (int i = 0; i < 3; i++)
    {
        pid[i] = fork();
        int lsum = 0;
        if (pid[i] == 0)
        {
            for (int j = 0; j < 999 / 3; j += 1)
            {
                lsum = lsum + arr[i * (999 / 3) + j];
            }
            char ls[16];
            sprintf(ls, "%d", lsum);
            write(fd, ls, 16); // Writing to fifo
            return 0;
        }
        else if (pid[i] > 0)
        {
            char buff[16];
            read(fd, buff, 16); // Reading from fifo
            printf("Child #%d: %d\n", i, atoi(buff));
            gsum = gsum + atoi(buff);
            wait(NULL);
        }
    }
    printf("Global Sum-->%d\t\n", gsum);
}