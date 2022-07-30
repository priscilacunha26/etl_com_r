# análise da base de dados iris

View(iris) # visualizar a base de dados

summary(iris) # sumarizar a base de dados

plot(iris) # conjunto de gráficos de base de dados

regressaoIris <- lm(Sepal.Length ~ Species + Petal.Length , iris)

summary(regressaoIris)

# Análise da Base de Dados USArrests

View(USArrests)
summary(USArrests)
plot(USArrests)
regressaoUSArrests <- lm(Rape ~ Assault + Murder + UrbanPop, USArrests)
summary(USArrests)

