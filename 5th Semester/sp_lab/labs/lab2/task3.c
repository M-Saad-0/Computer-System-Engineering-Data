#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int x = close(0);
    if(x==0) {
        perror("Closing keyboard");
        printf("Closing keyboard: %s\n", strerror(errno));

    }
    if (close(7) == -1){
        perror("Closing file 7 ");
        printf("Closing file 7: %s\n", strerror(errno));
        
    }

    return 0;
}