#include <stdio.h>
#include "string.h"
#include "stdlib.h"

void reverse(char *str)

int main(int argc, char const *argv[])
{
	char *str=NULL;
	str=(char *)malloc(10);
	strcpy(str,"abcdefg");
	reverse(str);
	
	return 0;
}

void reverse(char *str)
{
	int len=strlen(str);
	printf("%s\n",str );
	for (int i = 0; i < len/2; ++i)
	{
		char ch=str[i];
		str[i]=str[len-1-i];
		str[len-1-i]=ch;
		/* code */
	}
	printf("%s\n",str );
}