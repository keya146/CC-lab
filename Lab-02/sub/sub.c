#include <stdio.h>

int main() {
    int a, b, result;

    printf("Enter two numbers: \n");
    scanf("%d %d", &a, &b);

    if (a > b) {
        result = a - b;
    } else {
        result = b - a;
    }

    printf("sub is: %d\n", result);

    return 0;
}
