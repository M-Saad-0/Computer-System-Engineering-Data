#include <stdio.h>
#include <stdlib.h>
struct stack{
    int data[10];
    int top;
};

struct stack* create()
{
    struct stack* stack = (struct stack*)malloc(sizeof(struct stack));
    stack->top = -1;
    return stack;
}

void push(struct stack* stack, int element)
{
    stack->top++;
    stack->data[stack->top] = element;
}

int pop(struct stack* stack)
{
    int element = stack->data[stack->top];
    stack->top--;
    return element;
}

int Top(struct stack* stack)
{
    return stack->data[stack->top];
}

int size(struct stack* stack)
{
    return stack->top+1;
}

int isEmpty(struct stack* stack)
{
    return stack->top==-1;
}

void printStack(struct stack* stack)
{
    for(int i=0; i<=stack->top; i++)
    {
        printf(" %d", stack->data[i]);
    }
}
int main()
{
    struct stack* stack = create();
    printf("%d", isEmpty(stack));
    push(stack, 1);
    push(stack, 2);
    push(stack, 3);

    printStack(stack);

    int element = pop(stack);

    printStack(stack);
}