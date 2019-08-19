/*
 ===================================================================================================
 Name        : Cond_Ex1.c
 Author      : Mohamed Tarek
 Description : Code to print the maximum number of three numbers.
 ===================================================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
    int num1,num2,num3;
    int max_num;
    printf("Please enter the three number to compare:");
    scanf("%d %d %d",&num1,&num2,&num3);
    max_num = num1;
    if(num2 > max_num)
    {
        max_num = num2;
    }
    if(num3 > max_num)
    {
        max_num = num3;
    }
    printf("\nthe maximum number is :%d",max_num);
    return 0;
}

