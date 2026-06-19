---
tags:
---
# Configurando DNS de forma Segura

1. No menu esquerdo: `IP > DNS`
2. No campo **Servers**, adicione os IPs dos servidores DNS públicos `8.8.8.8 e/ou 1.1.1.1`
3. A REGRA DE OURO (Segurança): Marque a caixa **Allow Remote Requests** (Permitir Requisições Remotas)
	- Isso faz com que o Mikrotik vire um servidor DNS para a rede interna, permitindo que o **Windows Server** faça consultas para ele.
	- **ALERTA DE SEGURANÇA!!** Ao marcar Allow Remote Requests o Mikrotik aceitara perguntas de DNS vinda da internet, isso pode ser usado por atacantes para fazer um ataque DDoS por amplificação de DNS. Para evitar isso precisamos criar uma regra de firewall que bloqueia consultas vindas da interface WAN. 

Demonstrativo
![[dns-config.mp4]]

# Informativo e Referências

#### Resolução Iterativa VS Encaminhamento DNS (Forwarding)
* **O que é:** Um servidor DNS pode tentar resolver um nome de forma iterativa `pergunta para servidores raiz > depois para servidores .com > e assim por diante`, ou simplesmente "*passar a bola*" para um outro servidor DNS mais acima na hierarquia, fazendo assim um encaminhamento (forwarding), um exemplo disso é um Windows Server configurado como servidor de DNS encaminhar consultas de sites para o Servidor DNS de borda, no caso o Mikrotik.
* Essas separação de papéis é crucial para garantir o tráfego de DNS interno, para manter maquinas conversando com o AD, do tráfego externo quando um host quer acessar um site externo essa requisição é empurrada, ecaminhada para o DNS de borda Mikrotik

#### DNS Cache (Memória Temporária)
- **O que é:** Quando o Mikrotik acessa um site, *google.com* ele armazena os dados em uma tabela de memória temporária, por um tempo determinado por TTL
- Se outra maquina acessa o mesmo site segundos depois, o Mikrotik envia o que está no cache sem gastar banda desnecessária indo buscar o site na internet novamente.

