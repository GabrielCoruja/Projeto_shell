#!/bin/bash

echo "ola mundo"

echo "digite a sua idade"
read idade

echo "sua idade e: $idade"

if [ $idade -lt 18 ]
    then
echo "Menor de idade =("
else
echo "Maior de idade =)"
fi


echo "Forneça o nome do arquivo"
read ARQUIVO
# encerra a execução do script, caso o que for fornecido não for um arquivo
[ ! -f "$ARQUIVO" ] && echo "$ARQUIVO : Não é um arquivo" && exit 1
# mostra a quantidade de caracteres do arquivo fornecido
QTD=$(wc -m "$ARQUIVO" | cut -d' ' -f1)
TEMPO1=10
TEMPO2=$[ $QTD * $TEMPO1 ]
echo "O tempo de leitura é" $[ $TEMPO2 / 60 ] " minutos"