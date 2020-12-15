#!/bin/bash
# Testando strings
nome=bento
if [ $USER = $nome ]
then
   echo "Ola $nome"
fi

fruta=morango
if [ $fruta != laranja ]
then
   echo "a fruta nao eh larango, eh $fruta"
else
   echo "a fruta eh $fruta"
fi

var1=abacate
var2=''
if [ -n $var1 ]
then
   echo "variavel nao esta vazia, contem o valor $var1"
else
   echo "variavel esta vazia"
fi
   
if [ -z $var2 ]
then
   echo "Variavel esta vazia"
else
   echo "Variavel nao esta vazia"
fi
