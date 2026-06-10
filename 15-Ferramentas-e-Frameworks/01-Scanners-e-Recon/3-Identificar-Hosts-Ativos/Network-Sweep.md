---
tags:
  - cyber/recon
  - hosts-recon
  - info-gethering
  - recon
  - osint
---


# Network Sweeping

> **Conceito:** mapear toda uma rede, identificar todos os hosts ativos na rede

# Ações

- [ ] Script para identificar todos os hosts ativos em uma rede.


# Referência Técnica

> Nesse exemplo vamos utilizar a ferramenta nmap para identificar hosts ativos na rede e manipular  a saida para filtrar somente as informações interessantes.

```bash
# 1. Identificando hosts e jogando a saída greapable (-G) para um arquivo

nmap -sn 192.168.1.0/24 -oG ativos.txt# -o output -G para saida Grapable

# 2. fazer um grep no arquivo para filtrar apenas os hosts ativos, e jogar somente os ips ativos no arquivo hosts

cat ativos.txt | grep "Up" | cut -d " " -f2 > hosts
cat ativos.txt | grep "Up" | awk -F" " '{print $2}' > hosts

# 3. Fazer uma varredura nos hosts procurando por portas abertas (nesse ex: 80) e jogar wm um arquivo novamente web.txt, para ter informações já mastigadas

nmap -sSV -p 80 --open -Pn -iL hosts -oG web.txt  # V opcional, bom para banner grag

# 4. Fazer o mesmo para outros tipos de serviços alem de web, por exemplo compartilhamento de arquivos

nmap -sSV -p 139,445 --open -iL hosts -oG shares.txt

# 5. Verificar servilos com interfaces administrativas, ssh, telnet, ftp, etc
nmap -sSV -p 21,22,23,3389 --open -iL hosts -oG remote.txt

# 5. Ver hosts com bancos de dados
nmap -sSV -p 3306,1433 --open -iL hosts -oG db.txt

### Verificar portas padroes dos serviços
cat /etc/services 

cat /etc/services | grep "sql" # exemplo para filtrar serviços que são sql
```


