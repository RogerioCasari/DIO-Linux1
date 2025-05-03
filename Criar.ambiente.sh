#!/bin/bash

echo "Criando diretórios"

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Criando Usuários e atribuindo ao grupo GRP_ADM"
useradd carlos -m -c "Carlos sampaio" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -c "Maria da Graça" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -c "João sampaio" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

echo " Criando usuários e atribuindo ao grupo GRP_VEN"
useradd debora -m -c "Debora Sousa" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Costa" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Saveiro" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

echo " Criando usuários e atribuindo ao grupo GRP_SEC"
useradd josefina -m -c "Josefina Costa" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda cianeto" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio delfino" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Atribuindo permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico


echo " Fim do Script"

