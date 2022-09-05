# Simulações e Sequências

# seta a semente aleatória de geração de dados
# usando a função addTaskCallback deixamos a set.seed fixa, rodando no back

tarefaSemente <- addTaskCallback(function(...) {set.seed(123);TRUE}) # atribui a tarefa à variável tarefaSemente
tarefaSemente # chama a tarefaSemente


# distribuição normal simulada
distNormal <- rnorm(300) # usa a função rnorm para criar uma distribuição normal, indicando o total de casos

summary(distNormal) # sumário da distNormal

# distribuição binomial simulada
distBinominal <- rbinom(300, 1, 0.8) # rbinom para criar distribuição binominal, indicando casos, tamanho e probabilidade

# sequências
index <- seq(1, length(distNormal)) # vetor com índex dos dados, usando a função length para pegar o total de casos
index2 <- seq(1:300)

# Remoção da tarefa criada com a função removeTaskCallback
removeTaskCallback(tarefaSemente)

