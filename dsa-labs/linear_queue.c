#include <stdio.h>
#include <stdlib.h>

#define MAX 10 // size of queue
int queue[MAX];
int front = -1, rear = -1;

/** Write an interactive program to perform insertion and deletion operations in Linear Queue. */

void enqueue(int element)
{
    if (rear == MAX - 1)
    {
        printf("Queue Overflow\n");
    }
    else
    {
        if (front == -1) // if queue is initially empty
        {
            front = 0;
        }
        rear++;
        queue[rear] = element;
        printf("Inserted -> %d\n", element);
    }
}

void dequeue()
{
    if (front == -1 || front > rear)
    {
        printf("Queue Underflow\n");
    }
    else
    {
        printf("Deleted : %d\n", queue[front]);
        front++;
    }
}

void display()
{
    if (front == -1 || front > rear)
    {
        printf("Queue is empty\n");
    }
    else
    {
        printf("Queue elements: ");
        for (int i = front; i <= rear; i++)
        {
            printf("%d ", queue[i]);
        }
        printf("\n");
    }
}

int main()
{
    while (1)
    {
        int choice, value;
        printf("Enter your choice (1 for insertion, 2 for deletion, 3 for display, 4 for exit): ");
        scanf("%d", &choice);
        switch (choice)
        {
        case 1:
            printf("Performing insertion for 1 element.\n");
            printf("Enter the element to insert: ");
            scanf("%d", &value);
            enqueue(value);
            break;
        case 2:
            printf("Performing deletion for 1 element.\n");
            dequeue();
            break;
        case 3:
            printf("Display elements.\n");
            display();
            break;
        case 4:
            printf("Exiting program.\n");
            exit(0);
        default:
            printf("Invalid choice.\n");
            break;
        }
    }
    return 0;
}
