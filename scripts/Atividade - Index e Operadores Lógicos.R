#vetor com o nome dos Empregados

nomeEmpregado <- c("Joana", "Maria", "Julio", "Jane", "Fatima", "Joao")
nomeEmpregado[3] #seleciona o nome da 3ª posição
nomeEmpregado[2:4]

#matriz com 3 linhas e 2 colunas

M <- matrix(c(2,4,6,8,10,12), nrow = 3, ncol = 2)
M[ ,2] # Seleciona os elementos da 2ª coluna da matrix M
M[3, ] # Seleciona os elementos da 3ª linha da matrix M
M[3,2] # Seleciona o elemento da 3ª linha e 2ª coluna da matrix M

# data.frames

View(listaEmpregados)
listaEmpregados$salario #Retorna apenas a coluna salario do data.frame listaEmpregados
listaEmpregados[ ,3] #Retorna todas as linhas da coluna salario
listaEmpregados$nome #Retorna apenas a coluna nome do data.frame listaEmpregados
listaEmpregados[ , -2] #Retorna todas as colunas menos a 2ª 

# usando operadores lógicos

bola <- 5
boneca <- 10
carrinho <- 15

bola < carrinho
carrinho < bola
boneca == bola


