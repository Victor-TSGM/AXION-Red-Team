---
tags:
  - cyber/tools
  - scanner
---
# Ping Sweep

> **Resumo:** técnica que consiste em varrer a rede, seja interna ou externa (identificando blocos de IP), para encontrar hosts ativos.

# Ações

- [ ]  Criar um script que faz um ping sweep mesmo com hosts que não aceitam ICMP

# Referência Técnica

> Basicamente um ping sweep vai fazer um *icmp echo request* em todos os possíveis hosts da rede alvo. 

```bash
# enviar um único pacote icmp echo request
ping -c 1 <ip-alvo>

# enviar ICMP echo request para varios hosts, usando um intervalo de IP
for ip in $(seq 1 254); do ping -c 1 -w 1 192.168.1.$ip | grep "64 bytes" ; done

```

# Observação

> Essa tecnica somente mostra hosts que recebem e respondem o ICMP echo request, se o host tiver firewall que bloqueie icmp não vai encontrar, sendo necessário utilização de outras técnicas como [ARPING]