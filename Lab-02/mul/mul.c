#include <stdio.h>
int main() {
    int a, b, result;
    printf("Enter two numbers:\n");
    scanf("%d %d", &a, &b);
    
    if (a > 0 && b > 0) {
        result = a * b;
        printf("Multiplication result: %d\n", result);
    } else {
        printf("enter two positive numbers.\n");
    }

    return 0;
}
