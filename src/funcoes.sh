#!/bin/bash
# funcao em um script do shell

function quadrado {
 read -p "Digite um numero entre 20 e 30: " numero
 echo $[ $numero * $numero ]
}

function mensagem {
  echo "Uma mensagem de funcao"
}

# Chamando a funcao dez vezes usando um contador:
contador=1
while [ $contador -le 10 ]
do
   mensagem
   contador=$[ contador + 1 ]
done

# Outro texto, indicando o fim do script:
echo "Funcoes executada com sucesso"

# atribuindo o valor da funcao a variavel
valor=`quadrado`
echo "O quadrado do numero eh $valor"
