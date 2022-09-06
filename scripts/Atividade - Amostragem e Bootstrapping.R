# Amostragem e Bootstrapping


distNormal <- rnorm(5000)

# amostragem sem reposição usando função sample
sample(distNormal, 10, replace = FALSE) 

# amostragem com reposição usando função sample
sample(distNormal, 10, replace = TRUE)

# bootstraping com função replicate
set.seed(412) # agora, não vamos mais usar como tarefa mas como execução ponto a ponto

bootsDistNormal10x <- replicate(10, sample(distNormal, 10, replace = TRUE)) # replicamos 10x a amostra, criando assim um bootstrapping
bootsDistNormal10x

# calculando uma estatística com bootstrapping (10 amostras)

mediaBootsNormal10de10 <- replicate(10, mean(sample(distNormal, 10, replace = TRUE))) # calculamos a média de 10 amostras de 10 casos
mediaBootsNormal50de10 <- replicate(50, mean(sample(distNormal, 10, replace = TRUE))) # calculamos a média de 50 amostras de 10 casos
mediaBootsNormal100de10 <- replicate(100, mean(sample(distNormal, 10, replace = TRUE))) # calculamos a média de 100 amostras de 10 casos

# vamos comparar???
mean(mediaBootsNormal10de10) # media do boostraping 10
mean(mediaBootsNormal50de10) # media do boostraping 50
mean(mediaBootsNormal100de10) # media do boostraping 100
mean(distNormal) # media dos dados originais

