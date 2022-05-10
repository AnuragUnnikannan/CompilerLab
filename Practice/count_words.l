%{
#include <stdio.h>
int words = 0, temp = 0;
%}

%%
[a-zA-Z0-9] {temp++;}
[ \n\t] {words++; temp = 0;}
%%

int yywrap(){}

int main()
{
	printf("Enter a string:");
	yylex();
	printf("%d",words);
	return 0;
}
