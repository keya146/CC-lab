%option noyywrap

%{
#include <stdio.h>
%}

/* Definitions */
digit       [0-9]
letter      [a-zA-Z]
under       [_]
id          ({letter}|{under})({letter}|{under}|{digit})*
float_num   {digit}+\.{digit}+
string      \"([^\\\"]|\\.)*\"
ws          [ \t\r\n]+

%%

"if"            { printf("IF_KEYWORD : %s\n", yytext); }
"else"          { printf("ELSE_KEYWORD : %s\n", yytext); }
"for"           { printf("FOR_KEYWORD : %s\n", yytext); }

">="            { printf("GE_OP : %s\n", yytext); }
"<="            { printf("LE_OP : %s\n", yytext); }
"=="            { printf("EQ_OP : %s\n", yytext); }
"!="            { printf("NE_OP : %s\n", yytext); }
"<"             { printf("LT_OP : %s\n", yytext); }
">"             { printf("GT_OP : %s\n", yytext); }

"("             { printf("LPAREN : %s\n", yytext); }
")"             { printf("RPAREN : %s\n", yytext); }
"{"             { printf("LBRACE : %s\n", yytext); }
"}"             { printf("RBRACE : %s\n", yytext); }
";"             { printf("SEMICOLON : %s\n", yytext); }
"="             { printf("ASSIGN_OP : %s\n", yytext); }
"+"             { printf("PLUS_OP : %s\n", yytext); }
"-"             { printf("MINUS_OP : %s\n", yytext); }
"*"             { printf("MUL_OP : %s\n", yytext); }
"/"             { printf("DIV_OP : %s\n", yytext); }

{string}        { printf("STRING_LITERAL : %s\n", yytext); }
{float_num}     { printf("FLOAT_LITERAL : %s\n", yytext); }
{digit}+        { printf("INTEGER_LITERAL : %s\n", yytext); }
{id}            { printf("IDENTIFIER : %s\n", yytext); }
{ws}            { /* ignore whitespace */ }

.               { printf("UNKNOWN_TOKEN : %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
