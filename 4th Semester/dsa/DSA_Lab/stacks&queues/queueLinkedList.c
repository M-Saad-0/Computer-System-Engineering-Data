#include <stdio.h>
#include <stdlib.h>

struct node {
  int data;
  struct node* next;
};

struct queue {
  struct node* front;
  struct node* rear;
};

struct queue* createQueue() {
  struct queue* queue = (struct queue*)malloc(sizeof(struct queue));
  queue->front = NULL;
  queue->rear = NULL;
  return queue;
}

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

int front(struct queue* queue) {
  if (queue->front == NULL) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->front->data;
}

int rear(struct queue* queue) {
  if (queue->rear == NULL) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->rear->data;
}

int size(struct queue* queue) {
  int size = 0;
  struct node* currentNode = queue->front;
  while (currentNode != NULL) {
    size++;
    currentNode = currentNode->next;
  }
  return size;
}

int isEmpty(struct queue* queue) {
  return queue->front == NULL;
}

void printQueue(struct queue* queue) {
  struct node* currentNode = queue->front;
  while (currentNode != NULL) {
    printf("%d ", currentNode->data);
    currentNode = currentNode->next;
  }
  printf("\n");
}

int main() {
  struct queue* queue = createQueue();

  enqueue(queue, 1);
  enqueue(queue, 2);
  enqueue(queue, 3);

  printQueue(queue);

  int element = dequeue(queue);

  printf("Dequeued element: %d\n", element);

  printQueue(queue);

  if (isEmpty(queue)) {
    printf("Queue is empty\n");
  } else {
    printf("Queue is not empty\n");
  }

  return 0;
}

