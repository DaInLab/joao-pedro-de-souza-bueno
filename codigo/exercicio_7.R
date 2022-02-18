# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

df.ex7 <- read_excel("./dados/exercicio7.xls")

barplot(df.ex7$Atendimento,
        main = "Nº de atendimentos / área",
        xlab = "Área",
        ylab = "Nº de atendimentos",
        names.arg = df.ex7$Áreas)