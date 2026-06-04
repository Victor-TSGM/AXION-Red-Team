---
aliases:
  - dns-structure
  - domain-name-system
  - dns-registros
tags:
  - dns
  - domain-name
  - info-gethering
  - axfr
  - cyber/networks
---
___
# DNS: Estrutura, Zonas e  Transferência (AXFR)

**Resumo:** Estudo do funcionamento do protocolo DNS, hierarquia de resolução de nomaes, tipos de registros e o impacto de segurança causado por falhas de configuração em transferências de zona.

___
### Hierarquia e Estrutura do DNS

> ***Zonas DNS**: Uma zona é uma parte distinta do espaço de nomes de dominio que é delegado a uma entidade ou administrador especifico. Ela contém todos os apontamentos daquele escopo.
>
> **Tipos de Servidores:** 
	* **Master (Primário):** Onde as alterações e os registros originais da zona são configurados.
	* **Slave (Secundário):** Servidor que mantém uma cópia idêntica da zona para fins de redundância e balanceamento de carga

___
### Mecanismo AXFR (Zone Transfer)

> **Transferência de Zona:** é o processo utilizado pelos servidores slaves para replicar o banco de dados de uma zona a partir do servidor master.
>
> **Risco ofensivo:** Se o servidor master permitir requisições AXFR vindas de **qualquer endereço IP** (anônimo) um atacante poderá baixar o mapa completo da infraestrutura da empresa com um único comando, ignorando a necessidade de brute-force.

___
### Mapeamento técnico de Registros

>- **A / AAAA:**  Apontam o nome diretamente para endereços IPv4 / IPv6
>
>- **NS (Name Server):** Identifica os servidores que detêm a autoridade de resposta pelo domínio.
>
>- **MX (Mail Exchange):** Servidores responsáveis pelo trafego de e-mail do alvo.
>
>- **TXT:** Utilizado para anotações de texto livre, Crítico para a validação de políticas contra   falsificação de e-mail como **SPF (Sender Policy Framework)**

___
### SPF - Sender Policy Framework

> **SPF** é basicamente identificar quais servidores estão autorizados a enviar emails em nome do seu dominio.
>
> **Risco ofensivo:**  Configurações de SPF malconfiguradas permite ao atacante enviar emais utilizando dominio da empresa, por exemplo @businesscorp.com.br
> - **?all:** vunlnerável, pois permite que eu envie emais confiáveis utilizando dominio da empresa
> - **~all:** parcialmente vulnerável, permite enviar email mas vai para caixa de span ou é fitrado
> - **-all:** protegido, não permite que atacantes enviem emails utilizando nome de dominio do alvo


---
### Snippets / Referência Técnica

```bash

# Tentativa manual de transferência de zona
host -l alvo.com ns1.alvo.com
	## -l: lista todos os hosts do dominio utilizando AXFR
dig axfr @<IP-DO-DNS-MASTER> alvo.com

# Verificação detalhada de todos os servidores de nome de um domínio
dig ns alvo.com +short
host -t ns alvo.com 

# Consulta rápida de registros TXT para validação SFP (?all, ~all, -all)
host -t txt alvo.com
```


___
# Scripts

[[dns-zone|dns-zone]]

___
# Referências 

-  [DNS, Registros e Transferência de Zona](https://www.ibm.com/br-pt/think/topics/dns-zone)
- [Ataque de transferencia de Zona](https://gokhnayisigi.medium.com/what-is-a-dns-zone-transfer-attack-and-how-to-test-it-12bdc52da086)
- [[DNS-Recon-e-Subdomain-Takeover]]
___

