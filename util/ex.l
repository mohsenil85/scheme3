%{
#include <stdio.h>
#define YY_NO_UNISTD_H 1 
%}

%%
[0-9]+    printf("INT ");
[0-9]+\.[0-9]+   printf("NUMBER ");
[a-zA-Z][a-zA-Z0-9]*    printf("WORD ");
\:[a-zA-Z0-9]*    printf("SYMBOL ");
\(    printf("OPENPAREN\n\t ");
\)    printf("CLOSEPAREN\n ");
\[    printf("OPENBRACE ");
\]   printf("CLOSEBRACE ");
%%
