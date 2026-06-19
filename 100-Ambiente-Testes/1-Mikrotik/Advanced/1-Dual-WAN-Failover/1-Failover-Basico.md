---
tags:
  - mikrotik
  - cyber/networks
  - failover
---
# Iniciando a configuração Failover Basico

> Configurar as duas interfaces que serão os Links. WAN 1 e WAN 2. 
> Previamente configurado [[3-Navegando]] [[4-Configurando-DNS]] [[5-Firewall]] [[6-DHCP]]

```python
# WAN 1 
IP > Address > [ + ]
Address: 192.168.1.200/24
Interface: "WAN1"

# WAN 2
IP > Address > [ + ]
Address: 10.0.2.15/24
Interface: "WAN2"
```

> Ajustando o NAT (Masquerade) para ambos os Links
> 	`Para a empresa navegar não importa qual link esteja ativo, o Mikrotik precisa aplicar o *masquerade* nas duas saídas`

```python
IP > Firewall > NAT > [ + ] 
Chain: "srcnat"
Src Address: 192.168.10.0/24 # Toda a rede interna como origem
Out Interface: "WAN1" 
Clique em OK

Repetir para WAN2
```

> A Lógica do Fail Over com Distância de Rota
> 	`Agora vem o segredo do Fail Over. Se você tem duas rotas para a internet, como o Mikrotik sabe qual usar primeir? Através do conceito de Distancia Administrativa (Métrica). A rota com a menor distância tem prioridade.`
 	
```python
IP > Routes > [ + ]

# Rota do Link 1 (WAN1)
Dst Address: 0.0.0.0/0
Gateway: 192.168.1.1 # IP do roteador do Link 1
Distence: 1 # Essa será a rota preferencial
Clique em Ok

# Rota do Link 2 (WAN2)
Dst Address: 0.0.0.0/0
Gateway: 10.0.2.2
Distance: 2
Clique em Ok


```

Demonstrativo
![[failover-basico.mp4]]
# Informativo de Conceitos

- **Distância Administrativa:** É o peso que o roteador dá para escolher o melhor caminho quando existem multiplos destinos possíveis. O roteador analisa a tabela de cima para baixo buscando o menos número.
	`Como a rota criada para WAN1 tem distancia 1, e a WAN2 tem distância 2, o Mikrotik vai ignorar completamente a WAN2 enquanto a WAN1 estiver ativa. o Trafego vai sair todo pela WAN1`
# O problema 

>  Do jeito que está configurado agora, se formos no Mikrotik e retirarmos o cabo da interface da WAN1, a interface vai ficar com status *down*. O Mikrotik percebe que o camo sumiu e destiva a rota 1 e assume a proxima rota mais curta (no caso 2) imediatamente.
>
>  Mas o grande problema é que quase nunca é problema com o cabo desconectado, então mesmo que a internet da WAN1 caia o status da interface vai continuar *Up* e a rota 1 continua ativa, todos os pacotes serão encaminhados por ela e descartados.
>  **Resumindo** a empresa fica sem internet.