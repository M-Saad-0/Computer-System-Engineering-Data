#include <stdio.h>
#include <stdlib.h>

struct node{
    int data; 
    struct node* next;
};

struct stack{
    struct node* top;
};

struct stack* createStack() {
  struct stack* stack = (struct stack*)malloc(sizeof(struct stack));
  stack->top = NULL;
  return stack;
}

void push(struct stack* stack, int element)
{
    struct node* newNode = (struct node*)malloc(sizeof(struct node));
    newNode->data = element;
    newNode->next = stack->top;
    stack->top = newNode; 
}

int pop(struct stack* stack)
{
    if (stack->top==NULL)
        return -1;
    struct node* topNode = stack->top;
    int element = topNode->data;
    stack->top = topNode->next;
    free(topNode);
    return element;
}

int top(struct stack* stack) {
  if (stack->top == NULL) {
    return -1;
  }
  return stack->top->data;
}

int isEmpty(struct stack* stack) {
  return stack->top == NULL;
}

void printStack(struct stack* stack) {
  struct node* currentNode = stack->top;
  while (currentNode != NULL) {
    printf("%d ", currentNode->data);
    currentNode = currentNode->next;
  }
  printf("\n");
}

int main() {
  struct stack* stack = createStack();

  push(stack, 1);
  push(stack, 2);
  push(stack, 3);

  printStack(stack);

  int element = pop(stack);

  printf("Popped element: %d\n", element);

  printStack(stack);

  if (isEmpty(stack)) {
    printf("Stack is empty\n");
  } else {
    printf("Stack is not empty\n");
  }

  return 0;
}