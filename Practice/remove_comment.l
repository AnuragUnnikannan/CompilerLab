%{
	#include <stdio.h>
%}

%%
\/\/.* {fprintf(yyout, "");}
\/*[a-zA-Z0-9]**\/ {fprintf(yyout, "");}
%%

int yywrap(){}

int main()
{
	yyin = fopen("code.c", "r");
	yyout = fopen("code1.c", "w");
	yylex();
	return 0;
}
