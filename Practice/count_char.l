%{
	#include <stdio.h>
	#include <string.h>
	int words = 0, lines = 0, digits = 0, spl_char = 0, chars = 0;
%}

%%
[\n] {lines++; words++;}
[a-zA-Z] {chars++;}
[0-9] {digits++;}
[ \t] {words++;}
. {spl_char++;}
%%

int yywrap(){}

int main()
{
	yyin = fopen("sample.txt", "r");
	yylex();
	printf("\nWords: %d\n",words);
	printf("\nLines: %d\n",lines);
	printf("\nDigits: %d\n",digits);
	printf("\nSpecial Characters: %d\n",spl_char);
	printf("\nCharacters: %d\n",chars);
	return 0;
}
