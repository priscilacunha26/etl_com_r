# o R como calculadora

binomialnegSimulacao <-rnbinom(500, mu = 5, size = 20) #distribuição

poissonSimulacao <-rpois(500, 5)   #distribuição

hist (binomialnegSimulacao)       #histograma
hist (poissonSimulacao)           #histograma

binomialnegSimulacao + poissonSimulacao # soma as distribuições

poissonSimulacao * binomialnegSimulacao # multiplica as distribuições

# Média
mean (poissonSimulacao)
mean (binomialnegSimulacao)


#Centralização da base de dados 

poissonSimulacaoCentral <- poissonSimulacao - mean (poissonSimulacao)

hist (poissonSimulacao)
hist(poissonSimulacaoCentral)

binomialnegSimulacaoCentral <- binomialnegSimulacao - mean (binomialnegSimulacao)

hist(binomialnegSimulacao)
hist(binomialnegSimulacaoCentral)

