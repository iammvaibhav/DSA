#ifndef QUICK_SORT_H
#define QUICK_SORT_H

#include "Element.h"

//Leaves sublists of size <= S untouched, option = 0 for recursive algo, anything else will use iterative algo
Element* quickSort(Element* arr, int size, int S, int option);

#endif

