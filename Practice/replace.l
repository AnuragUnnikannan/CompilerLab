%{
	#include <stdio.h>
	int sf = 0, pf = 0;
%}

%%
"scanf" {sf++; fprintf(yyout, "readf");}
"printf" {pf++; fprintf(yyout, "writef");}
%%

int yywrap(){}

int main()
{
	yyin = fopen("code.c", "r");
	yyout = fopen("code1.c", "w");
	yylex();
	printf("\nNumber of scanf statements: %d\n",sf);
	printf("\nNumber of printf statements: %d\n",pf);
	return 0;
}
