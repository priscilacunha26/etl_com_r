### Limpeza


library (data.table)
library (dplyr)
library (tidyverse)

install.packages('funModeling')
library (funModeling) 

general_data <-fread ("https://covid.ourworldindata.org/data/owid-covid-data.csv") # carrega dados de covid19 no mundo

latin_america_countries <-c("Argentina", "Brasil", "Bolívia", "Chile", "Colômbia", "Costa Rica", "Cuba", "República Dominicana", "Equador", "El Salvador", "Guatemala", "Haiti", "Honduras", "México", "Nicarágua", "Panamá", "Paraguai", "Peru", "Uruguai" , "Venezuela") # vetor que identifica países latino-americanos

latin_america <- general_data %>% filter(location %in% latin_america_countries) # filtra casos apenas no vetor

latin_america <- latin_america %>% select (location, new_cases, new_deaths)

status (latin_america) # estrutura dos dados (ausente etc)
freq(latin_america) # frequência das variáveis fator
plot_num(latin_america) # exploração das variáveis numéricas
profiling_num(latin_america) # estatísticas das variáveis numéricas

latin_america %>% filter(new_cases < 0) #novos casos negativos

latin_america <- latin_america %>% filter(new_cases>=0) #retirar novos casos negativos

View(latin_america)

# Remoção dos NA (not available) presentes nos dados com a função na.omit

latin_america_na <-na.omit (latin_america)

View(latin_america_na)

