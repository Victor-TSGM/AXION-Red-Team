---
tags:
---
# Fazendo Roteador Navegar

> Como fazer o roteador Mikrotik navegar na internet configurando como Link Dedicado ou PPPoE

## Cenário 1 - Link Dedicado

> **Cenário:** Imagine que a operadora forneceu os seguintes dados para a configuração do Link
>
> **IP WAN:** `200.150.50.2`
> **Mascara:** `255.255.255.252 ou /30`. só tem 2 IPs úteis: o seu e o do roteador do provedor
> **Gateway ISP:** `2.00.150.50.1`
> **DNS Primário:** `8.8.8.8`

### Passo 1: Setar o IP na Interface WAN

1. No menu esquerdo: `IP > Addresses > ( + )`
2. No campo **Address** insira o IP com formato CDIR fornecido pelo provedor: `200.150.50.2/30`
3. Clique em **OK**

Demonstrativo
![[ip-wan.mp4]]
### Passo 2: Criar Rota Padrão (Default Route)
Como o IP é estatico, o Mikrotik não sabe para onde mandar os pacotes que vão para a internet. Você precisa informar manualmente o caminho para o Gateway do provedor.

1. No menu esquerdo: `IP > Routes > ( + )`
2. O Campo **Dst. Address* deve ficar como `0.0.0.0/0` (Qualquer destino fora da rede)
3. No campo **Gateway**: digite o IP de GW fornecido pelo provedor: `200.150.50.1`
4. Clique em **OK**

`Se tudo der certo a linha ficará com status AS - Active Static  e reachable WAN`

Demonstrativo
![[default-route.mp4]]



## Cenário 2 - Autenticação PPPoE

Se o link for fibra comercial que exige autenticação, você não coloca IP diretamente na placa física WAN (ether1), A placa física serve apenas como um meio transparente para um túnel virtual por dentro dela.

Configurando PPPoE:

1. No menu esquerdo: `PPP`
2. Na aba **Interface**, clique em [ + ] e selecione **PPPoE Client**
3. Na janela que abrir: 
	1. `General: 
		`- Dê um nome para a conexão (ex: pppoe-vivo)`
		`- Em Interfaces` Selecione a interface, no caso WAN
	2. `Dial Out:`
		`- User: digite o usuário fornecido`
		`- Password: digite a senha fornecida`
		`- Marque Use Peer DNS` 
		`- Marque Add Default Route` para criar a rota padrão automatico
4. Clique em **OK**

`Uma interface virtual vai chamada pppoe-vivo vai subir. Se usuário e senha estiverem certos, um "R" (Running) vai aparecer indicando que o túnel foi fechado e o Mikrotik ganhou um IP publico na WAN`

Demonstrativo
![[pppoe-wan.mp4]]


## Configurando Gateway da Empresa

O Mikrotik precisa ser o "Gateway" dessa rede, então vamos configurar
No menu esquerdo: `IP > Address > [ + ]`
```json
"Address": "192.168.0.1/24",
"Network": "192.168.0.0" ou em branco,
"Interface": "LAN"
Clique em OK
```

Demonstrativo
![[lan-gateway.mp4]]
# Informativo de Conceitos e Referências

1. **Rota padrão / Default Route (`0.0.0.0/0`)**
	- **O que é:** É uma rota de "último recurso" de qualquer roteador ou computador. A tabela de roteamento funciona por exclusão. Quando um host tenta acessar *google.com* internamente ele não encontra, então ele vai jogar o pacote para a regra `0.0.0.0/0`, que diz: "*Tudo o que você não conhecer, empurre para o IP do Gateway do provedor que ele se vira para achar*".
	- Sem erra rota configurada, seja manualmente ou herdade (DCHP ou PPPoE), o Mikrotik fica sem saber para onde enviar os pacotes que são destinados a IPs que não fazem parte da rede interna.

2. **Point-to-Point Protocol over Ethernet - PPPoE**
	- **O que é:** é um protocolo de encapsulamento. Ele pega os pacotes de rede comuns e os encapsula em uma camada de autenticação antes de transmiti-los pela rede física do provedor.
	- Ele atua na fronteira da L2 e L3 por isso não é atribuido um IP para a interface física, o IP é atrelado a interface virtual criada pelo PPPoE e só assim transmitida ao meio físico.