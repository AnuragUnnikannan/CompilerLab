#include <stdio.h>
#include <string.h>
int main()
{
	char s[100];
	printf("Enter a string:\n");
	fgets(s, 100, stdin);
	int z = 0;
	for(int i = 0; i < strlen(s)-1; i++)
	{
		if(s[i] == '/' && s[i+1] == '/')
		{
			printf("Valid Comment\n");
			return 0;
		}
		else if(s[i] == '/' && s[i+1] == '*')
		{
			z = 1;
		}
		if(z == 1 && s[i] == '*' && s[i+1] == '/')
		{
			printf("Valid Comment\n");
			return 0;
		}
	}
	printf("Invalid Comment\n");
	return 0;
}
