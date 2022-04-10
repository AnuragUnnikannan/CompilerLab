%{
#include <stdio.h>
%}

%%
[ \n\t]+ {fprintf(yyout, " ");}
. { fprintf(yyout, "%s", yytext); }

%%

int yywrap(){}

int main()
{
	yyin = fopen("samplefile.txt", "r");
	yyout = fopen("samplefile_out.txt", "w");
	yylex();
	return 0;
}
