#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>

int main()
{
    //on success
    int c = close(STDIN_FILENO);
    perror("Error: ");
    fprintf(stderr, "Error: %s\t, Return value %d\n", strerror(errno), c);

    //on error
    c = close(8);
    perror("Error: ");
    fprintf(stderr, "Error: %s\t, Return value %d\n", strerror(errno), c);
}