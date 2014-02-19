%{
#include <stdio.h>
#include <string.h>
void yyerror(const char *str){
  fprintf(stderr, "error:%s\n", str);
}
int yywrap(){ return 1; }
extern int yyparse();
int main(){ yyparse(); }
%}


%token INT MUL ADD

%%
commands:/* empty */
        | commands command
        ;

command: 
       multiply
       |
       addition
       |
       identity
       ;

multiply:
        MUL INT INT
        { 
        printf("multiply hit...\n");
        int val =$2 * $3;
        printf("answer = %d", val);
        }
        ;

addition:
        ADD INT INT
        {
        printf("addition hit...\n");
        int val =$2 + $3;
        printf("answer = %d", val);
        }
        ;
identity:
        INT
        { printf("%d", $1); }
        ;
%%
