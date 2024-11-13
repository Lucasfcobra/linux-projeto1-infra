#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando Grupos ...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Criando Users..."

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd maria -m -c "Maria José" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd joao -m -c "João Alves" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd debora -m -c "Debora Cardoso" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd sebastiana -m -c "Sebastiana Oliveira" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd josefina -m -c "Josefina Silva" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd amanda -m -c "Amanda Silveira" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
useradd rogerio -m -c "Rogerio Camargo" -s /bin/bash -p $(echo Senha123 | openssl passwd --stdin)
 
echo "Usuarios criados com sucesso!"

echo "Configurando grupos e permissões..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/ 



echo "Incluindo usuários em grupos ..."


usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Configurações feitas com sucesso !"




 
