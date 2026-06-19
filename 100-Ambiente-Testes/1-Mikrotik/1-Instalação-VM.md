---
tags:
  - mikrotik
  - cyber/networks
---
# Instalação Mikrotik no VirtualBox

1. Download do arquivo *.vmdk* [Mikrotik Downloads](https://mikrotik.com/download)
2. Criando a VM no VirtualBox
	1. Definir nome da maquina ex: `Mikrotik-Borda`
	2. **Tipo:** `Linux`
	3. **Versão:** `Linux 2.6 / 3.x / 4.x (64-bit) ou Other Linux (64-bit)`
3. Configuração do Hardware (Processador e Memória)
	1. **Processador:** 1 CPU
	2. **Memória:** 256mb
	3. **Disco:** Utilizar o vmdk baixado
4. Configurações das NICs
	1. **Adaptador 1:** Placa em modo Bridge
	2. **Adaptador 2:** Rede Interna
		1. **Nome:** LAN_AXION
OBS: Em ambas as placas de rede habilitadas deve estar ativo o modo **Premiscuos Mode** e deve estar como Permitir-Tudo.

**Start na maquina**

# Primeira inicialização

1. Login com usuário **admin** e senha em branco.

2. Vai pedir para criar uma senha nova

3. Baixar [Winbox](https://mikrotik.com/download/winbox)

4. Efetuar busca pelo modo *Neighbors* e clique no endereço de Camada 2 (MAC) do equipamento encontrado
5. Insira a senha criada para o usuário admin


**Pronto**