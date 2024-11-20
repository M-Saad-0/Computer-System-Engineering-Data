#include <iostream>

using namespace std;

class CircularQueue {
private:
  int *data;
  int front;
  int rear;
  int capacity;

public:
  CircularQueue(int size) {
    front = rear = 0;
    capacity = size;
    data = new int[size];
  }

  ~CircularQueue() {
    delete[] data;
  }

  bool isEmpty() {
    return front == rear;
  }

  bool isFull() {
    return (rear + 1) % capacity == front;
  }

  void enqueue(int x) {
    if (isFull()) {
      return;
    }

    rear = (rear + 1) % capacity;
    data[rear] = x;
  }

  int dequeue() {
    if (isEmpty()) {
      return -1;
    }

    front = (front + 1) % capacity;
    return data[front];
  }

  int frontElement() {
    if (isEmpty()) {
      return -1;
    }

    return data[front];
  }

  int rearElement() {
    if (isEmpty()) {
      return -1;
    }

    return data[rear];
  }

  int size() {
    return (rear - front + capacity) % capacity;
  }
};

int main() {
  CircularQueue queue(5);

  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);

  cout << "Front element: " << queue.frontElement() << endl;
  cout << "Rear element: " << queue.rearElement() << endl;
  cout << "Queue size: " << queue.size() << endl;

  queue.dequeue();
  queue.dequeue();

  cout << "Front element: " << queue.frontElement() << endl;
  cout << "Rear element: " << queue.rearElement() << endl;
  cout << "Queue size: " << queue.size() << endl;

  return 0;
}
