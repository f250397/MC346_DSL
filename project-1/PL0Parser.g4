parser grammar GraphDSLParser;

options { tokenVocab = GraphDSLLexer; }

program
    : statement SEMI statement* EOF
    ;

statement
    : functionCall
    ;

functionCall
    : SHOW LPAREN arg RPAREN
    | OPERATION LPAREN argOp RPAREN
    | COMPARE LPAREN argList RPAREN
    | FORMAT LPAREN argFormat RPAREN
    ;

arg
    : function
    ;

argOp
    : operation COMMA argList
    ;

argList
    : function ( COMMA function )*
    ;

function
    : primary expression
    ;

expression
    : ( operation primary )*
    ;

primary
    : VARIABLE
    | NUMBER
    | LPAREN function RPAREN
    | functionCall
    ;

operation
    : SUM
    | MINUS
    | DIVIDE
    | MULTIPLY
    | POWER
    ;

argFormat
    : TYPE COMMA pairList
    ;

pairList
    : pair ( COMMA pair )*
    ;

pair
    : LPAREN NUMBER COMMA NUMBER RPAREN
    ;