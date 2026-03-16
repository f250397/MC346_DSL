lexer grammar GraphDSLLexer;

SHOW        : [Ss][Hh][Oo][Ww] ;
OPERATION   : [Oo][Pp][Ee][Rr][Aa][Tt][Ii][Oo][Nn] ;
COMPARE     : [Cc][Oo][Mm][Pp][Aa][Rr][Ee] ;
FORMAT      : [Ff][Oo][Rr][Mm][Aa][Tt] ;

TYPE
    : [Ll][Ii][Nn][Ee][Aa][Rr]
    | [Qq][Uu][Aa][Dd][Rr][Aa][Tt][Ii][Cc]
    | [Cc][Uu][Bb][Ii][Cc]
    ;

NUMBER      : [0-9]+ ;

SUM         : '+' 
            | [Ss][Uu][Mm]
            ;
MINUS       : '-' 
            | [Mm][Ii][Nn][Uu][Ss]
            ;
DIVIDE      : '+' 
            | [Dd][Ii][Vv][Ii][Dd][Ee]
            ;
MULTIPLY    : '+' 
            | [Mm][Uu][Ll][Tt][Ii][Pp][Ll][Yy]
            ;
POWER       : '+' 
            | [Pp][Oo][Ww][Ee][Rr]
            ;

VARIABLE    : [a-zA-Z]+ ;

LPAREN      : '(' ;
RPAREN      : ')' ;
COMMA       : ',' ;
SEMI        : ';' ;

WS          : [ \t\r\n]+ -> skip ;