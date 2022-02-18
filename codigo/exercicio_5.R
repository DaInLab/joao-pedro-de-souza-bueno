# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

df.ex5 <- read_excel("./dados/exercicio5.xls")

barplot(df.ex5$`Nº pessoas`,
        main = "Antitérmico preferido",
        xlab = "Marcas",
        ylab = "Número de pessoas",
        names.arg = df.ex5$Marcas)
