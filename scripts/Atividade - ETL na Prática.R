# carrega a base de sinistros de transito do site da PCR



sinistrosRecife2019Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/3531bafe-d47d-415e-b154-a881081ac76c/download/acidentes-2019.csv', sep = ';', encoding = 'UTF-8')

sinistrosRecife2020Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/fc1c8460-0406-4fff-b51a-e79205d1f1ab/download/acidentes_2020-novo.csv', sep = ';', encoding = 'UTF-8')

sinistrosRecife2021Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/2caa8f41-ccd9-4ea5-906d-f66017d6e107/download/acidentes_2021-jan.csv', sep = ';', encoding = 'UTF-8')


# número de variáveis não coincide, é preciso remover as colunas excedentes
# nomes das variáveis não coincidem, é preciso uniformizar


sinistrosRecife2020Raw2 <- subset(sinistrosRecife2020Raw,select = -c(descricao)) # remove coluna ausente nos dados de 2021

sinistrosRecife2019Raw2 <- subset(sinistrosRecife2019Raw,select = -c(endereco_cruzamento,
                                                                     numero_cruzamento,
                                                                     referencia_cruzamento,
                                                                     descricao)) # remove colunas

# Instala pacote necessário
if(!require(dplyr)) install.packages("dplyr") # Read Data Stored by 'Minitab', 'S', 'SAS', 'SPSS', 'Stata',


sinistrosRecife2019Raw2 <- rename (sinistrosRecife2019Raw2, data = DATA)



# junta as bases de dados com comando rbind (juntas por linhas)

sinistrosRecifeRaw <- rbind(sinistrosRecife2019Raw2, sinistrosRecife2020Raw2, sinistrosRecife2021Raw)

# observar a estrutura dos dados
str(sinistrosRecifeRaw)

# modifica a coluna situacao de texto para fator
sinistrosRecifeRaw$situacao <- as.factor (sinistrosRecifeRaw$situacao)


# exporta em formato nativo do R
saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

# exporta em formato tabular (.csv) - padrão para interoperabilidade
write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv")

