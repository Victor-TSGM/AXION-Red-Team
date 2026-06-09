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
-Pn   # Não verificar se o host está ativo, quando ja sabemos que está


# ========= Exemplos de uso ========
nmap -sS 80 -Pn 192.168.1.13 # SYN scan para porta 80
nmap -sS 21,22,80,143 -Pn 192.168.1.13 # SYN Scan para as portas informadas


# Sy
 ```