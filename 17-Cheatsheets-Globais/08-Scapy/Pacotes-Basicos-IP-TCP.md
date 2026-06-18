---
tags:
---
# Criando pacotes IP e TCP

> **Scapy** é uma ferramenta que cria e gerencia pacotes de rede. com ela nós podemos criar da forma que quisermos um pacote personalizado IP, TCP e outros protocolos.

### Criando primeiro pacote 

```python
# 1. Comandos iniciais:
bash scapy

	>>> ls()    # Mostra todos os protocolos que scapy utiliza
	>>> lsc()   # Mostra todos as funções scapy
	>>> help(<funcao>)  # Mostra como a função funciona

# 2. Criando uma variável IP
	>>> pIP = IP(dst="192.168.1.100", scr="192.168.1.90")
	>>> pIP.show()
	saida:   	###[ IP ]###
			  version   = 4
			  ihl       = None
			  tos       = 0x0
			  len       = None
			  id        = 1
			  flags     = 
			  frag      = 0
			  ttl       = 64
			  proto     = hopopt
			  chksum    = None
			  src       = 192.168.1.9 # Se nao informar pega o ip da maquina
			  dst       = 192.168.1.100
			  \options   \
			  

# 3. Criando uma variável TCP
	>>> pTCP = TCP(dport=80, sport=43433, flags="S")
	>>> pTCP.show()
	Saida:       ###[ TCP ]###
			  sport     = 43433
			  dport     = http
			  seq       = 0
			  ack       = 0
			  dataofs   = None
			  reserved  = 0
			  flags     = S
			  window    = 8192
			  chksum    = None
			  urgptr    = 0
			  options   = []
			  
# 4. Criando o pacote, escapsulando TCP L4 em IP L3
	>>> pacote = pIP/pTCP
	>>> pacote.summary() # Mostra informações mais reduzidas que show()
	Saida: 'IP / TCP 192.168.1.9:34344 > 192.168.1.9:http S'

# 5. Enviando o pacote, para o destino em pTP.dst e na porta pTCP.dport
	>>> resposta = sr(pacote) 
	>>> resposta.show()
```


### Criando pacote ICMP

```python
	>>>pIP = IP(dst="192.168.1.100")
	>>>pacote = pIP/ICMP()
	>>>resposta = sr(pacote)
	>>>resposta.show()
	Saída: ###[ IP ]###
			  version   = 4
			  ihl       = 5
			  tos       = 0x0
			  len       = 28
			  id        = 47018
			  flags     = 
			  frag      = 0
			  ttl       = 64
			  proto     = icmp
			  chksum    = 0xc534
			  src       = 127.0.0.1
			  dst       = 127.0.0.1
			  \options   \
			###[ ICMP ]###
			     type      = echo-reply
			     code      = 0
			     chksum    = 0x0
			     id        = 0x0
			     seq       = 0x0
			     unused    = b''

```

### Pacote com Payload

```python
	>>> pacote = pIP/ICMP()/"AXION Security"
	>>> resposta = sr1(pacote)
```