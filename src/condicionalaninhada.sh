#!/bin/bash
# Teste de if-then aninhado
var1="bento"
var2="rafael"

if ls /$var1
then
   echo "Diretorio do usuario $var1 encontraedo"
elif ls /$var2
then
   echo "Diretorio do usuario $var2 é que foi encontrado"
else
   echo "nenhum dos dois diretorios foi encontrado"
fi
