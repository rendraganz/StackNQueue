class CircularQueue {
  List<int> elements = [];
  int front = -1;
  int rear = -1;
  int maxQueue = 0;

  void createQueue(int size) {
    elements = List<int>.filled(size, 0);
    maxQueue = size;
  }

  bool isFull() {
    return (front == 0 && rear == maxQueue - 1) || (rear + 1 == front);
  }

  bool isEmpty() {
    return front == -1;
  }

  void enqueue(int data) {
    if (isFull()) {
      print("Queue Overflow! Tidak dapat menambahkan data.");
      return;
    }
    if (isEmpty()) {
      front = rear = 0;
    } else {
      rear = (rear + 1) % maxQueue;
    }
    elements[rear] = data;
    print("$data berhasil ditambahkan ke Queue.");
  }

  int dequeue() {
    if (isEmpty()) {
      print("Queue Underflow! Tidak ada data untuk dihapus.");
      return -1;
    }
    int data = elements[front];
    elements[front] = 0; // Opsional: reset nilai
    if (front == rear) {
      // Queue kosong setelah ini
      front = rear = -1;
    } else {
      front = (front + 1) % maxQueue;
    }
    print("$data berhasil dihapus dari Queue.");
    return data;
  }

  void printQueue() {
    if (isEmpty()) {
      print("Queue kosong.");
      return;
    }
    print("Isi Queue:");
    int i = front;
    while (true) {
      print("Elemen [$i]: ${elements[i]}");
      if (i == rear) break;
      i = (i + 1) % maxQueue;
    }
  }
}

void main() {
  CircularQueue q = CircularQueue();
  q.createQueue(5); // Ukuran queue 5

  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);
  q.enqueue(40);
  q.enqueue(50); // Harus penuh

  q.printQueue();

  q.dequeue();
  q.dequeue();

  q.printQueue();

  q.enqueue(60);
  q.enqueue(70);

  q.printQueue();
}
