#!/bin/bash

echo "**********Atualizando o Servidor**********"
# Atualizando o servidor
apt-get update
apt-get upgrade -y

echo "**********Instalando Unzip**********"
#Instalando winzip
apt-get install unzip -y

echo "**********Instalando Apache**********"
#Instalando apache
apt-get install apache2 -y

echo "**********Baixando projeto**********"
#Baixando aplicação
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "**********Descompactando projeto**********"
#Descompactando arquivos
unzip main.zip

echo "**********Copiando arquivos para Apache**********"
#Copiando dados da aplicação para o apache
cd /tmp/linux-site-dio-main
cp -R * /var/www/html/

echo "**********Fim da execução**********"

