#!/bin/bash

#https://get.docker.com/   shell para instalar o docker
# Um proximo passo seria gerar o dockerfile (ou colocar o Dockerfile junto com o git)
# Caso não tenha o docker, pode-se utilizar uma instalação como a disponível acima
# Deve-se ter uma key de ssh da conta git logada
# Deve-se informar uma nova porta como parâmetro

if [ $# -ne 1 ]
then
   echo "Digite ao uma porta não alocada anteriormente (e.g. 8081)"
else
    if [ -d dox ]
    then
        echo "Diretorio dox ja existe. Removendo"   
        rm -rf dox  
    fi

    echo "Clonando dox"
    git clone git@github.com:uknbr/dox.git  

    cd dox
    mv amdocs.html index.html
    cd ..

    # creating the image
    sudo docker build -t html-server-image:v1 .
    sudo docker run -d -p $1:80 html-server-image:v1  

    echo "Verificar aplicacao dox em localhost:$1"
fi
