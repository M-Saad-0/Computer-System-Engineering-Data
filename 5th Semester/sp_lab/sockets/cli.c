#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    int sockfd, portno, rd, wr, cn;
    struct sockaddr_in serverAddress;
    struct hostent *server;
    char buffer[1024];
    portno = atoi(argv[1]);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    server = gethostbyname(argv[2]);
    memset((void *)&serverAddress, 0, sizeof(serverAddress));
    memset((void *)&serverAddress, 0, sizeof(serverAddress));
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(portno);
    memcpy((void *)server->h_addr, (void *)&serverAddress.sin_addr.s_addr, server->h_length);
    cn = connect(sockfd, (struct sockaddr *)&serverAddress, sizeof(serverAddress));
    if (cn >= 0)
        printf("Connected!!\n");
    write(sockfd, "Connected\0", 10);
    rd = read(sockfd, buffer, 1024);
    printf("%s\n", buffer);
    scanf("%s", buffer);
    write(sockfd, buffer, strlen(buffer));
    sleep(2);
    read(sockfd, buffer, 100);
    printf("%s\n", buffer);
    rd = read(sockfd, buffer, 1024);
    printf("%s\n", buffer);
}
