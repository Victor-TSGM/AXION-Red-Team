---
aliases:
  - shodan
tags:
  - shodan
  - info-gethering
  - mapeamento-iot
  - iot
---
# Shodan

> **O que é de forma simple:** uma ferramenta que varre a internet e traz todos os dispositivos online na internet, seja games, IoT, roteadores, etc...

## Operadores

- `hostname`:  busca no site especificado
- `os:` busca por sistema operacional
- `port:` busca por porta
- `net:` busca por rede
- `country:` busca por país
- `city:` busca por cidade
- `geo:` busca por geolocalização
- `org:` busca por uma organização
- `"":` busca por algum termo

## Como usar API Shodan

> **1. Instalar shodan:** pip install shodan
> **2. Pegar API key do shodan:** na pagina do shodan em accounts
> **3. Iniciar:** `shodan init <api-key>`


## Queries 

**Busca simples: 

> `shodan search --fields ip_str,org,port,hostnames country:br port:445 contabilidade`

**Informações de um host:** traz informações até sobre vulnerabilidades possíveis CVEs
 
 >`shodan host <ip>

**Busca por dominio:**

> `shodan domain businesscorp.com.br`

**Download da busca para um arquivo:**

> `shodan download tanque port:10001 tanque country:br`
>   - salva o resultado no arquivo tanque.json.gz

**Parse no arquivo baixado:**

> `shodan parse --fields ip_str,port,org,hostnames --separator , tanque.json.gz`
> - Filtra as informações e separa por virgula (,)