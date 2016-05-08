grammar Cymbol;

file
    : (functionDecl | varDecl)+
    ;

varDecl // int x = 5;
    : type ID ('=' expr)? ';'
    ;

type // user-defined types
    : 'float'
    | 'int'
    | 'void'
    ;

functionDecl // "void f(int x) {...}"
    : type ID '(' formalParameters? ')' block
    ;

formalParameters // int x, float y
    : formalParameter (',' formalParameter)*
    ;

formalParameter // int x
    : type ID
    ;

block
    : '{' stat* '}'
    ;

stat
    : block
    | varDecl
    | 'if' expr 'then' stat ('else' stat)?
    | 'return' expr? ';'
    | expr '=' expr ';' // assignment
    | expr ';' // function call
    ;

expr
    : ID '(' exprList? ')' // functional call, f(), f(x), f(x, 2)
    | expr '[' expr ']'    // array index, a[i], a[2], a[1][i]
    | '-' expr             // unary minus
    | '!' expr             // boolean not
    | expr '*' expr        // multiplication
    | expr ('+'|'-') expr  // addition or subtraction
    | expr '==' expr       // equalit comparison, lowest priority operator
    | ID                   // variable reference
    | INT
    | '(' expr ')'
    ;

exprList
    : expr (',' expr)* ;   // arg list

ID  :   LETTER (LETTER | [0-9])* ;
fragment
LETTER : [a-zA-Z] ;

INT :   [0-9]+ ;

WS  :   [ \t\n\r]+ -> skip ;

SL_COMMENT
    :   '//' .*? '\n' -> skip
    ;
