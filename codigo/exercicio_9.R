# Instalando biblioteca readxl para importar para o R arquivos com extensÃ£o .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)


salary = read_excel("./dados/exercicio9.xls", col_types = c("numeric"))
salary <- as.matrix(salary)

class <- seq(4, 24, by=2)

distrib_frequencia <- transform(table(cut(salary, class)))
colnames(distrib_frequencia) = c("Faixa salarial", "Frequencia")
print(distrib_frequencia)

hist(salary, breaks=class, main="Histograma dos salarios", xlab="salarios minimos", col="blue")
