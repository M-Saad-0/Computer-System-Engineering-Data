#include <stdio.h>
#include <stdlib.h>

// A structure to represent a node in a linked list
struct node {
  int data;
  struct node* next;
};

// A structure to represent a stack
struct stack {
  struct node* top;
};

// Function to create a stack
struct stack* createStack() {
  struct stack* stack = (struct stack*)malloc(sizeof(struct stack));
  stack->top = NULL;
  return stack;
}

// Function to push an element into the stack
void push(struct stack* stack, int element) {
  struct node* newNode = (struct node*)malloc(sizeof(struct node));
  newNode->data = element;
  newNode->next = stack->top;
  stack->top = newNode;
}

// Function to pop an element from the stack
int pop(struct stack* stack) {
  if (stack->top == NULL) {
    return -1;
  }
  struct node* topNode = stack->top;
  int element = topNode->data;
  stack->top = topNode->next;
  free(topNode);
  return element;
}

// Function to return the top element of the stack
int top(struct stack* stack) {
  if (stack->top == NULL) {
    return -1;
  }
  return stack->top->data;
}

// Function to check if the stack is empty
int isEmpty(struct stack* stack) {
  return stack->top == NULL;
}

// Function to print the stack
void printStack(struct stack* stack) {
  struct node* currentNode = stack->top;
  while (currentNode != NULL) {
    printf("%d ", currentNode->data);
    currentNode = currentNode->next;
  }
  printf("\n");
}

int main() {
  // Create a stack
  struct stack* stack = createStack();

  // Push some elements into the stack
  push(stack, 1);
  push(stack, 2);
  push(stack, 3);

  // Print the stack
  printStack(stack);

  // Pop an element from the stack
  int element = pop(stack);

  // Print the element that was popped
  printf("Popped element: %d\n", element);

  // Print the stack again
  printStack(stack);

  // Check if the stack is empty
  if (isEmpty(stack)) {
    printf("Stack is empty\n");
  } else {
    printf("Stack is not empty\n");
  }

  return 0;
}

