---
tags:
  - cyber/offensive
  - firewall
  - bypass
---
# Bypassando Firewall

> **Resumo:** este artigo vai levantar algumas técnicas de fazer um bypass e firewalls restritos. 


## 1. Utilizando uma porta de origem

> **Conceito:** as vezes um firewall está configurado para bloquear todas as conexões de chain INPUT porém pode permitir conexões a partir de uma porta de serviço que podem estar sendo permitido. Exemplo portas: 53 (dns), 80 (http), 443 (https)

```bash
# 1. Exemplo sem porta de origem, o firewall pode filtrar as portas
nmap -v -sS -Pn 192.168.1.200

# 2. Exemplo com porta de origem, o firewall permite entradas geralmente dns, http. Podemos usar isso a nosso favor.
nmap -v -sS -Pn -g 53 192.168.1.200 # -g 53 - especifica source port


# =========== Interagindo com serviço usando porta de origem com natcat
netcat -vn -p 53 192.168.1.200 8081 # -p define uma porta de origem
netcat -vn -p 53 192.168.1.200 8081 > /var/www/html/recon.html # Salva em arquivo
```