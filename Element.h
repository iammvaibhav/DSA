#ifndef ELEMENT_H
#define ELEMENT_H

typedef struct Element {
	int data;
} Element;

int elementComparator(Element* e1, Element* e2);
void printElement(Element* e);
void swap(Element* arr, int e1, int e2);

#endif
