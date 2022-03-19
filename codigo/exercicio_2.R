# Instalando biblioteca readxl para importar para o R arquivos com extensÃ£o .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 1
#df.ex2 <- read_excel("C:/Users/Takahashi dos Anjos/Documents/UNESP/IEAD-2022/joao-pedro-de-souza-bueno/dados/exercicio2.xls",skip = 1, col_names = "Casas", col_types = c("numeric"))
df.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "Casas", col_types = c("numeric"))

# Tabelas de Frequencia
ex2.fabs<-table(df.ex2$Casas) #Frequencia absoluta
ex2.fabs

ex2.fr<-100*prop.table(ex2.fabs) #Frequencia relativa
ex2.fr

ex2.facum<-cumsum(ex2.fr) #Frequencia acumulada
ex2.facum

#Adiciona linhas de total
ex2.fabs<-c(ex2.fabs,sum(ex2.fabs)) #ex2.fabs recebe os valores de ex2.fabs e um valor adicional da soma
ex2.fe<-c(ex2.fr,sum(ex2.fr)) #ex2.fr recebe os valores de ex2.fr e um valor adicional da soma
ex2.facum<-c(ex2.facum,NA) #ex2.facum recebe os valores de ex2.facum e um valor adicional em branco
names(ex2.fabs)[40]<-"Total" #adiciona coluna total

tabela<-cbind (ex2.fabs,ex2.fr,ex2.facum) #Combina todos os elementos criados em uma tabela
tabela

# calculando a media
ex2.media <- mean(df.ex2$Casas)
print(paste("Média dos numeros das Casas:", ex2.media))

# calculando a mediana
ex2.mediana = median(df.ex2$Casas)
print(paste("Mediana dos numeros das Casas:", ex2.mediana))

# calculando a moda usando funcao

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

ex2.moda <- getmode(df.ex2$Casas)
print(paste("Moda dos numeros das Casas:", ex2.moda))


#calculando a amplitude
range(df.ex2$Casas)
ex2.amplitude<-diff( range(df.ex2$Casas) )
print(paste("Amplitude dos numeros das Casas:", ex2.amplitude))

#variancia
ex2.variancia<-var(df.ex2$Casas)
print(paste("Variancia dos numeros das Casas:", ex2.variancia))

#desvio padrão
ex2.desvio<-sd(df.ex2$Casas)
print(paste("Desvio padrao dos numeros das Casas:", ex2.desvio))

#graficos
boxplot(df.ex2$Casas)
abline(a = ex2.media, b = 0L, h = NULL, v = T)
abline(a = ex2.mediana, b = 0L, h = NULL, v = T)
abline(a = ex2.moda, b = 0L, h = NULL, v = T)
abline(a = ex2.amplitude, b = 0L, h = NULL, v = T)
abline(a = ex2.variancia, b = 0L, h = NULL, v = T)
abline(a = ex2.desvio, b = 0L, h = NULL, v = T)