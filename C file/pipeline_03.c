#include <stdio.h>

int main()
{
	int i, j;
	long sum, x;
	sum = 0;
	x = 0;
	for (i = 0; i < 10; i++)
	{
		for (j = 0; j < 10; j++)
		{
			x = i + j;
			sum = sum + x;
			printf("x=%d sum = %d\n", x, sum);
		}
		printf("i:%d j:%d x:%d sum:%d\n", i, j, x, sum);
	}
	printf("%ld\n", sum);
}