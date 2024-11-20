#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>

void copyFiles(const char *source, const char *destination) {
    int sourceFile, destinationFile;
    char buffer[1024];
    int bytesRead;

    sourceFile = open(source, O_RDONLY);
    if (sourceFile == -1) {
        perror("Error opening source file");
        exit(EXIT_FAILURE);
    }

    destinationFile = open(destination, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
    if (destinationFile == -1) {
        perror("Error opening destination file");
        close(sourceFile);
        exit(EXIT_FAILURE);
    }

    while ((bytesRead = read(sourceFile, buffer, sizeof(buffer))) > 0) {
        if (write(destinationFile, buffer, bytesRead) != bytesRead) {
            perror("Error writing to destination file");
            close(sourceFile);
            close(destinationFile);
            exit(EXIT_FAILURE);
        }
    }

    close(sourceFile);
    close(destinationFile);
}

int main(int argc, char *argv[]) {
    if (argc % 2 != 1) {
        fprintf(stderr, "Usage: %s source1 dest1 source2 dest2 ...", argv[0]);
        exit(EXIT_FAILURE);
    }

    int numPairs = (argc - 1) / 2;

    for (int i = 0; i < numPairs; i++) {
        pid_t pid = fork();

        if (pid == -1) {
            perror("Error forking process");
            exit(EXIT_FAILURE);
        } else if (pid == 0) {
            copyFiles(argv[i * 2 + 1], argv[i * 2 + 2]);
            exit(EXIT_SUCCESS);
        }
    }

    for (int i = 0; i < numPairs; i++) {
        wait(NULL);
    }

    printf("Parallel file copying completed!\n");

    return 0;
}

