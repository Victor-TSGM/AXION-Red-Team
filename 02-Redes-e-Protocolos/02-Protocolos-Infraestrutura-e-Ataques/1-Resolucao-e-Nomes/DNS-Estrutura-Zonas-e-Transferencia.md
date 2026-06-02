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
---
___
# Domain Name System

>**O que é resumidamente:** é um serviço que traduz ip (37.59.174.225) para nome mais legível (businesscorp.com.br)

___
# Registros DNS

`SOA`     - Start Of Authority (Responsável pelo Dominio)
`A`          -  Endereço IPv4
`AAAA`   - Endereço IPv6
`NS`        - Name Server
`CNAME` - Canonical Name (Apelidp/Alias)
`MX`        - Mail Exchange (Servidor de Email) 
`PTR`      - Poiter (Mapeia IP para NOME)
`HINFO` - Host Information
`TXT`      - Text String (ex: spf)

___
# Transferência de Zona

> **Transferência de Zona DNS** (conhecida tecnicamente pelo comando **AXFR**) é um mecanismo legítimo do protocolo DNS usado para replicar o banco de dados de mapeamento de nomes entre servidores DNS. 

> *Por exemplo:* o servidor ns1 tem o banco atualizado, já o ns2 não. Então faz a transferência de zona para o ns2 para que continuem sincronizados

> *OBS:* A tranferência de Zona AXFR opera na porta 53 TCP, enquanto as demais consultas funcionam na 53 UDP

___
# Utilitario Host (Linux)

Esse utilitário server como um DNS resolver

**Exemplos de uso:**

`host -t A businesscorp.com.br`
   -t: tipo de registro, no caso é  o A, para resolver para IPv4
`host -t mx businesscorp.com.br`
   resolve os servidores de email do dominio informado

**Exemplos de uso transferência de Zona AXFR** :

Antes de executar esse comando precisamos saber qual é o servidor de dns que está sendo utilizado, para isso usamos o comando  `ẁhois` ou simplesmente pesquisamos em algum site de coleta de informação ([whois](https://registro.br/tecnologia/ferramentas/whois/), [IANA](https://www.iana.org/whois), [Shodan](https://www.shodan.io/dashboard), [Censys](https://platform.censys.io))

`host -l businesscorp.com.br ns1.businesscorp.com.br`
   -l serve para listar todos os hosts no dominio. usando AXFR

___
# Scripts


___
# Medidas de segurança

Muitos atacantes podem tirar proveito do funcionamento do serviço de **Transferência de Zona DNS** para listar os hosts de um domínio, então uma medida de segurança precisa ser configurada para apenas servidores confiáveis possam fazer essa consulta

___
# Referências 

-  [DNS, Registros e Transferência de Zona](https://www.ibm.com/br-pt/think/topics/dns-zone)
- [Ataque de transferencia de Zona](https://gokhnayisigi.medium.com/what-is-a-dns-zone-transfer-attack-and-how-to-test-it-12bdc52da086)

___

