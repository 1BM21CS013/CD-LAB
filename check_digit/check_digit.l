%{
#include<stdio.h>
%}

%%
[0-9]* {printf("Given input is number\n");}
. {printf("Given input is not a digit\n");}
%%

int yywrap()
{}

int main()
{
printf("Enter input: ");
yylex();
return 0;
}
