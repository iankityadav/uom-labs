#include <stdio.h>

/**
C program for given two numbers to perform arithmetic operations using switch statement.
 */
int main()
{
    int num1, num2;
    char operator;
    float result;
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);
    printf("Enter an operator (+, -, *, /): ");
    scanf(" %c", &operator);
    switch (operator)
    {
    case '+':
        result = num1 + num2;
        printf("%d + %d = %.2f\n", num1, num2, result);
        break;
    case '-':
        result = num1 - num2;
        printf("%d - %d = %.2f\n", num1, num2, result);
        break;
    case '*':
        result = num1 * num2;
        printf("%d * %d = %.2f\n", num1, num2, result);
        break;
    case '/':
        if (num2 != 0)
        {
            result = (float)num1 / num2;
            printf("%d / %d = %.2f\n", num1, num2, result);
        }
        else
        {
            printf("Error: Division by zero is not allowed.\n");
        }
        break;
    default:
        printf("Error: Invalid operator.\n");
        break;
    }
    return 0;
}