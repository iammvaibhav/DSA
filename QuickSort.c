#include "QuickSort.h"
#include "InsertionSort.h"
#include "Stack.h"

Element *quickSortInternalRecursive(Element *arr, int low, int high, int S);

Element *quickSortInternalIterative(Element *arr, int low, int high, int S);

int partition(Element *arr, int low, int high);

Element *quickSort(Element *arr, int size, int S, int option) {
    if (option == 0)
        return quickSortInternalRecursive(arr, 0, size - 1, S);
    else return quickSortInternalIterative(arr, 0, size - 1, S);
}

Element *quickSortInternalRecursive(Element *arr, int low, int high, int S) {

    if (high > low) {
        if (high - low + 1 > S) {
            int partitioningIndex = partition(arr, low, high);
            quickSortInternalRecursive(arr, low, partitioningIndex - 1, S);
            quickSortInternalRecursive(arr, partitioningIndex + 1, high, S);
        } else insertionSort(arr, high - low + 1);
    }
    return arr;
}

Element *quickSortInternalIterative(Element *arr, int low, int high, int S) {

    Stack *stack = createStack(high - low + 1);
    StackElement element;
    element.low = low;
    element.high = high;
    push(stack, element);

    while (isEmpty(stack) != 1) {

        StackElement top = pop(stack);

        if (top.high - top.low + 1 > S) {

            int partitioningIndex = partition(arr, top.low, top.high);

            if (top.low < partitioningIndex - 1) {
                StackElement s;
                s.high = partitioningIndex - 1;
                s.low = top.low;
                push(stack, s);
            }

            if (top.high > partitioningIndex + 1) {
                StackElement s;
                s.high = top.high;
                s.low = partitioningIndex + 1;
                push(stack, s);
            }

        } else {
            insertionSort(arr + top.low, top.high - top.low + 1);
            pop(stack);
        }
    }

    return arr;
}

int partition(Element *arr, int low, int high) {

    //let the pivot be the highest element
    Element pivot = arr[high];

    int smallIndex = low - 1;
    int j;
    int compared;

    for (j = low; j < high; j++) {
        compared = elementComparator(arr + j, &pivot);
        if (compared == -1 || compared == 0) {
            smallIndex++;
            swap(arr, smallIndex, j);
        }
    }

    swap(arr, smallIndex + 1, high);
    return smallIndex + 1;
}
