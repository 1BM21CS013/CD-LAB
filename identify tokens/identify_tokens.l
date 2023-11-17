%{
#include<stdio.h>
char *filename = "input.txt";
%}
%%
int|char|float|void {printf("\n%s is datatype ",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("\n%s is identifier",yytext);}
[0-9][a-zA-Z0-9_]* {printf("\n%s is invalid token",yytext);}
[" "]*  {}
. {printf("\n%s is a token", yytext);}
%%
int yywrap()
{
}
int main()
{
printf("enter input: ");
yyin = fopen(filename,"r");
yylex();
fclose(yyin);
return 0;
}
