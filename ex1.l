%{
#include "ex1.tab.hpp"
#include <iostream>
using namespace std;
%}

%option noyywrap

%%

[0-9]+   { yylval.val = atoi(yytext); return NUM; }
[A-Za-z] { yylval.val = yytext[0]-'a'; return CHAR; }
"("      { return LP; }
"="      { return EQ; }
")"      { return RP; }
";"      { return STOP; }
"$"      { return 0; } /*end of input*/
[ \t\n]+ { }
.        { cerr << "Unrecognized token!" << endl; exit(1); }
%%