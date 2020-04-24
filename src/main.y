

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token ABRECOL FECHACOL ASPAS NUM STRING VIRGULA QUEBRALINHA 

%%
PARSER:
    LISTA QUEBRALINHA {printf("OK\n");}

LISTA:
    ABRECOL CONT FECHACOL {}
    |
    ;


CONT:
    ATOM {}
    ;

ATOM:
    NUM {}
    | STRING {}
    | ASPAS STRING ASPAS {}
    | LISTA {}
    | ATOM VIRGULA ATOM {}
    | STRING NUM {}
    ;

%%

void yyerror(char *s) {
    printf("ERRO\n");
}

int main() {
  yyparse();
    return 0;

}
