
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

[[] {return ABRECOL;}

[]] {return FECHACOL;}

[\n] {return QUEBRALINHA;}

[0-9]+ {return NUM;}

[a-zA-Z]+ {return STRING;}

["] {return ASPAS;}

[,] {return VIRGULA;}

. ;

%%

int yywrap() {
  return 1;
}
