#!/bin/bash
# Testar comparações compostas.
# Verificar se o usuario logado atualamente 
# eh o bento e se tem persmissao de escrita
# no seu arquivo .bashrc
if [ $USER = bento ] && [ -w $HOME/.bashrc ]
then
   echo "O usuario $USER tem permissao para alterar o arquivo"
else
   echo "O usuario bento nao pode alterar o arquivo agora"
fi
