#include "InsertionSort.h"
#include "QuickSort.h"
#include "MergeSort.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void printElementArr(Element* arr, int size);

void timespec_diff(struct timespec *start, struct timespec *stop,
                   struct timespec *result)
{
    if ((stop->tv_nsec - start->tv_nsec) < 0) {
        result->tv_sec = stop->tv_sec - start->tv_sec - 1;
        result->tv_nsec = stop->tv_nsec - start->tv_nsec + 1000000000;
    } else {
        result->tv_sec = stop->tv_sec - start->tv_sec;
        result->tv_nsec = stop->tv_nsec - start->tv_nsec;
    }

}

int main() {

	//fill the contents of arr
	int i;
    int size = 10;
    Element* arr = malloc(size * sizeof(Element));
	for(i = 0; i < size; i++)
		arr[i].data = 10-i;

    struct timespec initial;
    struct timespec afterInsertion;
    struct timespec afterQuickR;
    struct timespec afterQuickI;
    struct timespec final;
    struct timespec diff;
    printElementArr(arr, size);
    printf("\t\t\t\tREPORT For Size n = %d\n", size);

    /*clock_gettime(CLOCK_MONOTONIC, &initial);
	insertionSort(arr, size);
    clock_gettime(CLOCK_MONOTONIC, &afterInsertion);
    timespec_diff(&initial, &afterInsertion, &diff);
    printf("%-30s %ds %fms\n", "Insertion Sort took", diff.tv_sec, diff.tv_nsec/1000000.0);

    for(i = 0; i < size; i++)
        arr[i].data = rand();
*/

    /*clock_gettime(CLOCK_MONOTONIC, &afterInsertion);
	quickSort(arr, size, -1, 0);
    clock_gettime(CLOCK_MONOTONIC, &afterQuickR);
    timespec_diff(&afterInsertion, &afterQuickR, &diff);
    printf("%-30s %ds %fms\n", "Recursive Quick Sort took", diff.tv_sec, diff.tv_nsec/1000000.0);

    for(i = 0; i < size; i++)
        arr[i].data = rand();

    clock_gettime(CLOCK_MONOTONIC, &afterQuickR);
    quickSort(arr, size, -1, 1);
    clock_gettime(CLOCK_MONOTONIC, &afterQuickI);
    timespec_diff(&afterQuickR, &afterQuickI, &diff);
    printf("%-30s %ds %fms\n", "Iterative Quick Sort took", diff.tv_sec, diff.tv_nsec/1000000.0);

    for(i = 0; i < size; i++)
        arr[i].data = rand();*/

    clock_gettime(CLOCK_MONOTONIC, &afterQuickI);
    mergeSort(arr, size, 1);
    clock_gettime(CLOCK_MONOTONIC, &final);
    printElementArr(arr, size);
    timespec_diff(&afterQuickI, &final, &diff);
    printf("%-30s %ds %fms\n", "Merge Sort took", diff.tv_sec, diff.tv_nsec/1000000.0);

	return 0;
}

void printElementArr(Element* arr, int size) {
	int j;
	for(j = 0; j < size; j++) {
		printElement(arr + j);
		printf(" ");
	}
	printf("\n");
}
