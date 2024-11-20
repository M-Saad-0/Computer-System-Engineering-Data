#include <iostream>
#include <pthread.h>

using namespace std;

void *thread_function(void *arg) {
  int thread_number = *((int *)arg);
  cout << "My name is Bard, my registration number is 22001999, and I am thread number " << thread_number << endl;
  pthread_exit(NULL);
}

int main() {
  int num_threads = 5;
  pthread_t threads[num_threads];

  for (int i = 0; i < num_threads; i++) {
    int *thread_number = new int(i);
    pthread_create(&threads[i], NULL, thread_function, thread_number);
  }

  for (int i = 0; i < num_threads; i++) {
    pthread_join(threads[i], NULL);
  }

  return 0;
}

