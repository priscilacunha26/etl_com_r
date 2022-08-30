library (dplyr)

Marca <- c("Fiat", "Fiat", "Fiat", "Ford", "Ford", "Honda")
Carro <- c("Argo", "Argo", "Cronos", "Fiesta", "Ecosport", "Civic")
Ano   <- c(2018, 2019, 2019, 2020, 2019, 2019)
Preço <- c(44000, 48000, 56000, 52000, 75000, 99000)

Tabela <- data.frame(Marca, Carro, Ano, Preço)

View(Tabela)
str(Tabela)

#Sumários

count(Tabela, Marca)

#Sumários com Agrupamentos

Tabela %>% group_by(Carro) %>% summarise(avg = mean(Preço))

### Transformação de casos

# Seleção de Casos

Tabela %>% filter(Ano == 2019)

# Ordenar casos

arrange(Tabela, Preço) # ascendente
arrange(Tabela, desc(Preço)) # descendente

### Transformação de Variáveis

# Seleção de colunas

Tabela %>% select(Carro)
Tabela %>% select(Carro) %>% arrange(Preço)

# Novas colunas

Tabela %>% mutate(Razão = Preço / Ano)





