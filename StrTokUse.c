//
// Created by vaibhav on 17/2/18.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* removeWhitespace(char* str) {
    char* new = malloc(sizeof(char) * strlen(str));
    int j = 0;
    while (*str != '\0') {
        if (*str != ' ')
            new[j++] = *str;
        str++;
    }
    new[j] = '\0';
    return new;
}

int main() {
    char* str = (char*) malloc(sizeof(char) * 100);
    strcpy(str, "Vaibhav Maheshwari, 98, imm");
    //str = "Vaibhav Maheshwari, 98, imm";

    printf("%s\n", str);
    char* tok = strtok(str, ",");
    while (tok != NULL) {
        printf("%s\n", removeWhitespace(tok));
        tok = strtok(NULL, ",");
    }
    printf("%s\n", str);

    return 0;
}