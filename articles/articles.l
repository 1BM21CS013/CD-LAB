%{
#include<stdio.h>
int startsWithArticle = 0;
%}
%%
^[aA][" "][a-zA-Z]* {startsWithArticle = 1;}
^[aA][n][" "][a-zA-Z]* {startsWithArticle = 1;}
^[tT][he].[" "][a-zA-Z]* {startsWithArticle = 1;}
["\n"] {
if(startsWithArticle)
  printf("Given sentence starts with article\n");
else
  printf("Given sentence doesn't start with article\n");
startsWithArticle = 0;
}
. {}
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
