#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <unistd.h>
#include <time.h>

void getProcessName(int pid)
{
    char pidStr[16];
    snprintf(pidStr, sizeof(pidStr), "%d", pid);

    FILE* procFile = fopen("/proc/stat", "r");
    if (procFile == NULL)
    {
        perror("Failed to open /proc/stat");
        return;
    }

    char comm[256];
    if (fscanf(procFile, "%*s %s", comm) != 1)
    {
        perror("Failed to read process name");
        fclose(procFile);
        return;
    }

    fclose(procFile);

    printf("Process name for PID %d: %s\n", pid, comm);
}


int getProcess(int durationSeconds)
{
    const int MAX_BUFFER_SIZE = 256;
    const int MAX_NAME_SIZE = 256;

    char command[MAX_BUFFER_SIZE];
    char buffer[MAX_BUFFER_SIZE];

    int maxCpuUsage = 0;
    int maxRamUsage = 0;
    int intensiveProcess = 0;

    time_t startTime = time(NULL);
    time_t endTime = startTime + durationSeconds;

    while (time(NULL) <= endTime)
    {
    FILE *topOutput = popen("timeout 1 htop", "r");
        if (topOutput == NULL)
        {
            printf("Failed to execute the top command.\n");
            return 0;
        }

        // Skip the first few lines of top command output
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);
        fgets(buffer, sizeof(buffer), topOutput);

        // Parse each line to find the process with the highest CPU usage
        while (fgets(buffer, sizeof(buffer), topOutput) != NULL)
        {
            int pid;
            int cpuUsage;
            int ramUsage;

            if (sscanf(buffer, "%d", &pid) == 1)
            {
                fgets(buffer, sizeof(buffer), topOutput); // Read the next line

                sscanf(buffer, "%d", &cpuUsage);
                strtok(buffer, " ");                   // Skip the second column
                strtok(NULL, " ");                      // Skip the third column

                if (sscanf(strtok(NULL, " "), "%u", &ramUsage) == 1)
                {
                    if (cpuUsage > maxCpuUsage)
                    {
                        maxCpuUsage = cpuUsage;
                        maxRamUsage = ramUsage;
                        intensiveProcess = pid;
                    }
                }
            }
        }

        pclose(topOutput);
        sleep(1); // Wait for 1 second before analyzing again
    }

    printf("Most CPU-intensive process: PID %d\n", intensiveProcess);
    printf("CPU Usage: %d%%\n", maxCpuUsage);
    printf("RAM Usage: %d MB\n", maxRamUsage);
    getProcessName(intensiveProcess);
    return intensiveProcess;
}

int main()
{
    int duration = 60y; // Duration in seconds
    int intensiveProcess = getProcess(duration);
    return 0;
}
