#include <stdio.h>

// A structure to represent a stack
struct stack {
  int data[10];
  int top;
};

// Function to create a stack
struct stack* createStack() {
  struct stack* stack = (struct stack*)malloc(sizeof(struct stack));
  stack->top = -1;
  return stack;
}

// Function to push an element into the stack
void push(struct stack* stack, int element) {
  stack->top++;
  stack->data[stack->top] = element;
}

// Function to pop an element from the stack
int pop(struct stack* stack) {
  int element = stack->data[stack->top];
  stack->top--;
  return element;
}

// Function to return the top element of the stack
int top(struct stack* stack) {
  return stack->data[stack->top];
}

// Function to check if the stack is empty
int isEmpty(struct stack* stack) {
  return stack->top == -1;
}

// Function to print the stack
void printStack(struct stack* stack) {
  for (int i = stack->top; i >= 0; i--) {
    printf("%d ", stack->data[i]);
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

