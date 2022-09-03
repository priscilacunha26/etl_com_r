# Enriquecimento de Dados

pacman::p_load(dplyr, tidyverse)

# Criando data frame com CPF, Nome e Idade

CPF <- c("11111111111", "22222222222", "33333333333", "44444444444")
Nome <- c("Joana", "Maria", "Julio", "Natalicio")
Idade   <- c(83, 77, 63, 62)

Tabela1 <- data.frame(CPF, Nome, Idade)
View(Tabela1)

# Criando data frame com CPF, Cidade e Estado

CPF <- c("11111111111", "22222222222", "33333333333", "44444444444")
Cidade <- c("Itabaiana", "Recife", "São Paulo", "Caruaru")
Estado   <- c("PB", "PE", "SP", "PE")

Tabela2 <- data.frame(CPF, Cidade, Estado)
View(Tabela2)


# Juntando as Tabelas usando a "junção à esquerda", left_join

Tabela1e2 <-  left_join(Tabela1, Tabela2, by = "CPF")
View(Tabela1e2)

