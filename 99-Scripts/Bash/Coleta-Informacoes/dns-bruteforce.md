---
aliases:
tags:
  - brute-force
  - dns-brute-force
  - info-gethering
  - domain-name
---
___
# DNS Brute force 

> **Idéia:** aplicar um brute force nos subdominios de um dominio
> Aplicar conceitos vistos em [DNS Bruteforcing](DNS-Bruteforcing-para-Cloud)

```
#!/bin/bash

echo -e "\e[32m=================================================\e[1m"
echo -e "\e[32m========== AXION SECURITY - DNS ZONE ============\e[1m"
echo -e "\e[32m=================================================\e[1m"

if [ $1 == " " ]; then
        echo -e "\e[32mModo de uso: ./dns-bruteforce.sh <domain> <worldlist.txt>\e[1m"
else

        for word in $(cat $2); do
                host $word.$1 | egrep -v NXDOMAIN
        done; 

fi;

```
