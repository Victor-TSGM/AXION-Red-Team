---
tags:
  - cyber/recon
  - whois
  - osint
---
# 🔍 Registro Whois e Contatos Técnicos

> **Resumo:** Extração de dados cadastrais públicos de domínios e rede para mapeamento de responsáveis de nome DNS associados e históricos de registro corporativo.


## 🎯 Ações

- [ ] Criar parses para extrair blocos de ranges de rede diretamente do output Whois do Registro.br.

## 📝 Notas e Decisões

### Utilizade do Whois em OSINT

- O **Whois** é um protocolo de consulta que permite acessar bancos de dados mantidos pelos registradores de domínios (como o *Registro.br* no Brasil ou *ICANN* internacionalmente).

- **Dados extraídos:**
	- **Contatos Técnicos / Administrativos:** Nomes e e-mails corporativos que servem como ponto de partida para engenharia social ou inteligência sobre funcionários.
	- **Servidores DNS Autorizativos:** Revela instantaneamente para onde apontas as ferramentas e enumeração ativa de DNS.
	- **Data de Criação e Expiração:** Domínios muito novos podem indicar infraestruturas de teste ou campanhas temporárias.

### Impacto da LGPD / GDPR no Recon Passivo

- Com o advento das leis de privacidade de dados, a maioria das informações de contato de pessoas físicas foi **resigida por motivos de privacidade** (*Whois Privacy*)

- **Abordagem Ofensiva Atual:** Focar em domínios registradores por *Pessoas Jurídicas (CNPJ)*, onde as regras de ocultação são muito mais frouxas, ou buscas dados históricos em caches antigos do Whois.

## Snippets / Referência Técnica

```bash
# Consulta padrão de domínio naicional (Registro.br traz blocos IP do titular)
whois alvo.com

# filtrando rapidamente apenas servidores DNS
whois alvo.com | grep -i "Name Server"
```

## 🔗 Referências

- [Registro.br (Para escopos nacionais)](https://registro.br/)
- [ICANN Lookup](https://lookup.icann.org/)
- [[Identificacao-ASNs-e-Blocos-IP]]