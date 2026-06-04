---
tags:
  - osint
  - recon
  - asn
  - cyber/recon
---
___
# 🗺️ Identificacao de ASNs e Blocos de IP

**Resumo:** Metodologia para delimitação de escopo físico e lógico de uma organização na internet através de identificação de **Sistemas Autônomos (ASN)** e seus respectivos **blocos CIDR.**

___
##  🎯 Ações

- [ ] Mapear todos os ASNs de provedores Cloud para fins de exclusão de escopo em testes focados
- [ ] Desenvolver automação que converta ASN em lista de blocos de IP limpa para input no Nmap.
 
___
##  📝 Notas e Decisões

### O que é um ASN (Aautonomous System Number)?

* Um **Sistema Autônomo (AS)** é uma coleção de redes IP conectadas e gerenciadas por um ou mais operadores de rede (geralmente grandes empresas, ISPs ou universidades) que possúem uma política de roteamento clara e comum com a internet através do protocolo [BGP](Protocolos-Roteamento-OSPF-e-BGP)

* Cada AS recebe um identificador numérico exclusivo conhecido como **ASN**

### Importância estratégica no Recon

- Descobrir o ASN corporativo do alvo é o metodo mais definitivo para encontrar a **infraestrutura própria** da empresa.

- Impede que o analista de segurança perca tempo testando IPs que pertencem a serviços SaaS de terceiros ou hospedagens compartilhadas temporárias, focando no verdadeiro ecossistema de servidores do alvo.

### Blocos de IP

- A consulta do ASN retorna faixas completas de endereçamento utilizando a notação **CIDR** (ex: 192.168.1.0/24), É a partir dessas faixas que o escopo de varredura ativa (*port scanning*) é consolidado.


___
## Snippets / Referência Técnica

```bash
# Consultando blocos de IP associados a uma ASN específico via servidor RADB
whois -h whois.radb.net -- '-i origin AS12345' | grep -E "route:" | awk '{print $2}'

# Identificando a qual ASN e empresa um IP específico pertence
whois -h whois.cymru.com "<ip-alvo>"
```

### Scripts / Automação

___


## 🔗 Referências

-  [ASN e BGP: tudo o que você precisa saber](https://sagenetworks.com.br/asn-e-bgp/)
- [Hurricane Electric BGP Toolkit](https://bgp.he.net/)
- [[Registro-Whois-e-Contatos-Tecnicos]]
-  [Maltego](https://www.maltego.com/)
-  [Shodan]()