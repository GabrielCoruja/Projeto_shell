#!/bin/bash


echo "Forneça o nome do arquivo"
read ARQUIVO
# encerra a execução do script, se não for um arquivo
[ ! -f "$ARQUIVO" ] && echo "$ARQUIVO : Não é um arquivo" && exit 1
# mostra a quantidade de caracteres do arquivo fornecido
QTD=$(wc -m "$ARQUIVO" | cut -d' ' -f1)
# Calcula o tempo por tempo de leitura
echo "O tempo de leitura é aproximadamente " $[$[ $QTD / 10 ] $NUM2 / 60 ] " minutos"