%{
#include<stdio.h>
%}
%%
a|e|i|o|u {printf("\n %s is vowel", yytext);}
[a-zA-Z] {printf("\n %s is consonant", yytext);}
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
