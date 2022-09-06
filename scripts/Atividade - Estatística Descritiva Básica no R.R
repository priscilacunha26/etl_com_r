# Estatística Descritiva Básica no R

View(USArrests)
## Tabela de frequência absoluta da variável Assault da base USArrests
table(USArrests$Assault)

## Tabela de frequência relativa da variável Assault da base USArrests
prop.table(table(USArrests$Assault))

## Média da variável Murder da base USArrests
mean(USArrests$Murder)

## Mediana da variável Murder da base USArrests
median(USArrests$Murder)

## Separatrizes da variável Murder da base USArrests
quantile(USArrests$Murder, probs=0.75)
quantile(USArrests$Murder, probs=0.10)
quantile(USArrests$Murder, probs=0.95)
boxplot(USArrests$Murder) # boxplot - gráfico que resume as sepatrizes

## Desvio-padrão da variável Murder da base USArrests
sd(USArrests$Murder)
plot(USArrests$Murder)

## Sumário descritivo básico das variáveis
summary(USArrests)

## Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(USArrests[ , c(1:4)])
hist(USArrests$Murder) # histograma - gráfico que permite conhecer a curva dos dados

