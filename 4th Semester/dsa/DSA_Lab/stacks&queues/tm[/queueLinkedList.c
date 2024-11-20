#include <stdio.h>
#include <stdlib.h>

// A structure to represent a node in a linked list
struct node {
  int data;
  struct node* next;
};

// A structure to represent a queue
struct queue {
  struct node* front;
  struct node* rear;
};

// Function to create a queue
struct queue* createQueue() {
  struct queue* queue = (struct queue*)malloc(sizeof(struct queue));
  queue->front = NULL;
  queue->rear = NULL;
  return queue;
}

// Function to enqueue an element into the queue
void enqueue(struct queue* queue, int element) {
  struct node* newNode = (struct node*)malloc(sizeof(struct node));
  newNode->data = element;
  newNode->next = NULL;
  if (queue->rear == NULL) {
    queue->front = newNode;
  } else {
    queue->rear->next = newNode;
  }
  queue->rear = newNode;
}

// Function to dequeue an element from the queue
int dequeue(struct queue* queue) {
  if (queue->front == NULL) {
    printf("Queue is empty\n");
    return -1;
  }
  struct node* frontNode = queue->front;
  int element = frontNode->data;
  queue->front = frontNode->next;
  free(frontNode);
  return element;
}

// Function to return the front element of the queue
int front(struct queue* queue) {
  if (queue->front == NULL) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->front->data;
}

// Function to return the rear element of the queue
int rear(struct queue* queue) {
  if (queue->rear == NULL) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->rear->data;
}

// Function to return the size of the queue
int size(struct queue* queue) {
  int size = 0;
  struct node* currentNode = queue->front;
  while (currentNode != NULL) {
    size++;
    currentNode = currentNode->next;
  }
  return size;
}

// Function to check if the queue is empty
int isEmpty(struct queue* queue) {
  return queue->front == NULL;
}

// Function to print the queue
void printQueue(struct queue* queue) {
  struct node* currentNode = queue->front;
  while (currentNode != NULL) {
    printf("%d ", currentNode->data);
    currentNode = currentNode->next;
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

