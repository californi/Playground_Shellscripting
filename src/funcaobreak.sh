#!/bin/bash
# Testando comando break em shell scripting

for num in 1 2 3 4 5 6 7 8 9 10
do
   if [ $num -eq 6 ]
   then
   	break
   fi
   	
   echo "Numero: $num"
done
echo "Laco for finalizado"
