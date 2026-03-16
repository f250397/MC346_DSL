# DSL Project Graph
O projeto visa criar uma linguagem capaz de criar, alterar e apresentar gráficos 2D para os usuários. Para tanto, a linguagem será capaz de, por exemplo, criar um gráfico visual a partir de equações fornecidas pelo usuário, fornecer uma equação a partir de conjunto de pares ordenados e realizar operações entre diferentes equações de gráficos.

# Slides
https://docs.google.com/presentation/d/1ndJFzW6n1BAp8cgxDI2Hzka_mE9jzAOO7ZUD12ESOVM/edit?usp=sharing

# Sintaxe
Atualmente, decidiu-se abordar uma sintaxe similar àquela de funções em linguagens de programação, onde será fornecido o nome da função que deseja ser realizada seguida por seus parâmetros:

função(parâmetro 1, parâmetro 2, <...>)

Por exemplo:

show(equação de gráfico) -> Mostra o output visual.

formatation(tipo de equação, conjunto de pontos ordenados) -> Realiza a aproximação de um grupo de pontos ordenados em um tipo de equação desejada (quadrática, exponencial, <...>).

operation(operação desejada, equação de gráfico 1, equação de gráfico 2) -> Realiza operações de soma, subtração, <...> entre 2 equações de gráficos para formar uma nova equação.

comparation(equação de gráfico 1, equação de gráfico 2) -> Devolve a notação assintótica entre os inputs.

# Gramática
A gramática geral seria:

S -> função(parâmetro)

S -> função(parâmetro, A)

A ->  parâmetro

A ->  parâmetro, A

Para os exemplos, caso queira uma gramática mais "completa" (evitando se referir a todas funções da mesma forma apesar delas terem diferentes números de parãmetros máximos) poderia utilizar a gramática a seguir:

S -> show(equação de gráfico)

S -> formatation(tipo de equação, conjunto de pontos ordenados)

S -> operation(operação desejada, A)

S -> comparation(A)

A -> equação de gráfico 1, equação de gráfico 2

# Exemplos

função(paramêtro 1, <...>) -> output

comparation(n^2 + n + 1, 3n^2) -> O(n^2 + n + 1) = 3n^2

operation(sum, n + 1, n^5) -> n^5 + n + 1

formatation(linear, ((1, 1), (2, 2), (3, 3))) -> n

# Integrantes do Projeto
| Nome |	RA |
| --- | --- |
| Felipe Apostolos Pereira Colohoridis | 250397 |
| Felipe Lisandro Judice Godoy | 198306 |
| João Emílio Ferreira | 247184 |
| Tomás Menconi Petriche | 187724 |
