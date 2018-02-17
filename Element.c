#include "Element.h"
#include <stdio.h>

int elementComparator(Element* e1, Element* e2) {
	if (e1 -> data > e2 -> data)
		return 1;
	else if (e1 -> data < e2 -> data)
		return -1;
	else return 0;
}

void printElement(Element* e) {
	printf("%d", e -> data);
}

//swap element at e1 with element at e2
void swap(Element* arr, int e1, int e2) {

	if (e1 == e2)
		return;

    Element temp = arr[e1];
    arr[e1] = arr[e2];
    arr[e2] = temp;
}

