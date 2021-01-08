#include <stdio.h>

extern int add(int a, int b);

#ifdef _WIN32
__attribute__((dllimport))
#endif

extern const char hello[];
int fib(int n)
{
	if (n <= 2)
		return 1;
	else
		return fib(n-1) + fib(n-2);
}

int main()
{
	int n = 32;
	printf("%s\n", hello);
	printf("fib(%d) = %d\n", n, fib(n));
	printf("add(%d, %d) = %d\n", n, 2*n, add(n, 2 * n));
	return 0;
};


