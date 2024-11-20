#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <string.h>
#include <unistd.h>

int main()
{
    char buffer[100];
    int fd = open("f6.txt", O_RDONLY);
    for(int i=0; ;i++)
    {
        int rd = read(fd, &buffer[i], 1);
        if(rd == 0)
        {
            printf("The file is ended and the word is not found!!\n");
            break;
        }
        if(buffer[i]=='\n')
        {
            buffer[i] = '\0';
            if(!strcmp(buffer, "Here is a break and"))
            {
                printf("Word found!!\n %s", buffer);
                break;
            }
            else
            {
                // printf("Word not found!");
                i = -1;
            }
        }
    }
}