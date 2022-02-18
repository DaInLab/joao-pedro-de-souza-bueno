# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls")

sort (df.ex4)
range(df.ex4)
AT <- ceiling((max(df.ex4)- min(df.ex4)))
AT

k <- nclass.Sturges(df.ex4)
length(df.ex4)

k <- ceiling((sqrt(length(df.ex4))))
k

h <- ceiling(AT/k)
h

infclass <- min(df.ex4)
supclass <- infclass+(k*h)

brk <-seq(infclass,supclass,h)
tabelaDF_salarios<-table(cut(df.ex4$Salários,breaks = brk, right = FALSE))
tabelaDF_salarios

tabelaDFR_salarios <- prop.table(tabelaDF_salarios)
tabelaDFR_salarios

hist(df.ex4$Salários, main="Salarios dos funcionarios do Hospital")
axis(1, at=seq(infclass,supclass,h))
axis(2, at=seq(0,max(tabelaDF_salarios),2))

hist(df.ex4$Salários, main="Salarios dos funcionarios do Hospital")
axis(1, at=seq(infclass,supclass,h))
axis(2, at=seq(0,max(tabelaDFR_salarios),0.05))
