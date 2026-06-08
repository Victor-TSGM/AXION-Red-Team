---
tags:
  - cyber/networks
  - firewall
---
# Overview Firewall

> **Resumo:** introdução rápida sobre firewall na prática


# Ações

- [ ]  Criar script automatizado para aplicar regras de firewall em um servidor linux

# Notas

## Conceito

Um firewall é um dispositivo de segurança que monitora o fluxo de pacotes na rede, de entrada e saída com base em regras bem definidas. No Linux o firewall é uma interface para o **Netfilter**, um framework nativo do prórpio Kernel do Linux especializado em manipulação de pacotes.

## Tipos de filtros

- *Stateless:* Analisa pacotes individualmente, IPs, porta, protocolo. Rápido mas não entende contexto.

- *Stateful:*  Mantem uma tabela de statos (conntrack), ele sabe se um pacote faz parte de uma conexão legitima já estabelecida, bloqueando respostas não solicitadas.

- *Next Generation Firewall (NGFW):* Ele monitora todo o pacote até a camada 7, inspecionando a fundo o conteúdo (*Deep Packet Inspection*), assinaturas de malwares e bloqueio de aplicações específicas.

## Tables e Chains

O Firewall monitora o trafego através de *Tables* e *Chains* (Cadeia)

### **Tables:** Definem o que fazer com cada pacote.

-  **Filter ->** A tabela padrão para filtragem de pacotes, é aqui que decidimos se o pacote passa ou morre.
 
-  **NAT ->** Usada para tradução de IPs e Portas. Essencial para mascarar a rede interna ou redirecionar portas externas para servidores internos.

- **Mangle ->** Usado para alterações especiais no cabeçalho do pacote (como alterar o TTL ou marcar pacotes para controle de qualidade QoS)

### **Chains / Cadeia:** De onde vem o pacote:
- **INPUT ->** Destiando ao proprio servidor firewall, ex: alguem tentando conectar via SSH no firewall

-  **OUTPUT ->** Gerado pelo próprio servidor firewall e saindo para a rede

- **FORWARD ->** Pacotes que apenas atravessam o firewall, ex: uma maquina de rede interna acessando internet. Está é a principal chain de um servidor firewall


## Referência Técnica

### Configurando servidor Firewall Linux

```bash

###### iptables : ip6tables TOP FLAGS ######


```



