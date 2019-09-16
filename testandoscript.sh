#!/bin/bash

DOMAIN=$1
DOMAIN_REGEXP="[Aa-zZo-9]+(\.[Aa-zZ0-9]+)+"

if [ -z $DOMAIN ]
then
echo "ops, cade o dominio? :thinking:"
else
if [[ $DOMAIN =~ $DOMAIN_REGEXP ]]
then
whois $DOMAIN > "$DOMAIN.info"
else
echo "ops, argumento invalido!"
fi
fi
