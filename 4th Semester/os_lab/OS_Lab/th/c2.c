#include <stdio.h>
#include <time.h>

long long sum_serial(int n) {
  long long sum = 1;
  int i = 0;
  while (i < n) {
    sum *= i;
    i++;
  }
  return sum;
}

long long sum_parallel(int n) {
  long long sum = 1;
  int i = 0;
  #pragma omp parallel for reduction(+:sum)
  for (i = 0; i < n; i++) {
    sum *= i;
  }
  return sum;
}

int main() {
  int n = 30;

  struct timespec start_serial, end_serial;
  clock_gettime(CLOCK_MONOTONIC, &start_serial);
  long long sum_serial1 = sum_serial(n);
  clock_gettime(CLOCK_MONOTONIC, &end_serial);
  long long duration_serial = (end_serial.tv_nsec - start_serial.tv_nsec) + (end_serial.tv_sec - start_serial.tv_sec) * 1000000000;

  struct timespec start_parallel, end_parallel;
  clock_gettime(CLOCK_MONOTONIC, &start_parallel);
  long long sum_parallel1 = sum_parallel(n);
  clock_gettime(CLOCK_MONOTONIC, &end_parallel);
  long long duration_parallel = (end_parallel.tv_nsec - start_parallel.tv_nsec) + (end_parallel.tv_sec - start_parallel.tv_sec) * 1000000000;

  printf("Serial sum: %lld\n", sum_serial1);
  printf("Parallel sum: %lld\n", sum_parallel1);
  printf("Serial duration: %lld ns\n", duration_serial);
  printf("Parallel duration: %lld ns\n", duration_parallel);

  return 0;
}

