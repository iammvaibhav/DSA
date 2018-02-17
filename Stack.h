#ifndef STACK_H
#define STACK_H

typedef struct StackElement {
    int low;
    int high;
}StackElement;

typedef struct Stack {
    StackElement* stack;
    int count;
    int size;
}Stack;

Stack* createStack(int size);
Stack* resizeStack(Stack* stack, int newSize);
StackElement pop(Stack* stack);
int push(Stack* stack, StackElement element);
int isEmpty(Stack* stack);
int isFull(Stack* stack);
void printStack(Stack* stack);

#endif