cmake_minimum_required(VERSION 3.9)
project(DSA C)

set(CMAKE_C_STANDARD 99)


add_executable(DRIVER driver.c InsertionSort.c Element.c QuickSort.c Stack.c MergeSort.c)
add_executable(STRTOK StrTokUse.c)