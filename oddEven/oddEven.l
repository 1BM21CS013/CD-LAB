%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
[0-9]* {
if(atoi(yytext) % 2 == 0)
  printf("Given number is even\n");
else
  printf("Given number is odd\n");
}
%%

int yywrap()
{}

int main()
{
printf("Enter input: ");
yylex();
return 0;
}
