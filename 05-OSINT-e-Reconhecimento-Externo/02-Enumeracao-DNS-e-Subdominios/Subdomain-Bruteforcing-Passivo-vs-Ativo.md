---
aliases:
tags:
  - cyber/recon
  - dns
  - osint
---
___
# 🔎 Subdomain Bruteforcing: Passivo vs Ativo

> **Resumo:** Técnicas de enumeração de subdomínios divididas entre interações diretas (brute-force ativo) e consultas a bases de dados públicas/históricas (OSINT passivo).

## 🎯 Ações

- [ ] Configurar chaves de API nos gerenciadores de Racon passivo.
- [ ] Desenvolver script em Bash para automatizar a checagem reversa de blocos inteiros.

## 📝 Notas e Decisões

### Enumeração Ativa 

- **DNS Brute Force:** Envio em massa de requisições baseadas em dicionário (*wordlist*) para testar quais nomes respondem com um endereço IP.

- **Reverse DNS Brute Force:** Utilização de ferramentas ou comandos nativos (como `host`  ou `dig`) em um bloco de IPs conhecido para resolver os ponteiros `PTR` e descobrir nomes associados àqueles endereços.

### Enumeração Passiva (Certificate Transparency Logs)

- Toda vez que um certificado SSL/TLS é emitido, ele é obrigatoriamente registrado em um log público.

- Através de plataformas como o **crt.sh**, é possível extrair possivelmente todos os subdomínios históricos criados para uma empresa, sem disparar um único alerta no firewall do alvo.

## Snippets / Referência Tecnica

```bash
# Executando uma consulta de resolução reversa manual com comando host
host 192.168.1.22

# Varredura automatizada rápida de um range usando um loop em bash
for ip in $(seq 1 254);do host 192.168.1.$ip; done | grep -v "not found"
```

- Ferramentas online: [dnsdumpster](https://dnsdumpster.com/) - [securitytrails](https://securitytrails.com/)
- Busca por certificado digital, interessante para ver outros possíveis subdomains: [sslmate](https://sslmate.com/ct_search_api/)

#### Scripts
- [[dns-recon-bruteforce]]
- [[reverse-dnsrecon]]


___
# Referências

-  [Enumeração de subdominios](https://projectdiscovery-io.translate.goog/blog/recon-series-2?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt&_x_tr_pto=tc&_x_tr_hist=true#subdomain-brute-forcing)
- [[Registro-Whois-e-Contatos-Tecnicos]]