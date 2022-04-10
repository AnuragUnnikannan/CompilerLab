
%{
#include <stdio.h>
int identifiers = 0, keywords = 0, constants = 0, operators = 0, terminal_char = 0, separators = 0;
%}

%%


"while"|"if"|"else" {keywords++;printf("\t keywords : %s\n", yytext);}

"int"|"float" {keywords++;printf("\t keywords : %s\n", yytext);}

[a-zA-Z_][a-zA-Z0-9_]* {identifiers++;printf("\t identifier : %s\n", yytext);}

"<="|"=="|"="|"++"|"-"|"*"|"+" {operators++;printf("\t operator : %s\n", yytext);}

[(){}|,] {separators++;printf("\t separator : %s\n", yytext);}

[0-9]*"."[0-9]+ {constants++;printf("\t constants : %s\n", yytext);}

[0-9]+ {constants++;printf("\t constants : %s\n", yytext);}						

; {terminal_char++; printf("\t terminal character: %s\n", yytext);}

%%

int yywrap(){}

int main()
{
	
	yylex();
	printf("Identifiers: %d\n", identifiers);
	printf("Keywords: %d\n", keywords);
	printf("Constants: %d\n", constants);
	printf("Operators: %d\n", operators);
	printf("Separators: %d\n", separators);
	printf("Terminal Characters: %d\n\n", terminal_char);
	printf("\n total no. of token = %d\n", (identifiers + keywords + constants + operators + separators + terminal_char));
	return 0;
}
