%{
#include <stdio.h>
int lines = 0, words = 0, num = 0, spl_char = 0, total = 0, alphabets = 0;
%}

%%
\n {lines++; words++;}
[\t ' '] words++;
[a-zA-Z] alphabets++;
[0-9] num++;
. spl_char++;

%%
int main()
{
	//sudo apt-get install libc6-dev - if it does not work
	yyin = fopen("samplefile.txt", "r");
	yylex();
	total = alphabets + spl_char + num;
	printf("\nFile Contents\n");
	printf("\n\t%d lines", lines);
	printf("\n\t%d words", words);
	printf("\n\t%d alphabets",alphabets);
	printf("\n\t%d digits", num);
	printf("\n\t%d Special characters",spl_char);
	printf("\n\n\t%d total characters\n\n", total);
}

int yywrap()
{
	return 1;
}
