%{
#include <stdio.h>
int positive = 0, negative = 0;
%}

%%
[-][0-9]+ {negative++;}
[0-9]+ {positive++;}
%%

int yywrap(){}

int main()
{
	printf("\nEnter a number:\n");
	yylex();
	printf("Positive numbers: %d\n",positive);
	printf("Negative numbers: %d\n", negative);
	return 0;
}
