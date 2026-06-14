---
tags:
  - cyber/offensive
---
# Processo básico prototip


### Cenário 1 - Já estamos na rede alvo

1 - Ping Sweep para verificar hosts ativos e salvar em arquivo
2 - nmap com -iL para ler o arquivo de hosts ativos e varrer portas neles
2.1 - Se o ambiente não tem nenhuma ferramenta usar o /dev/tcp
	bash -c "cat < /dev/tcp/<target>/<porta>"...
3 - tentar banner grabbing
	bash -c "exec 3<>/dev/tcp/<target>/<port> "