#include <stdio.h>
#include <pthread.h>

#define ARRAY_SIZE 10
int arr[ARRAY_SIZE]; 
int sum = 0;
int key = 5; 
int found = 0;

void *sum_thread(void *arg) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        sum += arr[i];
    }
    return NULL;
}

void *search_thread(void *arg) {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (arr[i] == key) {
            found = 1;
            printf("Key found at index %d\n", i);
            break;
        }
    }
    return NULL;
}

int main() {
    pthread_t thread1, thread2;

    for (int i = 0; i < ARRAY_SIZE; i++) {
        arr[i] = i + 1;
    }

    pthread_create(&thread1, NULL, sum_thread, NULL);
    pthread_create(&thread2, NULL, search_thread, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    printf("Sum of array elements: %d\n", sum);
    if (!found) {
        printf("Key not found in the array.\n");
    }

    return 0;
}
