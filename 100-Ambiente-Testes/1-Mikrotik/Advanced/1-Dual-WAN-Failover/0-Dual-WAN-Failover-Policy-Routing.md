---
tags:
  - mikrotik
  - cyber/networks
aliases:
  - link-redundante
  - rota-recursiva
---
# Dual WAN com Failover Dinâmico e Policy Routing

> **Conceito:** Quando um cliente da AXION não pode ficar sem internet, nesse caso ele contrata dois ISPs um com Link Dedicado (Link A) e outro link banda larga (Link B).
> **O cenário:** O MikroTik precisa monitorar o status do Link A com pings constantes em servidores externos (com Netwatch ou rotas recursivas). Se o link cair o roteador altera a tabela de roteamento automaticamente e ativa o link B.

```python
Policy Routing: "Configurar firewall para que o trafego de um determinado setor (ex: Diretoria), passe apenas pelo link A (mais estável), enquando o WiFi de visitantes e downloads de atualizações saiam apenas pelo link B"
```

