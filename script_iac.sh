#!/bin/bash

echo "Iniciando criação de grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de grupos concluída!"

echo "Iniciando criação de  Diretórios ..."

mkdir publico
chmod 777 publico

mkdir adm
chown root:GRP_ADM /adm
chmod 770 adm

mkdir ven
chown root:GRP_VEN /ven
chmod 770 ven

mkdir sec
chown root:GRP_SEC /sec
chmod 770 sec

echo "Criação de diretórios concluída"

echo "Iniciando criação de usuários ..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Criação de usuários concluída"

echo "Fim do script"
