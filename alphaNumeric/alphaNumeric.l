%{
#include<stdio.h>
%}

%%
([0-9]|[a-zA-Z])* {printf("Given input is alpha numeric\n");}
. {printf("Given input is not a alpha numeric\n");}
%%

int yywrap()
{}

int main()
{
printf("Enter input: ");
yylex();
return 0;
}
