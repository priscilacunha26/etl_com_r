# Estruturação

library (data.table)
library (dplyr)

install.packages('tidyverse')
library (tidyverse)

general_data<-fread("https://covid.ourworldindata.org/data/owid-covid-data.csv") # carrega dados de covid19 no mundo

View(general_data)

north_america_countries<-c("Canada", "Mexico", "United States")

north_america <- general_data %>% filter(location %in% north_america_countries)  # filtra casos apenas no vetor

namerica <- north_america %>% group_by(location) %>% mutate (row = row_number()) %>% select (location, new_cases, row) # matriz dos países, agrupando por local, criando uma linha nova com índice e selecionando apenas algumas variáveis

# filtra dados para garantir que todos os países têm mesmo nro de casos

result <- namerica %>% group_by (location) %>% filter (row == max(row))
namerica <-namerica %>% filter (row<=min (result$row)) 
View(namerica)

# Pivota o data frame de long para wide 
namericaWide <-namerica %>% pivot_wider (names_from = row, values_from = new_cases) %>% remove_rownames %>% column_to_rownames(var="location") 

View(namericaWide)
