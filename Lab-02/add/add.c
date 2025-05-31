#include <stdio.h>
int main()
{
    int a, b, sum;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    sum = a + b;
    printf("Sum is: %d\n", sum);

    if (sum > 10)
    {
        printf("Sum is more than 10.\n");
    }
    else
    {
        printf("Sum is 10 or less.\n");
    }

    return 0;
}
