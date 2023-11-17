%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
[0-9]* {
int num = atoi(yytext);
if(num == 1 || num == 0)
  printf("Given number is not a prime\n");
else if(num == 2)
  printf("Given number is a prime\n");
else {
  int flag = 1;
  for(int i = 2 ; i < num ; i++) {
    if((num % i) == 0){
      printf("Divisible by %d\n",i);
      flag = 0;
      break;
    }
  }
  if(flag)
    printf("Given number is a prime\n");
  else
    printf("Given number is not a prime\n");
}
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
