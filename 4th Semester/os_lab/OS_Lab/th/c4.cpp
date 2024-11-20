#include <iostream>
#include <cstdlib>
#include <pthread.h>
#include <unistd.h>
using namespace std;

#define NUM_THREADS 5

void *wait(void *t) {
  int i;
  long tid;
  tid = (long)t;
  sleep(1);
  cout << "Sleeping in thread " << tid << endl;
  cout << "Thread with id : " << tid << " ...exiting " << endl;
  pthread_exit(NULL);
}

int main () {
  int rc;
  int i;
  pthread_t threads[NUM_THREADS];

  for( i = 0; i < NUM_THREADS; i++ ) {
    cout << "main() : creating thread, " << i << endl;
    rc = pthread_create(&threads[i], NULL, wait, (void *)i );
    if (rc) {
      cout << "Error:unable to create thread," << rc << endl;
      exit(-1);
    }
  }

  for( i = 0; i < NUM_THREADS; i++ ) {
    rc = pthread_join(threads[i], NULL);
    if (rc) {
      cout << "Error:unable to join," << rc << endl;
      exit(-1);
    }
    cout << "Main: completed thread id :" << i ;
    cout << " exiting with status :" << endl;
  }

  cout << "Main: program exiting." << endl;
  pthread_exit(NULL);
}

