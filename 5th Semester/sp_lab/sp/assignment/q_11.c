#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <sys/stat.h>
#define BUFFER_SIZE 4096

void *copy_file(void *arg)
{
    int *fd = (int*)arg;
    char filename[100]; 
    sprintf(filename, "dst_%d.txt", *fd);
    int fd1 = open(filename, O_RDWR | O_CREAT, S_IRWXU);

    char buffer[BUFFER_SIZE];

    while (read(*fd, buffer, BUFFER_SIZE) > 0)
    {
        write(fd1, buffer, BUFFER_SIZE);
    }

    close(fd1);
    close(*fd);
    return NULL;
}

int main()
{
    pthread_t thread1, thread2;
    int fd1 = open("src1.txt", O_RDWR | O_CREAT, S_IRWXU);
    int fd2 = open("src2.txt", O_RDWR | O_CREAT, S_IRWXU);

    pthread_create(&thread1, NULL, copy_file, (void*)(&fd1));
    pthread_create(&thread2, NULL, copy_file, (void*)(&fd2));

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    printf("File copying completed.\n");

    return 0;
}
