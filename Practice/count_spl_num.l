%{
	#include <stdio.h>
	int pos = 0, neg = 0, pos_frac = 0, neg_frac = 0;
%}

%%
[0-9]+ {pos++;}
[-][0-9]+ {neg++;}
[0-9]+.[0-9]+ {pos_frac++;}
[-][0-9]+.[0-9]+ {neg_frac++;}
%%

int yywrap(){}

int main()
{
	printf("\nEnter a number:\n");
	yylex();
	printf("\nPositive Numbers: %d\n",pos);
	printf("\nNegative Numbers: %d\n",neg);
	printf("\nPositive Fractions: %d\n",pos_frac);
	printf("\nNegative Fractions: %d\n",neg_frac);
}
