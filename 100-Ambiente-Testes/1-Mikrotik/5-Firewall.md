---
tags:
---
# Configurando Firewall

Após Mikrotik já estar navegando normalmente na internet, antes de ligar os hosts internos precisamos configurar o Firewall para que não fique vulnerável a requisições externas.

> **Resumo:** No Mikrotik o firewall é como no [Linux](Firewall-Iptables) sendo o Netfilter que se baseia em **Tabelas e Chains (Cadeias)**
> 
>`- Tabelas: Filter | NAT | Mangle`
>`- Chains: Input | Output | Forward`
>	*Consulte mais detalhes [aqui](Firewall-Iptables)*


## Passo 1 - Protegendo o DNS (Bloqueio na Chain Input)

Lembra que ativamos a opção [Allow Remote Requests](4-Configurando-DNS) nas configurações de DNS do Mikrotik?
Pois bem, qualquer pessoa poderá inundar o roteador com requisições DNS se não tiver nenhuma regra para bloquear isso, então vamos configurar essa regra.

1. No menu esquerdo: `IP > Firewall > Filter Rules` 
```json
"General": {
	"Chain": "input",
	"Protocol": 17 (udp),
	"Dst. Port": 53,
	"In. Interface": "WAN" Se o pacote vier de fora
},
"Action": {
	"Acion": "drop"
}
```
1. Clique em `OK`
2. Repita o mesmo passo para `6 (tcp)`

```bash
# Configuração semelhante no linux seria algo parecido com:
iptables -A INPUT -p udb --dport 53 -i eth0 -j DROP
```

Demonstrativo
![[firewall-dns.mp4]]

## Passo 2 - Politia Geral de Segurança (Stateful Firewall)

Um firewall inteligente não se limita apenas a analisar pacotes (verificar flags, portas, ips) para decidir o que fazer (accept, drop, reject). Ele acompanha o estado da conexão. Se um host interno da AXION iniciou uma conexão de forma legitima com o site do Google, o firewall precisa deixar a resposta do Google entrar de volta automaticamente.

Vamos criar duas regras que poupam processamento e garantem que conexões já estabelecidas passem direto:

No menu a esquerda:  `IP > Firewamm > Filter rules`
### Regra 1: Aceitar conexões já estabelecidas (Established)

```json
"General": { //Aba general
	"Chain": "input",
	"Connection State": "established" and "eelated"
},
"Acion": {    //Aba acion
	"Action": "accept"
}
Clique em OK
```

Demonstrativo
![[firewall-stateful.mp4]]

### Regra 2 - Dropar conexões inválidas 

[Pacotes malformados ou adulterados](Pacotes-Basicos-IP-TCP) por atacantes devem ser limpos logo de cara.

```json
"General": {
	"Chain": "input",
	"Connection State": "invalid"
},
"Action": {
	"Action": "drop"
}
Clique em OK
```

Demonstrativo
	![[firewall-drop-invalid.mp4]]
## Passo 3 - Criando o NAT (Masquerade)

O firewall está trancado, mas as maquinas da rede interna usam IPs privados que não são roteáveis na internet. Para que os hosts na rede naveguem é preciso configurar um **NAT** para camuflar IPs privados no IP público configurado na iface WAN.

No menu esquerdo: `IP > Firewall > NAT`
```json
"General" : {
	"Chain": "srcnat", //Source NAT - Modifica a origem do pacote
	"Src. Address": "192.168.1.0/24", // Toda a rede interna
	"Out. Interface": "WAN" //Interface de saída
},
"Action": {
	"Action": "masquerade"
}
Clique em OK

```

Demonstrativo
![[firewall-nat-masq.mp4]]

# Informativo e Referências

#### Stateful Firewall
- **O que é:** é a tecnologia que permite que o firewall lembre do contexto nas conexões. Ele categoriza os pacotes em quatro estados: `NEW | Established | Related | Invalid`.  [[Firewall-Iptables]]
- Ao criarmos a regra de aceitar `established`, garantimos que o Mikrotik não precise reavaliar todas as centenas de regras a cada único pacote de uma música tocando no Spotfy, já que a conexão já foi estabelecida.

#### Chains (Input VS. Forward)
- **O que é:** são caminhos de fluxo dentro do Netfilter do linux.
	- Se um atacante tentar escanear o IP do Mikrotik ele cai na chain input
	- Se o atacante tentar atacar o Windows Server o pacote cai na chain Forward
- Entender essa separação impede que você cometa o erro classico de bloquear a porta 80 na chain Input. Quando na verdade deve ser tratado na chain forward.

#### CGNAT / Source NAT / Masquerade

- **O que é:** Como os hosts de uma rede interna utiliza IPs privados, e esses IPs são descartados por roteadores na internet. O que impede que um host acesse a internet utilizando seu IP.
- O NAT Masquerade vai remover o cabeçalho IP com o endereço de origem interno (ex: 192.168.1.200) e colocar seu proprio cabeçalho IP com o IP externo. 