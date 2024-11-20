#include <iostream>
using namespace std;

struct node {
    int data;
    struct node* next;
};

class queue {
    struct node* rear;
    struct node* front;

public:
    queue() : rear(nullptr), front(nullptr) {}

    void enqueue(int da) {
        struct node* newNode = (struct node*)malloc(sizeof(struct node));
        newNode->data = da;
        newNode->next = nullptr;
        if (front == nullptr) {
            rear = newNode;
            front = newNode;
        } else {
            newNode->next = rear;
            rear = newNode;
        }
    }

    int dequeue() {
        int data;
        struct node* tmp = front;
        data = front->data;
        front = front->next;
        delete tmp;
        return data;
    }

    void printQueue() {
        struct node* t = front;
        while (t != nullptr) {
            cout << t->data << " ";
            t = t->next;
        }
    }
};

int main() {
    queue q1;
    q1.enqueue(12345);
    q1.enqueue(5432);
    q1.enqueue(234);
    q1.enqueue(324);
    q1.printQueue();
    cout << endl;
    int data = q1.dequeue();
    cout << "Dequeued data: " << data << endl;
    q1.printQueue();
    data = q1.dequeue();
    cout << "Dequeued data: " << data << endl;
    q1.printQueue();
    data = q1.dequeue();
    cout << "Dequeued data: " << data << endl;
    q1.printQueue();
    return 0;
}

