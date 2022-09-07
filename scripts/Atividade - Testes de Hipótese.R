# Testes de Hipótese

library(data.table)

###  TESTE DE CORRELAÇÃO DE PEARSON (testa a associação entre variáveis numéricas)

View(USArrests)

cor.test(USArrests$Murder, USArrests$Assault)
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05

# p-value = 2.596e-12, ou seja, <= 0.05, então rejeitamos a hipótese nula e aceitamos a hipótese alternativa que há associação entre as variáveis.
# cor = 0.8018733, ou seja, alta e no mesmo sentido.

### TESTE QUI-QUADRADO, TESTE DE FREQUÊNCIAS (testa a associação entre variáveis categórias)

# Mesma coisa só que usando chisq.test, no lugar de cor.test.




