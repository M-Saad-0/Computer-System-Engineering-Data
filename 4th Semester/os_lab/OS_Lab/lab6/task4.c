#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    printf("Enter Number of childs: \n");
    int pid, N, i = 1;
    scanf("%d", &N);
    
    while(N>=i)
    {   
        pid = fork();
        if(pid > 0) break;
        printf("This is process %d with process ID %d\n", i, getpid());
        i++;
    }
    for (int i=0; i<N; i++) 
        wait(NULL);
}

