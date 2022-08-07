# funções de repetição - família apply

# média das variáveis do data frame listaAtleta

#vetor com o nome dos Atletas
nomeAtleta <- c("Joana", "Maria", "Julio", "Jane", "Fatima", "Joao")

#vetor com a idade dos Atletas
idadeAtleta <- (c(25, 19, 28, 22, 34, 21))

#vetor com salários 
salarioAtleta <- c(5000, 4500, 4000, 3500, 3000, 2500)

# data.frame com base nos vetores
listaAtleta <- data.frame(
  nome = nomeAtleta,       #Nome
  idade = idadeAtleta,   # Idade
  salario = salarioAtleta   # Salário do atleta
)
View(listaAtleta)

apply(listaAtleta[ , -1], 2, mean) # média de todas as variáveis, menos da coluna não numérica 1, no segundo parâmetro, o 2 indica que queremos a média das colunas.
lapply(listaAtleta[ , -1], mean) # retira a coluna 1 não numérica
sapply(listaAtleta[ , -1], mean)   # a sapply simplifica o resultado


sapply(listaAtleta[ , 2:3], hist)
mapply(hist, listaAtleta[ , 2:3], MoreArgs=list(main='Histograma', xlab = 'Valores', ylab = 'Frequência')) # mapply tem a vantagem de aceitar argumentos da função original



