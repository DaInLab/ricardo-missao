# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls",skip = 1, col_names = "salarios", col_types = c("numeric"))

#aqui tem comandos e tutoriais, consulta - https://www.tutorialspoint.com/r/r_mean_median_mode.htm

freq <- table(df.ex4$col_names , "salarios", col_types = c("numeric"))

# calculando a mediana
ex4.mediana = median(df.ex4$salarios)
print(paste("Médiana das taxas de juros:", ex4.mediana))

# gráfico para representar os valores é o do "boxplot"!
boxplot(df.ex4)



