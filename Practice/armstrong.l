%{
	#include <stdio.h>
	int n = 0, s = 0, c = 0;
%}

%%
[0-9]+ {n = atoi(yytext);
		c = n;
		while(n != 0)
		{
			int d = n%10;
			s = s + (d*d*d);
			n = n/10;
		}
		if(s == c)
		{
			printf("Armstrong\n");
		}
		else
		{
			printf("Not Armstrong\n");
		}}
[\n] {return 1;}
%%

int yywrap(){}

int main()
{
	printf("\nEnter a number:\n");
	yylex();
	return 0;
}
