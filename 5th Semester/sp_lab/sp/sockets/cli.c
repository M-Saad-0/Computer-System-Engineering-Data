#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    int sockfd, portno, rd, wr, cn, prog=0;
    struct sockaddr_in serverAddress;
    // struct hostent *server;
    char buffer[1024], bigBuff[624288];
    portno = atoi(argv[2]);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    // server = gethostbyname(argv[1]);
    memset((void *)&serverAddress, 0, sizeof(serverAddress));
    //memset((void *)&serverAddress, 0, sizeof(serverAddress));
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(portno);
    serverAddress.sin_addr.s_addr = inet_addr(argv[1]);

    // memcpy((void *)server->h_addr, (void *)&serverAddress.sin_addr.s_addr, server->h_length);
    cn = connect(sockfd, (struct sockaddr *)&serverAddress, sizeof(serverAddress));
    if (cn >= 0)
        printf("Connected!!\n");
    write(sockfd, "connected", 10);
    while (1)
    {
        scanf("%s", buffer);
        wr = write(sockfd, buffer, 1024);
        rd = read(sockfd, buffer, 1024);
        buffer[rd] = '\0';
        if (buffer[0] == '>')
        {
            memset((void *)buffer, 0, sizeof(buffer));
            write(1, "\nWhat file do you what to send?\t", 32);
            scanf("%s", buffer);
            write(sockfd, buffer, sizeof(buffer));
            int fdc = open(buffer, O_WRONLY | O_CREAT, 0777);

            if (fdc < 0)
                exit(-1);
            while (1)
            {

                printf("%dkb done\n", prog);
                rd = read(sockfd, bigBuff, 624288);
                prog+=(rd/1024);
                if (rd == 0)
                    break;
                write(fdc, bigBuff, rd);
            }
        }
        else
            write(1, buffer, rd);
    }
}
