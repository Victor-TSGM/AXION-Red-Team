---
tags:
  - cyber/recon
  - route
  - traceroute
---
# Mapeamento de Rede e Rotas

> **Resumo:** mapeamento de rota utilizando *ping* e *traceroute* manipulando TTL (-m max-ttl, e -f start ttl) e Protocolo (-I imcp, -T tcp, -U udp).

## Ações

- [ ] Talvez criar script automatizado para buscar equipamentos de borda


## Notas

* **Traceroute:** Ferramenta utilizada para traçar a rota de um pacote até seu destino, ele mostra todos os saltos (roteadores) que o pacote atravessa até chegar ao destino, a cada salto é decrementado um na vida util TTL do pacote.


## Referência Técnica

**traceroute**

```bash
# Comandos úteis para traceroute

# 1. Controlar o número de saltos (TTL)
traceroute <alvo> -m 20 # Limita a 20 saltos

# 2. Iniciar a partir de um salto específico
traceroute <alvo> -f 16 # inicia a traçagem de rota a partir do salto 16

# 3. Informar um protocolo diferente do padrão (UDP) para o pacote
traceroute <alvo> -I # ICMP
traceroute <alvo> -T # TCP
traceroute <alvo> -T -p 80 #TCP na porta 80
traceroute <alvo> -U # UDP utilizando porta 53

```

**ping**

```bash
# Comandos de ping úteis

# 1, Enviar apenas um pacote ao alvo, util para calcular TTL
ping -c 1 <alvo>

# 2. Enviar com limite de TTL, util para descobrir eq de borda
ping -c 1 -t 23 # A resposta mostra o ip de quem está no 23 salto

```

