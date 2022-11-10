#!/bin/bash

echo "Atualizando o servidor Apache e o MySQL..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install mysql-server-8.0 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação Java Web..."

cd /tmp
wget https://github.com/AndreyMDeus/Projeto-Java-Web-JSF/archive/refs/heads/master.zip
unzip master.zip
cd Projeto-Java-Web-JSF
cp -R * /var/www/html/
