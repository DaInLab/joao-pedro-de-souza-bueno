# Instalando biblioteca readxl para importar para o R arquivos com extensÃ£o .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
library(readxl)


alt = read_excel("./dados/exercicio8.xls", col_types = c("numeric"))
alt <- as.matrix(alt)

class <- seq(1.5, 2, by=0.1)

distrib_frequencia <- transform(table(cut(alt, class)))
colnames(distrib_frequencia) = c("Altura", "Frequência")
print(distrib_frequencia)

hist(alt, breaks=class, main="Hist de altura dos Pacientes", xlab="Altura", col="blue")