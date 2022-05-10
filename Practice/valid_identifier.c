#include <stdio.h>
#include <string.h>
int main()
{
	char s[100];
	printf("Enter a string:\n");
	scanf("%s",s);
	if(s[0] == '_' || (s[0] >= 'A' && s[0] <= 'Z') || (s[0] >= 'a' && s[0] <= 'z'))
	{
		int flag = 0;
		for(int i = 1; i < strlen(s); i++)
		{
			if(s[i] == '_' || (s[i] >= 'A' && s[i] <= 'Z') || (s[i] >= 'a' && s[i] <= 'z') || (s[i] >= '0' && s[i] <= '9'))
			{
				flag = 1;
			}
			else
			{
				flag = 0;
				printf("Not a valid identifier");
				break;
			}
		}
		if(flag == 1)
		{
			printf("Valid Identifier");
		}
	}
	else
	{
		printf("Not a valid identifier");
	}
	return 0;
}
