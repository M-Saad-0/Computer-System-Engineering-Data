#include <stdio.h>
#include <stdlib.h>

struct queue {
  int data[10];
  int front;
  int rear;
};

struct queue* createQueue() {
  struct queue* queue = (struct queue*)malloc(sizeof(struct queue));
  queue->front = 0;
  queue->rear = -1;
  return queue;
}

void enqueue(struct queue* queue, int element) {
  if (queue->rear == 9) {
    printf("Queue is full\n");
    return;
  }
  queue->rear++;
  queue->data[queue->rear] = element;
}

int dequeue(struct queue* queue) {
  if (queue->front > queue->rear) {
    printf("Queue is empty\n");
    return -1;
  }
  int element = queue->data[queue->front];
  queue->front++;
  return element;
}

int front(struct queue* queue) {
  if (queue->front > queue->rear) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->data[queue->front];
}

int rear(struct queue* queue) {
  if (queue->front > queue->rear) {
    printf("Queue is empty\n");
    return -1;
  }
  return queue->data[queue->rear];
}

int size(struct queue* queue) {
  return queue->rear - queue->front + 1;
}

int isEmpty(struct queue* queue) {
  return queue->front > queue->rear;
}

void printQueue(struct queue* queue) {
  for (int i = queue->front; i <= queue->rear; i++) {
    printf("%d ", queue->data[i]);
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

