grammar LibExpr;
import CommonLexerRules;  // includes all rules from CommonLexerRule.g4

/* The state rule; being parsing here. */
prog: stat+ ;

stat: expr NEWLINE
    | ID '=' expr NEWLINE
    | NEWLINE
    ;

expr: expr ('*'|'/') expr
    | expr ('+'|'-') expr
    | INT
    | ID
    | '(' expr ')'
    ;
