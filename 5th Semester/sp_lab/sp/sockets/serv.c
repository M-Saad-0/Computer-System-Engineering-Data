#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <dirent.h>
#include <fcntl.h>
#include <sys/stat.h>
static char buff[1024];

int giveDirList(char *folderName)
{
    struct dirent *entry;
    DIR *folder;
    struct stat Stat;
    strcat(buff, folderName);
    strcat(buff, "/");
    folder = opendir(buff);
    int mkff = mkfifo("fifo", S_IRWXU);
    int fifofd = open("fifo", O_RDWR, S_IRWXU);
    while ((entry = readdir(folder)) != NULL)
    {
        if (strcmp(entry->d_name, ".") != 0 && strcmp(entry->d_name, "..") != 0)
        {
            stat(entry->d_name, &Stat);
            if (S_ISDIR(Stat.st_mode))
                write(fifofd, "D\t", 2);
            else
                write(fifofd, "F\t", 2);
        }
        else
            write(fifofd, "\t", 1);

        write(fifofd, entry->d_name, strlen(entry->d_name));
        write(fifofd, "\n", 1);
    }
    return fifofd;
}

int main(int argc, char *argv[])
{
    int sockfd, fd, portno, clientLen, bnd, lstn, rd, wr;
    char bigBuff[624288];
    char buffer[1024];
    struct sockaddr_in server, client;
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0)
    {
        perror("Error opening socket");
        exit(EXIT_FAILURE);
    }
    memset((void *)&server, 0, sizeof(server));
    portno = atoi(argv[1]);
    server.sin_port = htons(portno);
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    bnd = bind(sockfd, (struct sockaddr *)&server, sizeof(server));
    lstn = listen(sockfd, 5);
    clientLen = sizeof(client);
    fd = accept(sockfd, (struct sockaddr *)&client, &clientLen);

    rd = read(fd, buffer, 10);
    printf("%s\n", buffer);
    while (1)
    {
        char copy[1024];
        int fd1;
        memset((void *)buffer, 0, sizeof(buffer));
        rd = read(fd, buffer, 1024);
        buffer[rd] = '\0';
        printf("%s\n", buffer);
        if (strcmp("send", buffer) == 0)
        {
            strcpy(copy, buff);
            write(fd, ">\t", 2);
            rd = read(fd, buffer, 1024);
            strcat(copy, buffer);
            int fdc = open(copy, O_RDWR, S_IRWXU);
            if (fdc < 0)
            {
                printf("%s", buffer);
                exit(-1);
            }
            while (1)
            {
                rd = read(fdc, bigBuff, 624288);
                if (rd == 0)
                    break;
                write(fd, bigBuff, rd);
                // printf("%s\t", buffer);
            }
        }
        else
        {
            fd1 = giveDirList(buffer);
            rd = read(fd1, buffer, 1024);
            write(fd, buffer, rd);
        }
    }
}