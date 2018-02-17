Element.o: Element.c Element.h
	gcc -c Element.c -o Element.o

InsertionSort.o: InsertionSort.h InsertionSort.c
	gcc -c InsertionSort.c -o InsertionSort.o

QuickSort.o: QuickSort.h QuickSort.c
	gcc -c QuickSort.c -o QuickSort.o

Stack.o: Stack.h Stack.c
	gcc -c Stack.c -o Stack.o

output: Element.o InsertionSort.o QuickSort.o Stack.o driver.c
	gcc -c driver.c -o driver.o
	gcc driver.o InsertionSort.o Element.o QuickSort.o Stack.o -o output
	rm Element.o InsertionSort.o QuickSort.o Stack.o driver.o
