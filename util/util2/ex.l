%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
//extern YYSTYPE yylval;
#define YY_NO_UNISTD_H 1 
/*
//[0-9]+\.[0-9]+   return NUMBER  ;
//[a-zA-Z][a-zA-Z0-9]*    return WORD  ;
\:[a-zA-Z0-9]*    return SYMBOL  ;
\(    return OPENPAREN\n\t  ;
\)    return CLOSEPAREN\n  ;
\[    return OPENBRACE  ;
\]   return CLOSEBRACE  ;
*/
%}


%%
[0-9]+    yylval=atoi(yytext); return INT;
\*   return MUL  ;
\+   return ADD  ;
[ \t]   /*ignore whitespace */;
%%
