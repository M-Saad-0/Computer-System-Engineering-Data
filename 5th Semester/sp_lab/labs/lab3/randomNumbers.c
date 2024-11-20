#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  // Seed the random number generator
  srand(time(NULL));

  // Create an array of 100 integers
  int numbers[100];

  // Generate 100 random numbers and store them in the array
  for (int i = 0; i < 100; i++) {
    numbers[i] = rand();
  }

  // Print the array of random numbers
  for (int i = 0; i < 100; i++) {
    printf("%d, ", numbers[i]);
  }

  return 0;
}
