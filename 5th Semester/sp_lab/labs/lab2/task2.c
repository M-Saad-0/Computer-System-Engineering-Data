#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int pid = fork();
    if(pid==0) {
        printf("This is child.\n");
        int p = wait(NULL);
        if(p==-1) {
            perror("Error");
            printf("Error: %s\n", strerror(errno));
        }
    }
    if(pid>0) {
        int p = wait(NULL);
        perror("Error: ");
        printf("Error: %s\n", strerror(errno));
        
    }

    return 0;
}