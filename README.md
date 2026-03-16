# DSL Project2DGraph
O projeto visa criar uma linguagem capaz de criar, alterar e apresentar gráficos 2D para os usuários. Para tanto, a linguagem será capaz de, por exemplo, criar um gráfico visual a partir de equações fornecidas pelo usuário, fornecer equação a partir de conjunto de pares ordenados e realizar operações entre diferentes equações de gráficos.

# Slides
https://docs.google.com/presentation/d/1ndJFzW6n1BAp8cgxDI2Hzka_mE9jzAOO7ZUD12ESOVM/edit?usp=sharing

# Sintaxe
Atualmente, decidiu-se abordar uma sintaxe similar a de funções, onde será fornecido o nome da função que deseja ser realizada e seguida por parâmetros para a função:

(função) (paramêtro 1) (paramêtro 2) (<...>)

Por exemplo:

(função de saída) (equação gráfico) -> Mostra o output visual.

(função de formatação) (tipo de equação) (conjunto de pontos ordenados) -> Realiza a aproximação de um grupo de pontos ordenados em um tipo de equação desejada (quadrática, exponencial, <...>).

(função de operação) (operação desejada) (equação gráfico 1) (equção gráfico 2) -> Realiza operaçãos de soma, subtração, <...> entre dois gráficos para formar um novo gráfico.

(função de comparação) (equação gráfico 1) (equação gráfico 2) -> Devolve a notação assintótica entre os inputs.

# Gramática
A gramática mais geral seria:

S -> (função) (parâmetro)

S -> (função) (parâmetro)A

A ->  (parâmetro)

A ->  (parâmetro) A

Para os exemplos, poderia utilizar a gramática a seguir:

S -> (função de saída)(equação gráfico)

S -> (função de formatação)(tipo de equação)(conjunto de pontos ordenados)

S -> (função de operação)(operação desejada)A

S -> (função de comparação)A

A -> (equação gráfico 1)(equação gráfico 2)

# Exemplos

(função de comparação) (equação gráfico 1) (equação gráfico 2) -> comparation(n^2+n+1, 3n^2) = (output) O(n^2+n+1) 3n^2

(função de operação) (operação desejada) (equação gráfico 1) (equção gráfico 2) -> operation(sum, n+1, n^5) = (output) n^5+n+1

(função de formatação) (tipo de equação) (conjunto de pontos ordenados) -> formatation(linear, ((1,1),(2,2),(3,3))) = (output) n

# Integrantes do Projeto
| Nome |	RA |
| --- | --- |
| Felipe Apostolos Pereira COlohoridis | 250397 |
| Felipe Lisandro Judice Godoy | 198306 |
| João Emílio Ferreira | 247184 |
| Tomás Menconi Petriche | 187724 |
