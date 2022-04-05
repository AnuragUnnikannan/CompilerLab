%{
#include <stdio.h>
%}

%%
"//"([a-z][A-Z]|[0-9]" ")* {}

%%
int yywrap(void){}
int main()
{
	printf("Enter a string to delete single line comment =>");
	yylex();
	return 0;
}
