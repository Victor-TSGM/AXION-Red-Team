---
tags:
  - info-gethering
  - dns-brute-force
  - script-dns
  - dns-recon
---
___
# 🎯 Ações Pendentes
- [x] Implementar saída em formato JSON no script próprio para integração futura.
- [x] Criar uma wordlist customizada.

# 📝 Notas e Decisões

## Mecânica do Subdomain Takeover

> O ataque ocorre quando um subdomínio possui um registro **CNAME** apontando para um serviço externo (ex: `cliente.s3.amazonaws.com`) que foi deletado ou desativado pelo dono, mas o apontamento DNS continua ativo.

> Se o provedor permitir a reconexão daquele nome por qualquer conta, o atacante pode assinar o serviço na nuvem com o mesmo identificador, assumindo o controle do subdomínio legítimo da empresa.

> **Impacto:** Permite furar políticas de cookies de sessão, roubar credenciais e aplicar phishing altamente convincente sob um domínio confiável.

**Utilizando comando host para identificar CNAMES**
``host -t cname app.axionconsultoria.com`

### Script

- [[DNS-Takeover-Recon]]
- [[]]
___
## DNS Recon com  Brute Force DNS

> **Resumo rápido:** quando não conseguimos mapear os subdominios de um servidor de domínio pela [transferencia de zona dns](DNS-Estrutura-Zonas-e-Transferencia), podemos usar alguma ferramenta para fazer um brute force nos subdominios com um wordlist.
> A lógica é testar varias combinações de subdominio.dominio.com.br

### Script

- [dns-brutefoce](dns-recon-bruteforce.md)
___
## Reverse DNS Brute Force

> **Resumo rápido:** quando sabemos qual o bloco de ip do alvo (pode ser consultado com ferramentas [whois](Registro-Whois-e-Contatos-Tecnicos)) e depois utilizar a ferramenta [host] com o registor PTR.
> `host -t ptr <target-ip>` se tiver algum domain name que corresponde ao ip informado ele retorna o nome.

### Script
- [reverse-dnsrecon](reverse-dnsrecon)

___

# Referencias

- [[Identificacao-ASNs-e-Blocos-IP]]
- [[DNS-Estrutura-Zonas-e-Transferencia]]

___

# Ferramentas

> [host]
> [dig] -> semelhante ao host
> [dnsenum]
> [dnsrecon]
> [fierce]

