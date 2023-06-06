#!/bin/bash

echo "Atualizando o servido..."
apt-get update
apt-get upgrade -y

echo "Instalando o servidor Apache2..."
apt-get install apache2 unzip wget -y

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."
unzip main.zip

echo "Copiando arquivos para a pasta padrão do servidor Apache..."
cd linux-site-dio-main
cp -R * /var/www/html