//
// Created by vaibhav on 17/2/18.
//

#include <stddef.h>
#include "MergeSort.h"
#include <stdlib.h>
#include "Stack.h"
#include <math.h>

Element* mergeSortInternalRecursive(Element* arr, int low, int high, Element* tempArr);
Element* mergeSortInternalIterative(Element* arr, int low, int high, Element* tempArr);
void merge(Element* arr, int low, int mid, int high, Element* tempArr);

Element* mergeSort(Element* arr, int size, int option) {
    Element* tempArr = (Element*) malloc(sizeof(Element) * size);
    if (option == 0) return mergeSortInternalRecursive(arr, 0, size - 1, tempArr);
    else return mergeSortInternalIterative(arr, 0, size - 1, tempArr);
}

Element* mergeSortInternalRecursive(Element* arr, int low, int high, Element* tempArr) {
    if (low < high) {
        int mid = (low + high) / 2;
        mergeSortInternalRecursive(arr, low, mid, tempArr);
        mergeSortInternalRecursive(arr, mid + 1, high, tempArr);
        merge(arr, low, mid, high, tempArr);
    }
    return arr;
}

Element* mergeSortInternalIterative(Element* arr, int low, int high, Element* tempArr) {

    int currSize = 1;
    int currmid, currhigh;

    while (currSize < high + 1) {
        for (int i = 0; i <= high; i += currSize*2 ) {
            currmid = i + currSize - 1;
            currhigh = (i + 2*currSize - 1 > high) ? high : i + 2*currSize - 1;
            if (currmid < high)
                merge(arr, i, currmid, currhigh, tempArr);
        }
        currSize *= 2;
    }

}

void merge(Element* arr, int low, int mid, int high, Element* tempArr) {
    int arr1 = low;
    int arr2 = mid + 1;
    int cmp;
    int tempArrCnt = 0;

    for (int i = 0; i <= high - low; ++i) {
        cmp = elementComparator(arr + arr1, arr + arr2);
        if (arr1 > mid) cmp = 1;
        if (arr2 > high) cmp = -1;

        if (cmp == -1)
            tempArr[tempArrCnt++] = arr[arr1++];
        else
            tempArr[tempArrCnt++] = arr[arr2++];
    }

    for (int j = 0; j <= high - low; ++j) {
        arr[j + low] = tempArr[j];
    }
}