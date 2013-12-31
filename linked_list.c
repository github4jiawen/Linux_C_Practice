#include "stdio.h"
#include "string.h"

int add(int a,int b)
{
	return a+b;
}

int input(int a,int b)
{
	printf("we need two number to add\n");
	scanf("%d %d",&a,&b);
}

int main(int argc, char const *argv[])
{
	printf("this is the end of this program\n");
	return 0;
}