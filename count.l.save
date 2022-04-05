%{
	int vowel = 0;
	int cons = 0;
%}
%%
[aeiouAEIOU] {vowel++;}
[a-zA-Z] {cons++;}
%%
int yywrap(){}
int main()
{
	printf("Enter a string: ");
	yylex();
	printf("\nNumber of vowels = %d and cons=%d\n",vowel,cons);
	return 0;
}
