%{
#include <stdio.h>
int length = 0;
%}

%%
[a-zA-Z] { length++;}

%%

int yywrap(){}

int main()
{
	printf("Enter a word\n");
	yylex();
	printf("Length = %d\n",length);
}
