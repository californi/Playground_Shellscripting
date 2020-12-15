#!/bin/bash
# Verificar se o diretório Home do usuário existe e mostrar seu conteudo
if [ -d $HOME ]
then
   echo "Seu diretorio home existe e o conteudo eh: "
   cd $HOME
   ls -l
else
   echo "Diretoria nao encontrado"
fi

if [ -e $HOME ]
then
   echo "O objeto existe. Vamos ver se eh arquivo ou diretorio"
   if [ -f $HOME ]
   then
      echo "Eh um arquivo"
   else
      echo "Eh um diretorio"
   fi
else
   echo "Objeto nao encontrado"
fi


# Verifica persmissao de leitura em um arquivo
arquivo=/etc/passwd
# testar se arquivo existe
if [ -f $arquivo ]
then
   #existe, testar se o usuario tem permissao de leitura
   if [ -r $arquivo ]
   then
   	echo "Mostrando 5 ultimas linhas"
   	tail -5 $arquivo
   else
   	echo "Sem permissao de leitura"
   fi
else
   echo "Arquivo nao encontrado"
fi
