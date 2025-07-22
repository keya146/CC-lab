%option noyywrap

%{
#include <stdio.h>
%}

digit       [0-9]
letter      [a-zA-Z]
under       [_]
id          ({letter}|{under})({letter}|{under}|{digit})*
float_num   {digit}+\.{digit}+
string      \"([^\\\"]|\\.)*\"
ws          [ \t\r\n]+

%%

"="             { printf("ASSIGN_OP : %s\n", yytext); }
"+"             { printf("PLUS_OP : %s\n", yytext); }
"-"             { printf("MINUS_OP : %s\n", yytext); }
"*"             { printf("MUL_OP : %s\n", yytext); }
"/"             { printf("DIV_OP : %s\n", yytext); }

";"             { printf("SEMICOLON : %s\n", yytext); }

{string}        { printf("STRING_LITERAL : %s\n", yytext); }
{float_num}     { printf("FLOAT_VALUE : %s\n", yytext); }
{digit}+        { printf("INTEGER_VALUE : %s\n", yytext); }
{id}            { printf("IDENTIFIER : %s\n", yytext); }
{ws}            { /* ignore whitespace */ }

.               { printf("UNKNOWN_TOKEN : %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
