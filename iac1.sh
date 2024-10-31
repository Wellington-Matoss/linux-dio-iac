#!/bin/bash

echo "Criando diretórios..."

mkdir /teyvat
mkdir /arconte
mkdir /gaso
mkdir /cute

echo "Criando grupos de usuários..."

groupadd GRP_ARC
groupadd GRP_GAS
groupadd GRP_CUT

echo "Criando usuários..."

useradd furina -m -s /bin/bash -G GRP_ARC
echo "furina:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd raiden -m -s /bin/bash -G GRP_ARC
echo "raiden:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd murata -m -s /bin/bash -G GRP_ARC
echo "murata:$(openssl passwd -6 20152016)" | sudo chpasswd

useradd clorinde -m -s /bin/bash -G GRP_GAS
echo "clorinde:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd sara -m -s /bin/bash -G GRP_GAS
echo "sara:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd xilonen -m -s /bin/bash -G GRP_GAS
echo "xilonen:$(openssl passwd -6 20152016)" | sudo chpasswd

useradd chiori -m -s /bin/bash -G GRP_CUT
echo "chiori:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd sayu -m -s /bin/bash -G GRP_CUT
echo "sayu:$(openssl passwd -6 20152016)" | sudo chpasswd
useradd kachina -m -s /bin/bash -G GRP_CUT
echo "kachina:$(openssl passwd -6 20152016)" | sudo chpasswd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ARC /arconte
chown root:GRP_GAS /gaso
chown root:GRP_CUT /cute

chmod 770 /arconte
chmod 770 /gaso
chmod 770 /cute
chmod 777 /teyvat

echo "Finalizdo!"
