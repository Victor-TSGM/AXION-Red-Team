---
tags:
  - mikrotik
  - failover
  - cyber/networks
---
# Failover Dinâmico com Rota Recurciva

>**Rota Recursiva:** é uma abordagem de alta disponibilidade resolvida pelo proprio motor de roteamento (Routing Engine).
>
>**Recursividade:** Dependência de Tabelas
>
>**Funcionamento:** a mágica da rota-recursiva é que em vez que o portão de saida para a internet é o modem do provedor, nós dizemos que o portão de saída é o servidor DNS do Google (8.8.8.8)
>Para o Mikrotik Consegui alcançar o 8.8.8.8, ele será obrigado a olhar uma segunda tabela que diz: "*Para achar o 8.8.8.8, use Link 1*". Se o Google parar de responder por aquele caminho, a rota inteira cai, mesmo com cabo plugado.

## Configurando

1. Primeiro, vamos criar as rotas estáticas que amarram um IP público a cada interface física:

```python
# Rota isca do Link 1 (Principal)
IP > Routes > [ + ]
  Dst Address: 8.8.8.8    # Usaremos Google para testar Link 1
  Gateway: 192.168.1.1    # Ip do roteador do link 1
  Scote: 10               # !!! CRUCIAL !!! é isso que permite a recursividade
  "Clique em OK"
  
# Rota isca do Link 2 (Backup)
IP > Routes > [ + ]
  Dst Address: 1.1.1.1    # Usaremos cloudfire para testar link 2
  Gateway: 10.0.2.2       # Ip gateway link 2
  Scope: 10
  "Clique em OK"
   
```

2. Criando rotas padrão recursivas
	 `As rotas que os hosts vão usar para navegar, apontanto para os IPs iscas`
```python
# Rota padrão via Link 1
IP > Routes > [ + ]
  Dst Address: 0.0.0.0/0   
  Gateway: 8.8.8.8         # o ip do google vira gateway
  Check Gateway: "ping"    # ativa checagem ativa
  Distance: 1
  Target Scope: 10         # Procura a rota feita no passo anterior
  "Clique em OK"
  
  
# Rota parão via Link 2
IP  > Routes > [ + ]
  Dst Address: 0.0.0.0/0
  Gateway: 1.1.1.1
  Check Gateway: "ping"
  Distance: 2
  Target Scope: 10
  "Clique em OK"
```

`Na janela visual deve aparecer AS (Active Static) na rota 0.0.0.0/0 escrito recursive via 192.168.1.1. A rota do Link 2 ficara azul (inativa em espera).`

Demonstrativo
![[failover-recursive.mp4]]

# Informativo de Conceitos

**1. Scope vs. Target Scope**
- **O que é:** No RouterOS, o `scope` é uma propriedade que define a  "confiabilidade" hierarquica de uma rota, e o `target scope` é o limite de profundidade que uma rota padrão aceita para resolver o seu gateway.
- Por padrão, uma rota comum não aceita um IP de fora da rede local (como o `8.8.8.8`) como gateway. Ao configurarmos o `Target Scope = 10` na rota padrão, dissemos ao MKT: "*Pode procurar uma rota secundária que tenha Scope de valor 10 para descobrir como chegar nesse gateway distante*". É esse casamento numérico que cria a dependência de tabelas (recursividade)