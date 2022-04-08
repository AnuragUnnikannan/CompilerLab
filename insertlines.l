%{
#include <stdio.h>
int line_no = 0;
%}

line .*\n

%%
{line} { line_no++; printf("%10d %s", line_no, yytext); fprintf(yyout, "%10d %s", line_no, yytext); }

%%

int yywrap(){}

int main()
{
	yyin = fopen("samplefile.txt", "r");
	
	yyout = fopen("samplefile_out.txt", "w");
	yylex();
	return 0;
}
