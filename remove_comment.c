#include <stdio.h>
#include <stdlib.h>
FILE *source, *target;
void single_line()
{
    char d = fgetc(source);
    while(d != EOF)
    {
        if(d == '\n')
        {
            fputc('\n', target);
            return;
        }
        d = fgetc(source);
    }
}

void multi_line()
{
    char d = fgetc(source);
    while(d != EOF)
    {
        if(d == '*')
        {
            char e = fgetc(source);
            if(e == '/')
            {
                return;
            }
        }
        d = fgetc(source);
    }
}

int main()
{
    source = fopen("code.c", "r");
    target = fopen("newcode.c", "w");
    char c = fgetc(source);
    while(c != EOF)
    {
        if(c == '/')
        {
            char d = fgetc(source);
            if(d == '/')
            {
                single_line();
            }
            else if(d == '*')
            {
                multi_line();
            }
            else     //for cases when only one / is present
            {
                fputc(c, target);   //append '/'
                fputc(d, target);   //append the next character after '/'
            }
            printf("%c",c);
        }
        else
        {
            fputc(c, target);
        }
        c = fgetc(source);
    }
    fclose(source);
    fclose(target);
    return 0;
}