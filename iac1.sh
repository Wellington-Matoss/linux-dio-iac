#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ARC
echo "carlos:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd maria -m -s /bin/bash -G GRP_ARC
echo "maria:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd joao -m -s /bin/bash -G GRP_ARC
echo "joao:$(openssl passwd -6 20152016)" | sudo chpasswd

useradd debora -m -s /bin/bash -G GRP_GAS
echo "debora:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd sebastiana -m -s /bin/bash -G GRP_GAS
echo "sebastiana:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd roberto -m -s /bin/bash -G GRP_GAS
echo "roberto:$(openssl passwd -6 20152016)" | sudo chpasswd

useradd josefina -m -s /bin/bash -G GRP_CUT
echo "josefina:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd amanda -m -s /bin/bash -G GRP_CUT
echo "amanda:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd rogerio -m -s /bin/bash -G GRP_CUT
echo "rogerio:$(openssl passwd -6 20152016)" | sudo chpasswd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "IaC Finalizdo!"