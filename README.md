# DSL Project Graph
O projeto visa criar uma linguagem capaz de criar, alterar e apresentar gráficos 2D para os usuários. Para tanto, a linguagem será capaz de, por exemplo, criar um gráfico visual a partir de equações fornecidas pelo usuário, fornecer uma equação a partir de conjunto de pares ordenados e realizar operações entre diferentes equações de gráficos.

# Slides
https://docs.google.com/presentation/d/1ndJFzW6n1BAp8cgxDI2Hzka_mE9jzAOO7ZUD12ESOVM/edit?usp=sharing

# Sintaxe
Atualmente, decidiu-se abordar uma sintaxe similar àquela de funções em linguagens imperativas, onde a função é chamada pelo seu nome, com os parâmetros sendo passados entre parênteses, com fim de linha marcado por ';' :

função(parâmetro 1, parâmetro 2, <...>);

Por exemplo:

show(equação de gráfico); -> Mostra o output visual.

format(tipo de equação, conjunto de pontos ordenados); -> Realiza a aproximação de um grupo de pontos ordenados em um tipo de equação desejada (quadrática, exponencial, <...>).

operation(operação desejada, equação de gráfico 1, equação de gráfico 2); -> Realiza operações de soma, subtração, <...> entre 2 equações de gráficos para formar uma nova equação.

compare(equação de gráfico 1, equação de gráfico 2); -> Devolve a notação assintótica entre os inputs.

# Regras do Lexer
``
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
`

# Gramática

``
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
``

# Exemplos

| função(parâmetro 1, <...>); | output |
|---|---|
| compare(n^2 + n + 1, 3*n^2); | n^2 + n + 1 = Θ(3*n^2) |
| operation(sum, n + 1, n^5); | n^5 + n + 1 |
| format(linear, (1, 1), (2, 2), (3, 3)); | n |

# Integrantes do Projeto
| Nome |	RA |
| --- | --- |
| Felipe Apostolos Pereira Colohoridis | 250397 |
| Felipe Lisandro Judice Godoy | 198306 |
| João Emílio Ferreira | 247184 |
| Tomás Menconi Petriche | 187724 |
