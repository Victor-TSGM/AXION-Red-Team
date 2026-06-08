---
tags:
  - cyber/networks
  - cyber/security
  - security
  - firewall
---
# Firewall Iptables, estudo e configuração

## Firewall

> É um equipamento que serve para moonitorar o trafego e entrada e saída da rede, filtrando pacotes. No linux o firewall não é um programa isolado, mas uma interface para o **Netfilter**, um framework nativo do kernet linux que é especializado em manipulação de pacotes.

>  O firewall trabalha com regras, que decidem o que fazer com cada pacote.

### Iptables 

> É atraves do *iptables* que configuramos as regras do firewall no Linux.

```bash
# A estrutura básica para configurar uma regra, quase todo comando iptables segue esse padrão

iptables [-t tabela] <COMANDO> <CHAIN> [FILTROS] -j <AÇÃO>


# ======= Flags de comando ========
-A # Append --- Adiciona regra no final da chain
-I # Insert --- Insere regra no topo ou passando o local da lista (-I INPUT 2)
-D # Delete --- Apaga uma regra específica da chain
-F # Flush ---- Limpa todas as regras de uma chain ou toda a tabela. Se usada sozinha zera o firewall
-P # Policy --- Define a política padrão da chain, o que acontece se o pckt passar por todas as regras e não der match
-L # List ----- Lista todas as regras ativas -n -v (numerico e detalhado)

# ======== Flags de filtro / Parâmetro =========
-p # Protocol - Filtra pelo protocolo da L4 (-p tcp, -p udo, -p icmp)
-s # Source --- O IP ou rede de origem do pacote (-s 192.168.0.11 ou -s 10.1.0.0/24)
-d # Dest ----- O IP ou rede de destino do pacote
-i # In Iface - A placa de rede pela qual o pacote entrou no servidor. -i eth0
-o # OutIface - A placa de rede pela qual o pacote vai sair do servdr. -o eth0
--sport # Source Port - A porta de origem do pacote (Exige que tenha declarado -p tcp ou -p udp)
--dport # Destin Port - A porta de destino do pacote. (--dport 80)

# ======= Flags de Ação -j ========
-j ACCEPT # Deixa o pacote passar
-j DROP   # Descarta o pacote silenciosamente. O remetente fica no vácuo até dar timeout (bom para camuflar portas na internet)
-j REJECT # Bloqueia o pacote, mas envia uma resposta educada de volta (Port Unreachable). Revela que hà um firewall ali.
-j MASQUERADE # Usado na tabela NAT. Mascara o IP da rede interna para parecer que veio do IP publico do próprio firewall.

# ======= Extensor de modulos ======== 
# o iptable é puro stateles, para torna-lo mais inteligente (stateful) usamos a flag -m para carregar modulos extras do kernet.
-m conntrack # Modulo que acompanha o estado das conexões.
-m conntrack --ctstate ESTABILISHED, RELATED # diz ao firewall "Se esse pacote for a resposta de algo que solicitei, deixe passar automaticamente."

=========== Exemplo 1 ============
iptables -A INPUT -i eth0 -p tcp --dport 22 -j ACCEPT
# Tradução: Adiciona (-A) na chain INPUT do servidor uma regra dizendo: se o pacote entrou pela interface eth0 (-i eth0), usa o protocolo TCP (-p tcp) e quer ir para a porta 22 (--dport 22), então ACEITE (-j ACCEPT).

=========== Exemplo 2 ============
iptables -A FORWARD -i eth1 -o eth0 -p tcp --dport 443 -j ACCEPT
# Tradução: Adicione (-A) na chain de passagem (FORWARD) e a seguinte regra: se o pacote entrou pela LAN (-i eth1), quer sair para a internet (-o eth0), é do protocolo TCP (-p tcp) focado na porta 443 (--dport 443), então ACEITE (-j ACCEPT) e deixe ele atravessar o servidor.

============ Exemplo 3 ===========
iptables -t nat -A POSTROUTUNG -o eth0 -j MASQUERADE
# Tradução: Vá na tebela NAT (-t nat) e adicione (-A) na fase de saida (POSTROUTING) a regra: tudo que estiver saindo em direção a internet pela interface eth0 (-o eth0), faça um mascaramento (-j MASQUERADE) substituindo o IP interno pelo IP público da placa.

```

