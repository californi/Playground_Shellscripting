#!/bin/bash
# Ler valore de uma lista, declara no prorio comando for
for valor in pastel pizza esfiha 'pao de queijo'
do
   echo Adoro $valor
done

# Arquivo arq1 contem uma lista de nomes, um
# por linha, incluindo nomes compostos.
arquivo=/home/bento/arq1
IFSOLD=$IFS
IFS=$'\n'

for nome in `cat $arquivo`
do
  echo "O nome eh: $nome"
done
IFS=IFSOLD

# Iterando por todos os itens de um diretorio
for item in /home/bento/*
do
   if [ -d "$item" ]
   then
   	echo "o item $item eh um diretorio"
   elif [ -f "$item" ]
   then
   	echo "O item $item eh um arquivo"
   fi
done


# Tentando o while
var=100
while [ $var -gt 0 ]
do
   echo $var
   var=$[ $var - 1 ]
done

# Testando a estrutura until
var=50
until [ $var -eq 0 ]
do
   echo $var
   var=$[ $var - 2 ]
done



# Testando estrtura estilo C
for (( i = 1; i <= 15; i++ ))
do
   echo "Numero: $i"
done
