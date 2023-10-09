
%{
#include <stdio.h>
int numLines = 0, numChars = 0;
%}

%%

\n   { ++numLines; ++numChars; }
.    { ++numChars; }

%%

int main() {
    yyin = fopen("texto.txt", "r");
    yylex();
    printf("# de líneas = %d, # de caracteres = %d\n", numLines, numChars);
    return 0;
}
