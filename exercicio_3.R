# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 3
df.ex3 <- read_excel("./dados/exercicio3.xls",skip = 1, col_names = c("numero.de.filhos", "familias"), col_types = c( "text","numeric"))

# calculando a mediana
ex3.mediana = median(df.ex3$numero.de.filhos)
print(paste("Médiana das taxas de Familias:", ex3.mediana))

#calcular a moda
mode(df.ex3)
print(mode(df.ex3))

#outra moda
a = table (df.ex3(x))
ex3.moda = moda (df.ex3$numero.de.filhos)



