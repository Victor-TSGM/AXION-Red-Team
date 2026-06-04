---
aliases:
tags:
  - info-gethering
  - dns
  - dns-brute-force
  - domain-name
---
___
# Reverse DNS BruteForce

>**Resumo:** ao invés de fazer brute fornce nos nomes de dominio, fazemos pelo ip do alvo.
>Quando obtemos o bloco de IP do alvo podemos varrer em busca de dominios em cada um dos ips dentro do bloco

```bash
#!/bin/bash

echo -e "\e[32m=================================================\e[1m"
echo -e "\e[32m======== AXION SECURITY - REV DNS RECON =========\e[1m"
echo -e "\e[32m=================================================\e[1m"

if [ $1 == " " ]; then
        echo -e "\e[32mModo de uso: ./reverse-dnsrecon.sh <target-ip>/e[1m"
else

        for ip in $(seq 1 254);do
                host -t ptr $1.$ip | egrep -v NXDOMAIN
        done;

fi

```