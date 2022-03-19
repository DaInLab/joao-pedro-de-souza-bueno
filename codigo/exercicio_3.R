# Importando o arquivo do exercÃ­cio 3
if(!("xlsx") %in% installed.packages()) install.packages("xlsx", type = "source") 
library(xlsx)
#eb = read.xlsx("C:/Users/Takahashi dos Anjos/Documents/UNESP/IEAD-2022/joao-pedro-de-souza-bueno/dados/exercicio3.xlsx",encoding =  "UTF-8", sheetName = "Sheet1")
eb = read.xlsx("./dados/exercicio3.xlsx",encoding =  "UTF-8", sheetName = "Sheet1")
head(eb)

# calculando a mediana
ex3.mediana = median(eb$Familias)
print(paste("Mediana do numero de filhos:", ex3.mediana))

# calculando a moda

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

ex3.moda <- getmode(eb$Familias)
print(paste("Moda do numero de filhos:", ex3.moda))

#grafico

plot(eb$Numero.de.filhos, eb$Familias)