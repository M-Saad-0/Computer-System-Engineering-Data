#include <stdio.h>
#include <stdlib.h>

// A structure to represent a queue
struct queue {
  int data[10];
  int front;
  int rear;
};

// Function to create a queue
struct queue* createQueue() {
  struct queue* queue = (struct queue*)malloc(sizeof(struct queue));
  queue->front = 0;
  queue->rear = -1;
  return queue;
}

// Function to enqueue an element into the queue
void enqueue(struct queue* queue, int element) {
  if (queue->rear == 9) {
    printf("Queue is full\n");
    return;
  }
  queue->rear++;
  queue->data[queue->rear] = element;
}

// Function to dequeue an element from the queue
int dequeue(struct queue* queue) {
  if (queue->front > queue->rear) {
    printf("Queue is empty\n");
    return -1;
  }
  int element = queue->data[queue->front];
  queue->front++;
  return element;
}

// Function to return the front element of the queue
int front(struct queue* queue) {
  if (queue->front > queue->rear) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->data[queue->front];
}

// Function to return the rear element of the queue
int rear(struct queue* queue) {
  if (queue->front > queue->rear) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->data[queue->rear];
}

// Function to return the size of the queue
int size(struct queue* queue) {
  return queue->rear - queue->front + 1;
}

// Function to check if the queue is empty
int isEmpty(struct queue* queue) {
  return queue->front > queue->rear;
}

// Function to print the queue
void printQueue(struct queue* queue) {
  for (int i = queue->front; i <= queue->rear; i++) {
    printf("%d ", queue->data[i]);
  }
  printf("\n");
}

int main() {
  // Create a queue
  struct queue* queue = createQueue();

  // Enqueue some elements into the queue
  enqueue(queue, 1);
  enqueue(queue, 2);
  enqueue(queue, 3);

  // Print the queue
  printQueue(queue);

  // Dequeue an element from the queue
  int element = dequeue(queue);

  // Print the element that was dequeued
  printf("Dequeued element: %d\n", element);

  // Print the queue again
  printQueue(queue);

  // Check if the queue is empty
  if (isEmpty(queue)) {
    printf("Queue is empty\n");
  } else {
    printf("Queue is not empty\n");
  }

  return 0;
}

