#! /bin/bash

echo "creating directories"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "creating user groups""
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "creating new users"

useradd carlos -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_SEC
useradd victor -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash p- $(openssl passwd -1 senha123) -G GRP_SEC

echo "changing directories owners and permissions""
chmod root:GRP_ADM /adm
chmod root:GRP_VEN /ven
chmod root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "end"
