---
tags:
  - mikrotik
  - failover
  - cyber/networks
---
# Configurando o Netwatch (Automção e Alertas)

A [rota recursiva](2-Failover-Rota-Recursiva) resolve o roteamento, mas ela é silenciosa. O administrador da rede não fica sabendo que o link 1 caiu. É aqui que entra o Netwatch.

> **Netwatch** é uma ferramenta que dispara pings para um determinado IP em intervalos regulares. Se o IP responder, ele executa um script (`On Up`). Se parar de responder, executa outro script (`On Down`)

Vamos configurar o Netwatch para monitorar o Link 1 e gerar alertas no Log do sistema. E até enviar mensagem no Telegram ou email corporativo do administrador de redes.

# Configurando

No menu esquerdo: `tools > netwatch > [ + ]`

```python
{"Na aba HOST"}
 Host: 8.8.8.8          # Com a rota estática, esse IP só pinga pelo link 1
 Interval: '00:00:10'   # Testa o ping a cada 10 seg
 Timeout: 1000          # Se demorar mais de 1000ms, considera perda de pacote
 
== Mude para a aba "Down"
"Digite o comando": /log error "---[ALERTA] Link 1 Caiu! Instabilidade detectada."

== Mude para a aba "Up"
"Digite o comando": /log info "---[RESOLVIDO] Link 1 está ativo! Rota reestabelecida."

"Clique em OK"
```

`Para ver funcionando clique em LOG no menu esquerdo e simule uma queda de conexão.`

Demonstrativo
![[netwatch.mp4]]

# Informativo

**Netwatch vs. Routing Engine**
 - A rota recursiva trabalha na **Camada 3** de forma nativa e matemática: ela apenas altera as tabelas de decisão de pacotes.
 - O Netwatch trabalha na **Camada 7** através de gatilhos de eventos (Event-Driven)

Em redes profissinais de alta complexidade, você usa a rota recursiva para garantir que a queda do link não seja percebido pelo cliente, e usa o Netwatch para disparar automações de infraestrutura, como derrubar túneis VPN redundantes, limpar cache do DNS ou alertar a equipe de redes.