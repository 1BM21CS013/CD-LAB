
%{
#include<stdio.h>
%}
%%
[a-zA-Z]* {printf("\n %s is a stream of characters", yytext);}
[0-9]* {printf("\n %s is a stream of digits", yytext);}
. {ECHO;}
%%
int yywrap()
{
}
int main()
{
printf("enter input: ");
yylex();
return 0;
}
