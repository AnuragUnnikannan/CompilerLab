%{
#include <stdio.h>
#include <string.h>
int count = 0;
%}

%%
[a-zA-Z0-9]+ {if(strlen(yytext) > 5 && strlen(yytext) < 10) { count++; }}
%%

int yywrap(){}

int main()
{
	printf("Enter a string:");
	yylex();
	printf("%d",count);
	return 0;
}
