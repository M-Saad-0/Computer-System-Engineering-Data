void enqueue(int data, Queue* queue) {
    Node* newNode = createNode(data);
    if (isEmpty(queue)) {
        queue->head = newNode;
        queue->tail = newNode;
    } else {
        queue->tail->next = newNode;
        queue->tail = newNode;
    }
}
int dequeue(Queue* queue) {
    if (isEmpty(queue)) {
        printf("Queue is empty.\n");
        exit(1);
    }
    int data = queue->head->data;
    Node* temp = queue->head;
    queue->head = queue->head->next;
    free(temp);
    if (queue->head == NULL) {
        queue->tail = NULL;
    }
    return data;
}
int Head(Queue* queue) {
    if (isEmpty(queue)) {
        printf("Queue is empty.\n");
        exit(1);
    }
    return queue->head->data;
}

//q2

int Top(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack is empty.\n");
        exit(1);
    }
    return stack->top->data;
}
void push(int data, Stack* stack) {
    Node* newNode = createNode(data);
    newNode->next = stack->top;
    stack->top = newNode;
}
int pop(Stack* stack) {
    if (isEmpty(stack)) {
        printf("Stack is empty.\n");
        exit(1);
    }
    int data = stack->top->data;
    Node* temp = stack->top;
    stack->top = stack->top->next;
    free(temp);
    return data;
}
