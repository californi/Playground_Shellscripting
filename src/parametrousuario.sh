#!/bin/bash
# Teste de parametro na linha de comnand
echo "Programa que calcula o quadrado de um numero"
quadrado=$[ $1 * $1 ]
echo "O quadrado de $1 eh $quadrado"

# verifica de numero de parametros (nesse caso, assumi-se some um unico parametro)
if [ $# -ne 1 ]
then
   echo "Digite ao menos um valor"
else
   result=$[ $1 * 3 ]
   echo "O triplo de $1 eh $result"
fi
