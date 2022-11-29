# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 2
dataframe.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "levantamento_de_casas", col_types = c("numeric"))

# a) Construir a tabela de frequências;
# transformando dados em Vetor
ex2.em.vetor <- c(dataframe.ex2$levantamento_de_casas)

# Aqui estamos criando uma tabela de frequência
ex2.tabela <-table(ex2.em.vetor)

# imprimir a tabela de frequência
ex2.tabela


#b) Calculo das medidas de posição e dispersão;

#b.1) Medidas de Posição
#média
media<-mean(dataframe.ex2$levantamento_de_casas)
media

#mediana 
mediana <- median(dataframe.ex2$levantamento_de_casas)
mediana


#b.2) Medidas de Dispersão
#amplitude (range)
range(ex2.tabela)

#percentis (quantiles) - considerados os três primeiros
Q1 <- quantile(dataframe.ex2$levantamento_de_casas, probs = 0.25)
Q2 <- quantile(dataframe.ex2$levantamento_de_casas, probs = 0.50)
Q3 <- quantile(dataframe.ex2$levantamento_de_casas, probs = 0.75)

#impressão dos percentis
Q1
Q2
Q3

#amplitude interquartil (IQR - interquartile range)
amplitude.interquartil <- Q3 - Q1
amplitude.interquartil

#desvio padrão (sd - standard deviation)
desvio.padrao <- sd(dataframe.ex2$levantamento_de_casas, na.rm = FALSE)
desvio.padrao

#variância
variancia <- var(dataframe.ex2)
variancia


# plus: imprimindo o histograma
hist(ex2.tabela, main="Histograma", xlab="Dados", ylab="Frequência")

#fim
# plus 2
#imprimindo um desenho com poligonos em R


plot(1:10, 1:10, type = "n", ann = FALSE, axes = FALSE)
symbols(5, 5, 2, add = TRUE, inc = FALSE)
symbols(c(4, 6), c(6, 6), c(0.3, 0.3), add = TRUE, inc = FALSE)
points(c(4.041275, 6.086176), c(6.006826, 6.006826), pch = c(44,
                                                               +     44), cex = 4, col = "blue")
points(c(7.022771, 2.997524), c(4.974744, 5.011604), pch = c(41,
                                                               +     40), cex = 7)
segments(4.467296, 3.426621, 5.617553, 3.297611, col = "red")
segments(4.22, 7.1, 5.04, 9, 1)
segments(5.04, 9.01, 5.96, 7.02)
symbols(5.16, 8.97, 0.2, add = TRUE, inc = FALSE, bg = "yellow")
points(4.989172, 4.827304, pch = 94, cex = 3)
points(c(3.49, 3.54, 3.84, 4.07), c(4.71, 4.31, 4.21, 4.6),
         +     pch = 42, col = 5:8)
points(c(5.81, 6.05, 6.41, 6.13), c(4.53, 4.01, 4.18, 4.66),
         +     pch = 42, col = 5:8)

#PS: Black, tem a bandeira do Brasil, vou deixar na proxima, pois nao rodou algumas estrelas corretamente.
