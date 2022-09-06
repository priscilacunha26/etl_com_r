# Descoberta

library(funModeling)
library(tidyverse)

glimpse(USArrests) # olhada nos dados
status(USArrests) # estrutura dos dados (missing etc)
freq(USArrests) # frequência das variáveis fator, vemos que não há no nosso caso
plot_num(USArrests) # exploração das variáveis numéricas
profiling_num(USArrests) # estatísticas das variáveis numéricas

