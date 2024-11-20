#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#define MAX_PASSWORD_LENGTH 50

bool is_browser_process(const char *process_name)
{
    const char *browsers[] = {"chrome", "firefox", "opera", "safari"};
    int num_browsers = sizeof(browsers) / sizeof(browsers[0]);

    for (int i = 0; i < num_browsers; ++i)
    {
        if (strstr(process_name, browsers[i]) != NULL)
        {
            return true;
        }
    }

    return false;
}

bool check_password(const char *password)
{
    const char *correct_password = "mypassword"; // Replace with your desired password

    return strcmp(password, correct_password) == 0;
}

void block_browsers()
{
    while (true)
    {
        char password[MAX_PASSWORD_LENGTH];
        printf("Enter the password to unblock browsers: ");
        scanf("%s", password);

        if (check_password(password))
        {
            printf("Password correct. Unblocking browsers...\n");
            break;
        }
        else
        {
            printf("Incorrect password. Please try again.\n");
        }
    }

    // Infinite loop to block browser processes
    while (true)
    {
        FILE *top_output = popen("top -b -n 1", "r");
        if (top_output == NULL)
        {
            printf("Failed to execute the top command.\n");
            return;
        }

        char buffer[512];
        while (fgets(buffer, sizeof(buffer), top_output) != NULL)
        {
            char process_name[256];
            sscanf(buffer, "%*d %s", process_name);

            if (is_browser_process(process_name))
            {
                printf("Blocking browser process: %s\n", process_name);
                system("killall -9 -q firefox"); // Replace 'browser' with the actual browser process name
            }
        }

        pclose(top_output);

        // Delay for 1 second before checking again
        sleep(1);
    }
}

int main()
{
    block_browsers();
    return 0;
}
