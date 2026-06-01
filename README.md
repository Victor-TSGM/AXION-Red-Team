Exemplo de preenchimento do arquivo

---
aliases: [Roubo de hashes de contas de serviço, TGS Cracking, Ataque SPN]
tags: [active-directory, exploracao, identidade, tgs]
---

# ⚔️ Kerberoasting

> **O que é de forma simples:** É um ataque onde qualquer usuário comum do domínio pode solicitar um ticket de acesso (TGS) para contas que possuem um SPN (Service Principal Name) registrado e tentar quebrar a senha dessas contas offline por força bruta.

---

## 🎯 Pré-requisitos para o Ataque
- [ ] Possuir qualquer credencial válida do domínio (mesmo sem privilégios).
- [ ] Comunicação direta com o Domain Controller (KDC) nas portas `88` (Kerberos) e `389` (LDAP).

---

## 🚀 Arsenal Operacional (Como Executar)

### Método 1: Via Linux (Impacket - Fora do Domínio)
Utilizado quando você está na sua máquina Kali atacando a rede interna.

```bash
# Enumerar e extrair os hashes NetNTLMv5 das contas SPN
impacket-GetUserSPNs -dc-ip <IP_DO_DC> <DOMINIO>/<USUARIO>:<SENHA> -request -outputfile hashes_kerberoasting.txt