#include <iostream>
/**
 * Write a c++ program to check the given number is palindrome or not
 */

int main()
{
    int num, originalNum, reversedNum = 0, remainder;
    printf("Enter an integer: ");
    scanf("%d", &num);
    originalNum = num;

    // reversed integer is stored in reversedNum
    while (num != 0)
    {
        remainder = num % 10;
        reversedNum = reversedNum * 10 + remainder;
        num /= 10;
    }

    // palindrome if orignalNum and reversedNum are equal
    if (originalNum == reversedNum)
        printf("%d is a palindrome.", originalNum);
    else
        printf("%d is not a palindrome.", originalNum);

    return 0;
}