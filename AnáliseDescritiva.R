#Instalando bibliotecas
install.packages("ggplot2")
install.packages("pacman")
install.packages("dplyr")


rm(list = ls())
library(readxl)
library (ggplot2)
library(dplyr)
library(pacman)

#Setando diretório e carregando banco de dados
setwd("D:/Backup Vitin/Tudo/Facul/7o Semestre/Projeto UC/Análise Descritiva")
dados <- read.csv("D:/Backup Vitin/Tudo/Facul/7o Semestre/Projeto UC/Análise Descritiva/BTC.csv")
View(dados)

#Filtrando datas
dados_filtrado <- slice(dados, 1712:2443)

#Listando variável target e calculando média
dados_filtrado$Close
mean(dados_filtrado$Close)

#Calculando média das colunas restantes
mean(dados_filtrado$Open)
mean(dados_filtrado$High)
mean(dados_filtrado$Low)
mean(dados_filtrado$Adj.Close)
mean(dados_filtrado$Volume)

#Testando gráfico de preço sem datas filtradas
ggplot(data = dados)+
  geom_line(mapping=aes(x=Date, y=Close, group=1))

#Testando gráfico de preço com datas filtradas
ggplot(data = dados_filtrado)+
  geom_line(mapping=aes(x=Date, y=Close, group=1))

#Testando gráfico de volume
ggplot(data = dados_filtrado)+
  geom_line(mapping=aes(x=Date, y=Volume, group=1))

#Calculando estatísticas da variável target
summary(dados_filtrado$Close)

#Calculando estatísticas das colunas restantes
summary(dados_filtrado$Open)
summary(dados_filtrado$High)
summary(dados_filtrado$Low)
summary(dados_filtrado$Adj.Close)
summary(dados_filtrado$Volume)

#Calculando variancia da variável target
var(dados_filtrado$Close)

#Calculando variancia das colunas restantes
var(dados_filtrado$Open)
var(dados_filtrado$High)
var(dados_filtrado$Low)
var(dados_filtrado$Adj.Close)
var(dados_filtrado$Volume)

#Calculando desvio padrão da variável target
sd(dados_filtrado$Close)

#Calculando desvio padrão das colunas restantes
sd(dados_filtrado$Open)
sd(dados_filtrado$High)
sd(dados_filtrado$Low)
sd(dados_filtrado$Adj.Close)
sd(dados_filtrado$Volume)

#Gráfico de dispersão
ggplot(dados_filtrado) +
  geom_point(aes(x = Date, y = Close))







