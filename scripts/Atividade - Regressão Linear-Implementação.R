# Regressão Linear-Implementação

### CARREGANDO PACOTES ###
pacman::p_load(car, gvlma, lm.beta, lmtest, MASS, sandwich)

View(USArrests)
### REGRESSÃO Assault - BASE USArrests
regUSArrests <- lm(Assault ~ ., data = USArrests) # ESTIMANDO A REGRESSÃO
summary(regUSArrests) # SUMÁRIO DA REGRESSÃO
lm.beta(regUSArrests) # COEFICIENTES PADRONIZADOS

# A variável que não tem * tem que ser retirada. No caso UrbanPop

### Stepwise ###
# A própria máquina faz o trabalho de saber qual variável não se explica e tem que ser retirada. Três Formas:

regUSArrestsBack <- step(lm(Assault ~ ., data = USArrests), direction = 'backward') # de trás pra frente
summary(regUSArrestsBack)
regUSArrestsForw <- step(lm(Assault ~ ., data = USArrests), direction = 'forward') # do início pro fim
summary(regUSArrestsForw)
regUSArrestsBoth <- step(lm(Assault ~ ., data = USArrests), direction = 'both') # nos dois sentidos
summary(regUSArrestsBoth)

### VERIFICAÇÃO DOS PRESSUPOSTOS ###
# normalidade dos resíduos
shapiro.test(residuals(regUSArrests))  # p-value maior que 0,05 os resíduos são normais
plot(regUSArrests, which=1, col=c("blue")) # resíduos x ajuste
plot(regUSArrests, which=2, col=c("red")) # Q-Q Plot
plot(regUSArrests, which=5, col=c("blue"))  # Observações Influentes

#= Correção seria retirar as observações influentes =#

# inflação da variância / multicolinearidade
vif(regUSArrests)
barplot(vif(regUSArrests), main = "VIF Values", horiz = FALSE, col = "steelblue", ylim = c(0,5))
abline(h = 5, lwd = 3, lty = 2)
# Se for maior que 5 significa que a variável estar inflacionada. No caso, nenhuma estar.

#= Correção seria usar apenas uma das variáveis correlacionadas =#

# homocedasticidade (H0 = homocedasticidade)
bptest(regUSArrests) # teste de homocedasticidade, p-value tem que ser maior que 0,05. Ou seja, há homocedasticidade
plot(regUSArrests, which=3, col=c("blue"))  # Scale-Location Plot

#= Correção seria usar estimativas robustas =#
regUSArrests$robse <- vcovHC(regUSArrests, type = "HC1")
coeftest(regUSArrests, regUSArrests$robse)

regRUSArrests <- rlm(Assault ~ . -UrbanPop, data = USArrests)
summary(regRUSArrests)
summary(regUSArrests)

