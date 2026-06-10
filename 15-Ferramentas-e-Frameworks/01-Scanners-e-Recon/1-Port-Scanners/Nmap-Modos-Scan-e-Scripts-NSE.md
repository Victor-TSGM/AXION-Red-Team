---
tags:
  - cyber/recon
  - cyber/tools
  - recon
  - info-gethering
  - osint
  - scanner
---
# Detalhamento técnico de Port Scan

> **Conceito:** um port scan funciona utilizando conexões TCP e UDP para identificar serviços ativos em um alvo.
> Quando fazemos um scanner para procurar serviços que utilizam protocolo TCP para comunicação o que precisamos é tentar estabelecer uma conexão com o host utilizando o socket.
 

## Scan Portas TCP

Para escanear portas TCP de um host é feito o processo de **Three-Way-Handshake**.

```python
# 1. Primeiro enviamos um pacote com a flag SYN para o alvo, nesse exemplo tentaremos verificar se está aberta a porta 80 no host. então o socket para onde enviar o pacote do alvo é 192.168.1.200:80
[Pentest-PC] ---- SYN ---> [ALVO] # Envia uma flag SYN para o alvo

# 2. Agora dependendo da resposta do host podemos identificar se a porta de serviço está aberta ou fechada
[Pentest-PC] <- SYN/ACK -- [ALVO] # Se SYN/ACK port aberta
[Pentest-PC] <- RST/ACK -- [ALVO] # Serviço inativo, porta fechada
[Pentest-PC] ------------- [ALVO] # Sem resposta, porta/serviço filtrado
```

# Funcionamento Nmap

>    **Resumo:** ferramenta mais utilizada para scans e coletas de informações sobre hosts já conhecidos.
>    Faz scaner de portas e serviços utilizando os processos mencionados acima.

```bash
# Flas mais utilizadas
-s    # Scan - indica que é para fazer um scan
-sS   # SYN Scan - indica que é para fazer um scan usando a flag SYN
-sT   # TCP Scan - Faz o 3wh completo, mais barulhento que syn scan
-sU   # UDP Scan - faz scan portas UDP, porem traz resultados ambiguos
-p    # Ports - para informar portas a serem varridas
-p-   # Todas as portas 1 - 65535
-Pn   # Não verificar se o host está ativo, quando ja sabemos que está
-iL   # input from list - Utilizar arquivo com lista de hosts
-o    # Output - Jogar saida para um arquivo
-oG   # Output Grepable - jogar saida grepable para arquivo
--open # Trazer somente portas abertas


# ========= Exemplos de uso ========
nmap -sS -Pn 192.168.1.13 # Vai fazer scan nas 1000 principais portas
nmap -sS -p 80 -Pn 192.168.1.13 # SYN scan para porta 80
nmap -sS -p 21,22,80,143 -Pn 192.168.1.13 # SYN Scan para as portas informadas

nmap -sUV -p 10-100 192.168.1.13 # Vai varrer portas UDP e interagir com serviço

nmap -sn -

```

### Tipos de Scan

*TCP Scan* - `nmap -sT -p 80 192.168.1.22`
	- Faz o 3WH completo, menos interessante pois é muito barulhento
*Half Scan / SYN Scan* - `nmap -sS -p 80 192.168.1.22`
	- Não completa o 3WH pois quando o alvo responde com SYN/ACK é enviado um RST para encerrar a conexão.
*FIN Scan `nmap -sF -p 80 192.168.1.22`
	- Não conclui com certeza o status da porta pois não recebe nada como resposta
*Null Scan* - `nmap -sN -p 80 192.168.1.22`
	- Igual a responta do FIN Scan


### UDP Scan

Quando vamos fazer scan das portas UDP encontramos um desafio, pois UDP não responde com SYN/ACK por exemplo, ele simplesmente não responde ou responde com port unreacheble.

Se no firewall do alvo estiver com a porta 69 UDP aberta porem com regra para DROP, não saberemos se de fato está fechada ou aberta, pois em ambos os casos não retornará nada.

Para solucionar esse problema podemos usar o nmap de forma que ele vai tentar interagir com as portas dos serviços.

```bash
-sUV # Scan UDP que usa NSEs para interagir com as portas e identificar os serviços rodando

nmap -sUV -p 60 -Pn 192.168.1.22
```





# Referências

[[Handshake-TCP-Flags-SYN-ACK-FIN-RST]]
