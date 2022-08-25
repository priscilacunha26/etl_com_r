### LEITURA


install.packages('microbenchmark')

# carregando microbenchmark na sessão

library (microbenchmark)


# exporta em formato nativo do R
saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

# exporta em formato tabular (.csv) - padrão para interoperabilidade
write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv")

# compara os dois processos de exportação, usando a função microbenchmark

microbenchmark (a <-saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds"), b <- write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv"), vezes = 30L)

microbenchmark (a <-readRDS('bases_tratadas/sinistrosRecife.rds'), b <- read.csv2('bases_tratadas/sinistrosRecife.csv', sep = ';'), vezes = 10L)


#forma adicional de exportação de dados em formato .csv
write.table(sinistrosRecifeRaw, file = "bases_tratadas/sinistrosRecife2.csv")

# compara os dois processos de exportação, usando a função microbenchmark

microbenchmark(a <- write.table(sinistrosRecifeRaw, file = "bases_tratadas/sinistrosRecife2.csv"), b <- write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv"), times = 10L)

