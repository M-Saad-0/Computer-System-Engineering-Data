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

int giveDirList(char *folderName)
{
    printf("I read the fifo\n");
    struct dirent *entry;
    DIR *folder;
    char buffer[1024];
    folder = opendir(folderName);
    int mkff = mkfifo("fifo", S_IRWXU);
    int fifofd = open("fifo", O_WRONLY, S_IRWXU);
    while ((entry = readdir(folder)) != NULL)
    {
        write(fifofd, entry->d_name, strlen(entry->d_name));
    }
    return fifofd;
}

int main(int argc, char *argv[])
{
    int sockfd, fd, portno, clientLen, bnd, lstn, rd, wr;
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

    rd = read(fd, buffer, 1024);
    printf("%s\n", buffer);
    strncpy(buffer, "1.Show home directory\t2.Give Access to terminal\t3.Simply chat\0", sizeof(buffer));
    wr = write(fd, buffer, strlen(buffer));
    memset((void *)&buffer, 0, sizeof(buffer));
    sleep(1);
    rd = read(fd, buffer, 10);
    buffer[rd] = '\0';
    printf("%s<--", buffer);

    if (!strcmp(buffer, "1"))
    {
        write(fd, "Working on \"Show home directory\"", 34);
        int ffd = giveDirList("./");
        memset((void *)&buffer, 0, sizeof(buffer));


        rd = read(ffd, buffer, 1024);
        write(fd, buffer, strlen(buffer));
    }
    if (!strcmp(buffer, "2"))
    {
        write(fd, "Working on \"Give Access to terminal\"", 34);
    }
    if (!strcmp(buffer, "3"))
    {
        write(fd, "Working on \"Simply chat\"", 34);
    }
}