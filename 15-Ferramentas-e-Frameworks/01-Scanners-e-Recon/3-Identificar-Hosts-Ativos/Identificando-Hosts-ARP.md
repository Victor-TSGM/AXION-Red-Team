---
tags:
  - hosts-recon
  - cyber/recon
  - arping
---
# Identificando hosts na rede interna com ARP

> **Resumo:** vamos aprender como identificar hosts na rede interna que não respondem a *ICMP echo request* devido a alguma regra de firewall. Nesse caso podemos nos aproveitar do protocolo ARP e forçar a resposta do host para resolução de MAC


# Ações

- [ ]  Criar script automatizado para identificar hosts na rede com ARP

# Referência Técnica

**arp-scan**

`arp-scan -L` isso já envia ARP para todos os hosts na rede e retorna a lista

**arping**
- Essa ferramenta não vem nativa no Linux, necessário instalação

```bash
# Enviando um ARP request informando o IP, irá enviar um arp com mac broadcast e retornara se o host responder.
arping -c 1 192.168.1.200

# Enviando para vários hosts na rede
for ip in $(seq 1 254); do arping -c 1 192.168.1.$ip | grep "60 bytes"; done
```