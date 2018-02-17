//
// Created by vaibhav on 17/2/18.
//

#include "Stack.h"
#include <stdlib.h>
#include <stdio.h>

Stack* createStack(int size) {
    Stack* stack = (Stack*) malloc(sizeof(Stack));
    stack -> stack = (StackElement*) malloc(sizeof(StackElement) * size);
    stack -> size = size;
    stack -> count = 0;
}

Stack* resizeStack(Stack* stack, int newSize) {
    if (newSize <= stack -> size)
        return NULL;

    stack -> stack = (StackElement*) realloc(stack -> stack, sizeof(StackElement) * newSize);
    stack -> size = newSize;
    return stack;
}

StackElement pop(Stack* stack) {

    if (stack->count == 0) {
        struct StackElement error;
        error.high = -1;
        error.low = -1;
        return error;
    }

    stack->count = stack->count - 1;
    StackElement top = stack->stack[stack->count];
    return top;
}

int push(Stack* stack, StackElement element) {

    if (stack->count == stack->size) {
        return -1;
    }else {
        stack->stack[stack->count] = element;
        stack->count = stack->count + 1;
        return 1;
    }
}

int isEmpty(Stack* stack) {
    if (stack->count == 0)
        return 1;
    else return -1;
}

int isFull(Stack* stack) {
    if (stack->count == stack->size)
        return 1;
    else return -1;
}

void printStack(Stack* stack) {
    int i;
    for (i = 0; i < stack->count; ++i) {
        printf("%d: Low -> %d\tHigh -> %d\n", i+1, stack->stack[i].low, stack->stack[i].high);
    }
}