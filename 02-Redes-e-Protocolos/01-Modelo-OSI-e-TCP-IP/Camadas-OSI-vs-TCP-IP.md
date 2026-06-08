---
tags:
  - cyber/networks
  - tcp
  - OSI
---
# Modelos conceituais OSI e TCP-IP

> **Resumo:** Modelos conceituais que nos fornecem uma visão de como a rede de computadores opera, separam camadas e cada camada com suas responsabilidades bem definidas.


# Ações

- [ ]  Criar script em C para tratar bit a bit da camada TCP IP para profundo entendimento.

# Notas

## Modelo OSI (Open System Interconnections)

### **As 7 camadas:**

#### L7 (Aplicação)

>   **Resumo:** Aqui ficam os serviços que estão rodando na rede e nos servidores.

>   **Protocolos:** 
> 	  **Web:** http https
> 	  **Resolução de Nomes:** DNS
> 	  **Acesso Remoto:** SSH, TELNET
> 	  **Email:** SMTP, POP, IMAP
> 	  **Transferência de Arquivo:** FTP, SFTP, TFTP
> 	  **Gerenciamento e Monitoramento:** SNMP, SysLog

#### L6 (Apresentação)

> **Conceito chave:** cada camada encapsula os dados da camada superior e adiciona seu próprio cabeçalho.
>
> **Conversão de formatos:**  
> 	**Texto:**
>     Aplicação > "Olá, Mundo!" > UTF-8 > Rede
> 	    Rede > UTF-8 > "Olá, Mundo!"
>
> 	**Criptografia:**
> 	HTTP > TLS > TCP
> 
> 	**Compressão:**
> 		Tamanho original: 1mb > compressão > 200KB
>
>   **Principais Tecnologias:**
> 	 - TLS
> 	 - SSL (Obsoleto)
> 	 - ASCII
> 	 - UTF-8
> 	 - JPEG
> 	 - PNG
>
>   **Keys:** imagens, compressões, formatos, criptografia

#### L5 (Sessão)

> **Conceito:** Responsável por: Criar sessões de comunicação,  Manter sessões ativas, Sincronizar comunicação, Encerrar sessões.
> Na Internet moderna (modelo TCP/IP), ela praticamente não aparece separada, porque suas funções foram absorvidas por aplicações, bibliotecas e protocolos de camadas superiores.
>
> Usuário autenticado  
   Carrinho de compras  
   Token de login  
   Estado da aplicação

#### L4 (Transport)

> **Conceitos:** 
>    - Responsável pela segmentação/divisão dos dados de forma organizada e depois pela remontagem dos mesmos. 
>    - Utiliza de protocolos TCP e UDP para comunicações e usam socket (IP + PORTA + protocolo). Para definir para qual aplicação deve se entregar os dados
>    - Janelamento e Controle de Fluxo
>
>   **Protocolos:** TCP e UDP
>   
>    TCP:
>   - Segmentação
>   - Remontagem
>   - Controle de fluxo
>   - Confiabilidade
>
>   UDP:
>   - Transporte simples e sem conexão
>   
>   **PDU:** TCP Segmento, UDP Datagrama
>
>   **Keys:** TCP, UDP, Socket, Segmentação, Janelamento

#### L3 (Rede / Network)

>   **Conceito:** é a camada que encapsula os dados de L4 em pacotes / packets e decide por qual rota ele vai ser transmitido (roteamento) e adiciona o endereçamento lógico (IPs).
>
>   **Protocolos:** 
> 	  IP - [Internet Protocol](Formato-Pacotes-Analise-Headers)
> 	  ICMP - Internet Control Message Protocol - mensagens entre hosts | echo req, echo reply
> 	  ARP - Pertence um pouco a L3 pois é a resolução de ende lógico (L3) para ende físico (L2)
> 	  BGP - [[Protocolos-Roteamento-OSPF-e-BGP]]
> 	  OSPF - [[Protocolos-Roteamento-OSPF-e-BGP]]
> 	  NDP - Neighbor Discover Protocol - para ipv6, substitui ARP do ipv4
>
>   **PDU:** Packet / Pacote
>
>   **Keys:** IP, routers, icmp, echo request, ospf

#### L2 (Enlace / Data Link)

>   **Conceito:** é aonde os bits da L1 começam a ganhar uma certa inteligência, virando frames/quadros com endereços físicos (MAC) de origem e destino, tem duas subcamadas:
>   LLC Logical Link Control: verifica qual protocolo de L3 (ip, arp, etc) (hoje em dia usam mais o campo EtherType do quadro ethernet)
>   MAC Media Access Control: Aqui fica os endereçamentos físicos e criação dos frames com mac destino e mac origem, o protocolo de L3 e definir o FCS(Framecheck Seq)/CRC (Calculo de Redundância Ciclica) e entregar frame para L1
>
>   **Protocolos:** 
> 	  ARP - [[ARP-Funcionamento-e-Cache-Poisoning]]
> 	  Ethernet - Define como os hosts de uma LAN se comuniquem. utiliza cabo de cobre ou fibra
> 	  WI-FI - IEEE 802.11 forma quadros proprios desse padrão
> 	  LLDP - Link Layer Discovery Protocol - Protocolo para descoberta de hosts vizinhos.
> 	  IEEE 802.1q - Define VLANs
> 	  STP - Spanning Tree Protocol - para evitar loops na rede
> 	  PPP - Point-to-Point Protocol, para conexões de ponta a ponta, utilizado em PPPoE e WAN
>
>   **PDU:** Frame / Quadro
>
>   **Keys:** Switches, MAC, ARP, VLAN, Frame Ethernet...

#### L1 (Física / Physical)

>   **Conceito:** essa camada é aonde encontraremos os meios / mídias de comunicação. Transporte de dados bit a bit, sinais elétricos, ondas de rádio, etc.   
>
>   **Protocolos:** IEEE 801.11 (WiFi, L1 e L2), 10BASE-T, IEEE 802.3 (L1  e L2), Bluetooth, etc.
>
>   **PDU:** bit
>
>   **Keys:** bit, cabos, 802.11 WiFi, cat 5, cat 6, interface de rede, NIC.


# Modelo TCP-IP

Hoje em dia é mais utilizado para referência o modelo TCP-IP, ele é baseado no modelo OSI mas mais focado em realmente representar a funcionalidade em cada camada, algo que fica um pouco confuso no modelo OSI.

## As quatro camadas TCP-IP

### 4 - Aplicação (L5, L6 e L7)

> **Conceito:** essa ultima camada representa as camadas L5,6 e 7 do modelos OSI, juntando seu funcionamento em uma única camada que define como funcionam os serviços na rede, interações com usuário, formatações de dados e autenticações. Serviços de aplicação, representação dos dados, sessões e autenticação.
### 3 - Transporte (L4)

> **Conceito:** representa a camada L4 do modelo OSI, é responsável por explicar e definir como os serviços se comunicam através de conexões TCP e UDP utilizando sockets, e como segmentar/dividir os dados e remontar depois de receber das camadas inferiores.
### 2 - Internet (L3)

> **Conceito:** representa a camada L3 no modelo OSI que explica o funcionamento da internet e seus protocolos, roteamento e endereçamento lógico com IP.
### 1 - Acesso a Rede (L1 e L2)

>**Conceito:** essa camada representa a funcionalidade das camadas L1 e L2 no modelo OSI, juntando o funcionamento das duas para explicar a parte mais de baixo nível da rede.

