%{
#include<stdio.h>
%}

%%
[0-1]*000[0-1]* {printf("Given string contains substring with 000");}
[0-1]* {printf("Given string doesn't contains substring with 000");}
.* {printf("Invalid string");}
%% 

int yywrap() {
return 1;
}

int main() {
printf("Enter the string : ");
yylex();
return 0;
}