grammar LabeledExpr;
import CommonLexerRules;  // includes all rules from CommonLexerRule.g4

/* The state rule; being parsing here. */
prog: stat+ ;

stat: expr NEWLINE          # printExpr
    | ID '=' expr NEWLINE   # assign
    | 'clear' NEWLINE       # clear
    | NEWLINE               # blank
    ;

expr: expr op=('*'|'/') expr # MulDiv
    | expr op=('+'|'-') expr # AddSub
    | INT                    # int
    | ID                     # id
    | '(' expr ')'           # parens
    ;

MUL : '*' ; // assigns token name to '*' used above in grammar
DIV : '/' ;
ADD : '+' ;
SUB : '-' ;
