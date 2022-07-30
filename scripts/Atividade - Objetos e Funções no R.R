# Objetos e Funções no R

vetor <- c(1,2,3,4,5,6,7) #criação de um vetor

vetor2 <- seq(15,30,3) #criação de um vetor com a função seq()

View (iris) #visualizar a base de dados 
summary(iris) #sumarizar a base de dados
plot(iris) #conjunto de gráficos de base de dados

regressaoIris <- lm(Sepal.Length ~ Species + Petal.Length , iris) #criação de um modelo de regressão

summary(regressaoIris)

str(regressaoIris)
