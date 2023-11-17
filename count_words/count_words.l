
%{
#include<stdio.h>
int c = 0;
%}
%%
([a-zA-Z0-9])+ {c++;}
\n {printf("\n The count is %d ", c); c = 0;}
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
