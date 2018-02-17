#include "InsertionSort.h"

Element* insertionSort(Element* arr, int size) {
	int i;
	int j;
		for(i = 1; i < size; i++) {
			for(j = i-1; j >= 0; j--) {
				if (elementComparator(arr+(j+1), arr+j) == -1)
					swap(arr, j+1, j);
				else break;
			}
		}
	return arr;
}
