%{
#include <stdio.h>
int line_no = 0;
%}

line .*\n

%%
{line} { line_no++; printf("%10d %s", line_no, yytext); fprintf(yyout, "%d %s", line_no, yytext); }

%%

int yywrap(){}

int main()
{
	yyin = fopen("input.txt", "r");
	
	yyout = fopen("output.txt", "w");
	yylex();
	return 0;
}
