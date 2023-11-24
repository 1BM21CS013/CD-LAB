%{
#include<stdio.h>
int isCompound = 0;
%}
%%
and|or|if|then|neverthless|because|but {isCompound = 1;}
[a-zA-Z]* {}
["\n"] {
if(isCompound)
  printf("Given sentence is compound\n");
else
  printf("Given sentence is simple\n");
isCompound = 0;
}
[" "]*  {}
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
