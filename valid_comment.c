#include <stdio.h>
#include <string.h>
int main()
{
    char s[100];
    printf("Enter a string: \n");
    fgets(s, 100, stdin);
    if (strlen(s) >= 2)
    {
        if (s[0] == '/' && s[1] == '/')
        {
            printf("\nValid Single Line Comment");
        }
        else if(s[0] == '/' && s[1] == '*' && s[strlen(s) - 3] == '*' && s[strlen(s) - 2] == '/')
        {
            printf("\nValid Multi Line Comment");
        }
        else
        {   
            printf("\nInvalid");
        }
    }
    else
    {
        printf("\nInvalid");
    }
    return 0;
}