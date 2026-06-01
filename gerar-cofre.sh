#!/bin/bash

echo "[+] Inicializando a construção da Ultra Estrutura do Cofre de Segurança Ofensiva..."

# ==========================================
# 01. Metodologia e Processos
# ==========================================
echo "[+] Gerando 01-Metodologia-e-Processos..."
mkdir -p "01-Metodologia-e-Processos/01-Frameworks-e-Normas" \
         "01-Metodologia-e-Processos/02-Fases-do-Pentest-Comercial" \
         "01-Metodologia-e-Processos/03-Documentacao-e-Evidencias" \
         "01-Metodologia-e-Processos/04-Relatorios-e-Entregaveis"

touch "01-Metodologia-e-Processos/README.md"
touch "01-Metodologia-e-Processos/01-Frameworks-e-Normas/PTES-Penetration-Testing-Execution-Standard.md" \
      "01-Metodologia-e-Processos/01-Frameworks-e-Normas/OSSTMM-Metodologia-Auditoria.md" \
      "01-Metodologia-e-Processos/01-Frameworks-e-Normas/OWASP-Testing-Guide-WSTG.md" \
      "01-Metodologia-e-Processos/01-Frameworks-e-Normas/NIST-SP-800-115-Guia-Tecnico.md"
touch "01-Metodologia-e-Processos/02-Fases-do-Pentest-Comercial/1-Pre-Engajamento-Escopo-e-Contrato.md" \
      "01-Metodologia-e-Processos/02-Fases-do-Pentest-Comercial/2-Regras-de-Engajamento-RoE.md" \
      "01-Metodologia-e-Processos/02-Fases-do-Pentest-Comercial/3-Definicao-Janelas-e-Limites-Ataque.md" \
      "01-Metodologia-e-Processos/02-Fases-do-Pentest-Comercial/4-Alinhamento-e-Kickoff-Meeting.md"
touch "01-Metodologia-e-Processos/03-Documentacao-e-Evidencias/Metodologia-Coleta-Prints-e-Logs.md" \
      "01-Metodologia-e-Processos/03-Documentacao-e-Evidencias/Organizacao-de-Evidencias-por-Host.md" \
      "01-Metodologia-e-Processos/03-Documentacao-e-Evidencias/Linha-do-Tempo-Acoes-e-Timestamps.md"
touch "01-Metodologia-e-Processos/04-Relatorios-e-Entregaveis/Template-Report-Executivo-C-Level.md" \
      "01-Metodologia-e-Processos/04-Relatorios-e-Entregaveis/Template-Report-Tecnico-Desenvolvedores.md" \
      "01-Metodologia-e-Processos/04-Relatorios-e-Entregaveis/Calculo-Severidade-CVSS-v3-v4-Metricas.md"

# ==========================================
# 02. Redes e Protocolos
# ==========================================
echo "[+] Gerando 02-Redes-e-Protocolos..."
mkdir -p "02-Redes-e-Protocolos/01-Modelo-OSI-e-TCP-IP" \
         "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/1-Resolucao-e-Nomes" \
         "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/2-Autenticacao-e-Acesso" \
         "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/3-Servicos-Rede" \
         "02-Redes-e-Protocolos/03-Roteamento-e-Comutacao" \
         "02-Redes-e-Protocolos/04-Analise-e-Captura-Trafego"

touch "02-Redes-e-Protocolos/README.md"
touch "02-Redes-e-Protocolos/01-Modelo-OSI-e-TCP-IP/Camadas-OSI-vs-TCP-IP.md" \
      "02-Redes-e-Protocolos/01-Modelo-OSI-e-TCP-IP/Handshake-TCP-Flags-SYN-ACK-FIN-RST.md" \
      "02-Redes-e-Protocolos/01-Modelo-OSI-e-TCP-IP/Protocolo-UDP-e-Estados-Portas.md" \
      "02-Redes-e-Protocolos/01-Modelo-OSI-e-TCP-IP/Formato-Pacotes-Analise-Headers.md"
touch "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/1-Resolucao-e-Nomes/DNS-Estrutura-Zonas-e-Transferencia.md" \
      "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/1-Resolucao-e-Nomes/ARP-Funcionamento-e-Cache-Poisoning.md"
touch "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/2-Autenticacao-e-Acesso/SSH-Protocolo-Ciphers-e-Autenticacao.md" \
      "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/2-Autenticacao-e-Acesso/Telnet-e-RDP-Analise-Trafego.md" \
      "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/2-Autenticacao-e-Acesso/SNMP-Communities-v1-v2c-v3.md"
touch "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/3-Servicos-Rede/DHCP-Funcionamento-e-Starvation.md" \
      "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/3-Servicos-Rede/FTP-Modo-Ativo-vs-Passivo.md" \
      "02-Redes-e-Protocolos/02-Protocolos-Infraestrutura-e-Ataques/3-Servicos-Rede/SMTP-IMAP-POP3-Enumeracao.md"
touch "02-Redes-e-Protocolos/03-Roteamento-e-Comutacao/Conceitos-VLANs-e-VLAN-Hopping.md" \
      "02-Redes-e-Protocolos/03-Roteamento-e-Comutacao/Protocolos-Roteamento-OSPF-e-BGP.md" \
      "02-Redes-e-Protocolos/03-Roteamento-e-Comutacao/Administracao-Cisco-IOS-Comandos-Core.md" \
      "02-Redes-e-Protocolos/03-Roteamento-e-Comutacao/Administracao-Mikrotik-RouterOS-Hardening.md"
touch "02-Redes-e-Protocolos/04-Analise-e-Captura-Trafego/Wireshark-Filtros-Avancados-Analise.md" \
      "02-Redes-e-Protocolos/04-Analise-e-Captura-Trafego/Tshark-Captura-via-Linha-Comando.md"

# ==========================================
# 03. Linux Operacional e PrivEsc Local
# ==========================================
echo "[+] Gerando 03-Linux-Operacional-e-PrivEsc-Local..."
mkdir -p "03-Linux-Operacional-e-PrivEsc-Local/01-Fundamentos-e-Operacao" \
         "03-Linux-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon" \
         "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Permissoes-Especiais" \
         "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-e-Tarefas" \
         "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Arquivos-e-Caminhos" \
         "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/4-Exploits-Kernel" \
         "03-Linux-Operacional-e-PrivEsc-Local/04-Scripts-Automatizados"

touch "03-Linux-Operacional-e-PrivEsc-Local/README.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/01-Fundamentos-e-Operacao/Estrutura-Diretorios-FHS-Linux.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/01-Fundamentos-e-Operacao/Gerenciamento-Processos-e-Servicos.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/01-Fundamentos-e-Operacao/Sistema-Permissoes-rwx-e-Octal.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/01-Fundamentos-e-Operacao/Manipulacao-Variaveis-Ambiente.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Informacoes-Sistema-Kernel-e-Arquitetura.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Enumeracao-Usuarios-Grupos-e-Sessoes.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Mapeamento-Rede-Interna-e-Portas-Locais.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Procura-Arquivos-Senhas-e-Configuracoes.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Permissoes-Especiais/Abuso-SUID-SGID-Binarios-GTFOBins.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Permissoes-Especiais/Abuso-Capabilities-Linux.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-e-Tarefas/Cron-Jobs-Permissoes-e-Wildcards.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-e-Tarefas/Abuso-Permissoes-Sudoers-Sudo-l.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Arquivos-e-Caminhos/PATH-Hijacking-Executaveis-Locais.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Arquivos-e-Caminhos/Escrita-em-Arquivos-Criticos-Passwd-Shadow.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/4-Exploits-Kernel/Identificacao-Versao-Kernel-Vulneravel.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/4-Exploits-Kernel/Compilacao-Exploits-Locais-GCC-Mingw.md"
touch "03-Linux-Operacional-e-PrivEsc-Local/04-Scripts-Automatizados/LinPEAS-Execucao-e-Analise-Output.md" \
      "03-Linux-Operacional-e-PrivEsc-Local/04-Scripts-Automatizados/LSE-Linux-Smart-Enumeration-Uso.md"

# ==========================================
# 04. Windows Operacional e PrivEsc Local
# ==========================================
echo "[+] Gerando 04-Windows-Operacional-e-PrivEsc-Local..."
mkdir -p "04-Windows-Operacional-e-PrivEsc-Local/01-Arquitetura-e-Fundamentos-OS" \
         "04-Windows-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon" \
         "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Abuso-de-Servicos" \
         "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-Sistema" \
         "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Abuso-de-Privilegios-Tokens" \
         "04-Windows-Operacional-e-PrivEsc-Local/04-Scripts-Automatizados"

touch "04-Windows-Operacional-e-PrivEsc-Local/README.md"
touch "04-Windows-Operacional-e-PrivEsc-Local/01-Arquitetura-e-Fundamentos-OS/Estrutura-Diretorios-e-User-Profiles.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/01-Arquitetura-e-Fundamentos-OS/Registro-Windows-HKLM-HKCU-Estrutura.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/01-Arquitetura-e-Fundamentos-OS/Processos-Core-LSASS-SAM-SYSTEM-CSRSS.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/01-Arquitetura-e-Fundamentos-OS/Mecanismos-Tokens-e-Niveis-Integridade.md"
touch "04-Windows-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Comandos-Nativos-CMD-e-PowerShell.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Enumeracao-Usuarios-Grupos-Privilegios.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Identificacao-Software-Instalado-e-Patches.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/02-Enumeracao-Local-Recon/Mapeamento-Conexoes-Rede-e-Rotas.md"
touch "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Abuso-de-Servicos/Unquoted-Service-Paths-Exploit.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Abuso-de-Servicos/Permissoes-Inseguras-Servicos-Insecure-Registry.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/1-Abuso-de-Servicos/DLL-Hijacking-em-Servicos-Locais.md"
touch "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-Sistema/AlwaysInstallElevated-Abuse-MSI.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-Sistema/Senhas-Salvas-Registry-e-Unattended.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/2-Configuracoes-Sistema/Modificacao-Startup-Applications.md"
touch "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Abuso-de-Privilegios-Tokens/Token-Impersonation-SeImpersonatePrivilege.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Abuso-de-Privilegios-Tokens/SeBackupPrivilege-e-SeRestorePrivilege.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/03-Privilege-Escalation-LPE-Vetores/3-Abuso-de-Privilegios-Tokens/SeTakeOwnershipPrivilege-Abuse.md"
touch "04-Windows-Operacional-e-PrivEsc-Local/04-Scripts-Automatizados/WinPEAS-exe-ps1-Analise-Output.md" \
      "04-Windows-Operacional-e-PrivEsc-Local/04-Scripts-Automatizados/PowerUp-ps1-Funcoes-e-Abuso.md"

# ==========================================
# 05. OSINT e Reconhecimento Externo
# ==========================================
echo "[+] Gerando 05-OSINT-e-Reconhecimento-Externo..."
mkdir -p "05-OSINT-e-Reconhecimento-Externo/01-Mapeamento-Organizacional-e-Infra" \
         "05-OSINT-e-Reconhecimento-Externo/02-Enumeracao-DNS-e-Subdominios" \
         "05-OSINT-e-Reconhecimento-Externo/03-Motores-Busca-e-Scanners-Passivos" \
         "05-OSINT-e-Reconhecimento-Externo/04-OSINT-Pessoas-e-Credenciais" \
         "05-OSINT-e-Reconhecimento-Externo/05-Automacao-Recon-Externo"

touch "05-OSINT-e-Reconhecimento-Externo/README.md"
touch "05-OSINT-e-Reconhecimento-Externo/01-Mapeamento-Organizacional-e-Infra/Identificacao-ASNs-e-Blocos-IP.md" \
      "05-OSINT-e-Reconhecimento-Externo/01-Mapeamento-Organizacional-e-Infra/Registro-Whois-e-Contatos-Tecnicos.md" \
      "05-OSINT-e-Reconhecimento-Externo/01-Mapeamento-Organizacional-e-Infra/Descoberta-Tecnologias-Bordas-Wappalyzer.md"
touch "05-OSINT-e-Reconhecimento-Externo/02-Enumeracao-DNS-e-Subdominios/Subdomain-Bruteforcing-Passivo-vs-Ativo.md" \
      "05-OSINT-e-Reconhecimento-Externo/02-Enumeracao-DNS-e-Subdominios/Uso-Amass-Subfinder-Assetfinder.md" \
      "05-OSINT-e-Reconhecimento-Externo/02-Enumeracao-DNS-e-Subdominios/DNS-Recon-e-Subdomain-Takeover.md"
touch "05-OSINT-e-Reconhecimento-Externo/03-Motores-Busca-e-Scanners-Passivos/Google-Hacking-Dorks-Focadas-Pentest.md" \
      "05-OSINT-e-Reconhecimento-Externo/03-Motores-Busca-e-Scanners-Passivos/Shodan-Queries-Avancadas-e-Filtros.md" \
      "05-OSINT-e-Reconhecimento-Externo/03-Motores-Busca-e-Scanners-Passivos/Censys-e-IntelX-Buscas-Infra.md"
touch "05-OSINT-e-Reconhecimento-Externo/04-OSINT-Pessoas-e-Credenciais/Coleta-Emails-Corporativos-Hunter-io.md" \
      "05-OSINT-e-Reconhecimento-Externo/04-OSINT-Pessoas-e-Credenciais/Identificacao-Funcionarios-Linkedin-Scraping.md" \
      "05-OSINT-e-Reconhecimento-Externo/04-OSINT-Pessoas-e-Credenciais/Pesquisa-Vazamentos-e-Breach-Databases.md"
touch "05-OSINT-e-Reconhecimento-Externo/05-Automacao-Recon-Externo/Recon-ng-Framework-Setup.md" \
      "05-OSINT-e-Reconhecimento-Externo/05-Automacao-Recon-Externo/Execucao-Pipelines-Customizados-Bash.md"

# ==========================================
# 06. Segurança e Pentest Web
# ==========================================
echo "[+] Gerando 06-Seguranca-e-Pentest-Web..."
mkdir -p "06-Seguranca-e-Pentest-Web/01-Mapeamento-e-Enumeracao-Web" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/1-Injections" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/2-Broken-Authentication-Session" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/3-Insecure-Direct-Object-References" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/4-Cross-Site-Scripting-XSS" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/5-File-Inclusion-Vulnerabilities" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/6-Server-Side-Request-Forgery-SSRF" \
         "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/7-XML-External-Entity-XXE" \
         "06-Seguranca-e-Pentest-Web/03-Vulnerabilidades-Modernas-e-APIs" \
         "06-Seguranca-e-Pentest-Web/04-Cheatsheets-Web"

touch "06-Seguranca-e-Pentest-Web/README.md"
touch "06-Seguranca-e-Pentest-Web/01-Mapeamento-e-Enumeracao-Web/Diretorios-e-Arquivos-Ocultos-Ffuf-Gobuster.md" \
      "06-Seguranca-e-Pentest-Web/01-Mapeamento-e-Enumeracao-Web/Enumeracao-Parametros-Arjun.md" \
      "06-Seguranca-e-Pentest-Web/01-Mapeamento-e-Enumeracao-Web/Analise-Sessao-Cookies-e-Tokens.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/1-Injections/SQL-Injection-SQLi-Baseado-Erro-e-Union.md" \
      "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/1-Injections/SQL-Injection-Blind-Time-e-Boolean.md" \
      "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/1-Injections/Command-Injection-RCE.md" \
      "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/1-Injections/SQLMap-Parametros-e-Bypasses-WAF.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/2-Broken-Authentication-Session/Session-Fixation-e-Hijacking.md" \
      "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/2-Broken-Authentication-Session/Brute-Force-Bypass-Rate-Limit.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/3-Insecure-Direct-Object-References/IDOR-Bypass-Parametros-e-Mapeamento.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/4-Cross-Site-Scripting-XSS/XSS-Refletido-e-Armazenado-Payloads.md" \
      "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/4-Cross-Site-Scripting-XSS/XSS-Baseado-em-DOM-e-Bypass-Filtros.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/5-File-Inclusion-Vulnerabilities/Local-File-Inclusion-LFI-Wrappers-e-Poisoning.md" \
      "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/5-File-Inclusion-Vulnerabilities/Remote-File-Inclusion-RFI-Exploitation.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/6-Server-Side-Request-Forgery-SSRF/SSRF-Borda-Interna-e-Cloud-Metadata.md"
touch "06-Seguranca-e-Pentest-Web/02-OWASP-Top-10-Exploracao-Avancada/7-XML-External-Entity-XXE/XXE-Leitura-Arquivos-e-OOB.md"
touch "06-Seguranca-e-Pentest-Web/03-Vulnerabilidades-Modernas-e-APIs/Server-Side-Template-Injection-SSTI.md" \
      "06-Seguranca-e-Pentest-Web/03-Vulnerabilidades-Modernas-e-APIs/Insecure-Deserialization-Java-PHP-Python.md" \
      "06-Seguranca-e-Pentest-Web/03-Vulnerabilidades-Modernas-e-APIs/API-Hacking-REST-GraphQL-Enumeracao.md"
touch "06-Seguranca-e-Pentest-Web/04-Cheatsheets-Web/Payloads-XSS-SQLi-LFI-QuickRef.md" \
      "06-Seguranca-e-Pentest-Web/04-Cheatsheets-Web/Codificacoes-Bypass-WAF-Web.md"

# ==========================================
# 07. Active Directory
# ==========================================
echo "[+] Gerando 07-Active-Directory..."
mkdir -p "07-Active-Directory/01-Arquitetura-e-Componentes/1-Estrutura-Logica" \
         "07-Active-Directory/01-Arquitetura-e-Componentes/2-Componentes-Fisicos" \
         "07-Active-Directory/01-Arquitetura-e-Componentes/3-Mecanismos-Seguranca" \
         "07-Active-Directory/02-Enumeracao-AD-Recon/1-Sem-Credenciais" \
         "07-Active-Directory/02-Enumeracao-AD-Recon/2-Com-Credenciais-Nativas" \
         "07-Active-Directory/02-Enumeracao-AD-Recon/3-Mapeamento-Grafico" \
         "07-Active-Directory/02-Enumeracao-AD-Recon/4-Enumeração-GPO" \
         "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/1-Envenenamento-Protocolos" \
         "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/2-Ataques-Forca-Bruta" \
         "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/3-Abuso-Pre-Autenticacao" \
         "07-Active-Directory/04-Movimentacao-Lateral/1-Pass-The-X" \
         "07-Active-Directory/04-Movimentacao-Lateral/2-Execucao-Remota" \
         "07-Active-Directory/04-Movimentacao-Lateral/3-Sessoes-e-Tokens" \
         "07-Active-Directory/05-Pos-Exploracao-AD/1-Dump-de-Credenciais" \
         "07-Active-Directory/05-Pos-Exploracao-AD/2-Persistencia-Dominio" \
         "07-Active-Directory/06-Cheatsheets"

touch "07-Active-Directory/README.md"
touch "07-Active-Directory/01-Arquitetura-e-Componentes/1-Estrutura-Logica/Florestas-Dominios-Arvores.md" \
      "07-Active-Directory/01-Arquitetura-e-Componentes/1-Estrutura-Logica/Unidades-Organizacionais-OU.md" \
      "07-Active-Directory/01-Arquitetura-e-Componentes/1-Estrutura-Logica/Relacoes-de-Confianca-Trusts.md"
touch "07-Active-Directory/01-Arquitetura-e-Componentes/2-Componentes-Fisicos/Domain-Controllers-DC.md" \
      "07-Active-Directory/01-Arquitetura-e-Componentes/2-Componentes-Fisicos/Base-NTDS-dit.md" \
      "07-Active-Directory/01-Arquitetura-e-Componentes/2-Componentes-Fisicos/Pasta-SYSVOL.md"
touch "07-Active-Directory/01-Arquitetura-e-Componentes/3-Mecanismos-Seguranca/Group-Policy-Objects-GPO.md" \
      "07-Active-Directory/01-Arquitetura-e-Componentes/3-Mecanismos-Seguranca/Global-Catalog-GC.md" \
      "07-Active-Directory/01-Arquitetura-e-Componentes/3-Mecanismos-Seguranca/Funcoes-FSMO.md"
touch "07-Active-Directory/02-Enumeracao-AD-Recon/1-Sem-Credenciais/NetExec-Enum-Anonima.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/1-Sem-Credenciais/Enum4linux-ng-AD.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/1-Sem-Credenciais/RPCClient-AD-Recon.md"
touch "07-Active-Directory/02-Enumeracao-AD-Recon/2-Com-Credenciais-Nativas/ActiveDirectory-Powershell-Module.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/2-Com-Credenciais-Nativas/Ldapsearch-Queries-Avancadas.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/2-Com-Credenciais-Nativas/NetExec-LDAP-Collection.md"
touch "07-Active-Directory/02-Enumeracao-AD-Recon/3-Mapeamento-Grafico/SharpHound-Coleta-Parametros.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/3-Mapeamento-Grafico/BloodHound-Python-Ingestor.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/3-Mapeamento-Grafico/BloodHound-Analise-Caminhos.md"
touch "07-Active-Directory/02-Enumeracao-AD-Recon/4-Enumeração-GPO/PowerView-Get-DomainGPO.md" \
      "07-Active-Directory/02-Enumeracao-AD-Recon/4-Enumeração-GPO/Group-Policy-Preferences-GPP-Passwords.md"
touch "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/1-Envenenamento-Protocolos/LLMNR-NBTNS-Responder.md" \
      "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/1-Envenenamento-Protocolos/IPv6-MitM6-e-dnsmasq.md" \
      "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/1-Envenenamento-Protocolos/WPAD-Spoofing.md"
touch "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/2-Ataques-Forca-Bruta/Password-Spraying-NetExec.md" \
      "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/2-Ataques-Forca-Bruta/Kerbrute-Enumeracao-e-Spray.md" \
      "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/2-Ataques-Forca-Bruta/Domain-Lockout-Policy-Check.md"
touch "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/3-Abuso-Pre-Autenticacao/AS-REP-Roasting-Conceito-e-Pratica.md" \
      "07-Active-Directory/03-Ataques-Fase-Inicial-e-Credenciais/3-Abuso-Pre-Autenticacao/Kerberoasting-Conceito-e-Pratica.md"
touch "07-Active-Directory/04-Movimentacao-Lateral/1-Pass-The-X/Pass-The-Hash-PtH-Impacket.md" \
      "07-Active-Directory/04-Movimentacao-Lateral/1-Pass-The-X/Pass-The-Ticket-PtT-Rubeus.md" \
      "07-Active-Directory/04-Movimentacao-Lateral/1-Pass-The-X/Overpass-The-Hash-Mimikatz.md"
touch "07-Active-Directory/04-Movimentacao-Lateral/2-Execucao-Remota/WMIexec-e-DCOM.md" \
      "07-Active-Directory/04-Movimentacao-Lateral/2-Execucao-Remota/PsExec-vs-CsExec.md" \
      "07-Active-Directory/04-Movimentacao-Lateral/2-Execucao-Remota/WinRM-Evil-WinRM-Uso.md"
touch "07-Active-Directory/04-Movimentacao-Lateral/3-Sessoes-e-Tokens/RDP-Hijacking-Tscon.md" \
      "07-Active-Directory/04-Movimentacao-Lateral/3-Sessoes-e-Tokens/SSH-Port-Forwarding-no-AD.md"
touch "07-Active-Directory/05-Pos-Exploracao-AD/1-Dump-de-Credenciais/DCSync-Ataque-Secretsdump.md" \
      "07-Active-Directory/05-Pos-Exploracao-AD/1-Dump-de-Credenciais/NTDS-dit-Volume-Shadow-Copy-VSS.md" \
      "07-Active-Directory/05-Pos-Exploracao-AD/1-Dump-de-Credenciais/LSASS-Remote-Dumping.md"
touch "07-Active-Directory/05-Pos-Exploracao-AD/2-Persistencia-Dominio/Golden-Ticket-Criacao-e-Uso.md" \
      "07-Active-Directory/05-Pos-Exploracao-AD/2-Persistencia-Dominio/Silver-Ticket-Criacao-e-Uso.md" \
      "07-Active-Directory/05-Pos-Exploracao-AD/2-Persistencia-Dominio/Skeleton-Key-Malicious-SSP.md" \
      "07-Active-Directory/05-Pos-Exploracao-AD/2-Persistencia-Dominio/DCShadow-Ataque.md"
touch "07-Active-Directory/06-Cheatsheets/BloodHound-Queries-Customizadas.md" \
      "07-Active-Directory/06-Cheatsheets/NetExec-AD-Oneliners.md"

# ==========================================
# 08. Privilege Escalation Domínio
# ==========================================
echo "[+] Gerando 08-Privilege-Escalation-Dominio..."
mkdir -p "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/1-Direitos-Principais" \
         "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/2-Direitos-Especiais" \
         "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/3-Ferramentas-Abuso" \
         "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/1-Unconstrained-Delegation" \
         "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/2-Constrained-Delegation" \
         "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/3-Resource-Based-Constrained-Delegation-RBCD" \
         "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/1-Enumeracao-ADCS" \
         "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/2-Templates-Vulneraveis-ESC" \
         "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/3-Ataques-Relay-Certificados" \
         "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/1-GPO-Edicao-Direta" \
         "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/2-Configuracoes-Fracas" \
         "08-Privilege-Escalation-Dominio/05-Ataques-Entre-Dominios-Florestas/1-Trust-Abuse" \
         "08-Privilege-Escalation-Dominio/05-Ataques-Entre-Dominios-Florestas/2-Cross-Forest" \
         "08-Privilege-Escalation-Dominio/06-Sistemas-Satellites-PrivEsc/1-SCCM-MECM-Abuse" \
         "08-Privilege-Escalation-Dominio/06-Sistemas-Satellites-PrivEsc/2-Azure-AD-Entra-ID-Hybrid" \
         "08-Privilege-Escalation-Dominio/07-Cheatsheets"

touch "08-Privilege-Escalation-Dominio/README.md"
touch "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/1-Direitos-Principais/GenericAll-Exploitation.md" \
      "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/1-Direitos-Principais/GenericWrite-Exploitation.md" \
      "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/1-Direitos-Principais/WriteDacl-Modificacao-ACE.md"
touch "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/2-Direitos-Especiais/WriteOwner-Abuse.md" \
      "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/2-Direitos-Especiais/AllExtendedRights-ForceChangePassword.md" \
      "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/2-Direitos-Especiais/AddMember-Grupos-Privilegiados.md"
touch "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/3-Ferramentas-Abuso/PowerView-Abuse-Functions.md" \
      "08-Privilege-Escalation-Dominio/01-Abuso-de-ACLs-e-Objetos/3-Ferramentas-Abuso/BloodyAD-Sintaxe.md"
touch "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/1-Unconstrained-Delegation/Conceito-Unconstrained.md" \
      "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/1-Unconstrained-Delegation/Printer-Bug-Coercion-SpoolSample.md"
touch "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/2-Constrained-Delegation/Conceito-Constrained-S4U2self-S4U2proxy.md" \
      "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/2-Constrained-Delegation/Rubeus-s4u-Abuse.md"
touch "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/3-Resource-Based-Constrained-Delegation-RBCD/Conceito-RBCD-e-Computers-Account-Creation.md" \
      "08-Privilege-Escalation-Dominio/02-Delegacao-Kerberos-Abuse/3-Resource-Based-Constrained-Delegation-RBCD/Impacket-rbcd-py-Exploitation.md"
touch "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/1-Enumeracao-ADCS/Certify-exe-Enumeracao.md" \
      "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/1-Enumeracao-ADCS/Certipy-Linux-Enum.md"
touch "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/2-Templates-Vulneraveis-ESC/ESC1-Misconfigured-Certificate-Templates.md" \
      "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/2-Templates-Vulneraveis-ESC/ESC2-ESC3-Enrollment-Agent-Certificates.md" \
      "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/2-Templates-Vulneraveis-ESC/ESC4-Template-Access-Control-Abuse.md"
touch "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/3-Ataques-Relay-Certificados/ESC8-NTLM-Relay-para-ADCS-HTTP.md" \
      "08-Privilege-Escalation-Dominio/03-ADCS-Certificate-Services-Abuse/3-Ataques-Relay-Certificados/PetitPotam-com-Certipy-Relay.md"
touch "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/1-GPO-Edicao-Direta/Permissao-Escrita-em-GPO.md" \
      "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/1-GPO-Edicao-Direta/SharpGPOAbuse-Execucao.md" \
      "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/1-GPO-Edicao-Direta/Criacao-Immediate-Task-via-GPO.md"
touch "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/2-Configuracoes-Fracas/Abuso-Grupo-Account-Operators.md" \
      "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/2-Configuracoes-Fracas/Abuso-Grupo-Backup-Operators.md" \
      "08-Privilege-Escalation-Dominio/04-Abuso-de-GPO-e-Configuracoes/2-Configuracoes-Fracas/LAPS-Password-Reading-Permissions.md"
touch "08-Privilege-Escalation-Dominio/05-Ataques-Entre-Dominios-Florestas/1-Trust-Abuse/Parent-Child-Trust-Exploitation.md" \
      "08-Privilege-Escalation-Dominio/05-Ataques-Entre-Dominios-Florestas/1-Trust-Abuse/SID-History-Injection.md" \
      "08-Privilege-Escalation-Dominio/05-Ataques-Entre-Dominios-Florestas/1-Trust-Abuse/ExtraSIDs-Exploit-Mimikatz.md"
touch "08-Privilege-Escalation-Dominio/05-Ataques-Entre-Dominios-Florestas/2-Cross-Forest/External-Trusts-e-Forest-Trusts-Enum.md"
touch "08-Privilege-Escalation-Dominio/06-Sistemas-Satellites-PrivEsc/1-SCCM-MECM-Abuse/Enumeracao-SCCM-Site-Takeover.md" \
      "08-Privilege-Escalation-Dominio/06-Sistemas-Satellites-PrivEsc/1-SCCM-MECM-Abuse/SharpSCCM-Uso.md"
touch "08-Privilege-Escalation-Dominio/06-Sistemas-Satellites-PrivEsc/2-Azure-AD-Entra-ID-Hybrid/Azure-AD-Connect-Password-Dump.md" \
      "08-Privilege-Escalation-Dominio/06-Sistemas-Satellites-PrivEsc/2-Azure-AD-Entra-ID-Hybrid/Seamless-SSO-Kerberos-Decryption.md"
touch "08-Privilege-Escalation-Dominio/07-Cheatsheets/Certipy-ESC-CheatSheet.md" \
      "08-Privilege-Escalation-Dominio/07-Cheatsheets/PowerView-ACL-Abuse-Reference.md"

# ==========================================
# 09. Exploit Development
# ==========================================
echo "[+] Gerando 09-Exploit-Development..."
mkdir -p "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/1-Arquitetura-CPU" \
         "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/2-Layout-da-Memoria" \
         "09-Exploit-Development/02-Stack-Based-Overflows/1-Mecanismo-Buffer-Overflow" \
         "09-Exploit-Development/02-Stack-Based-Overflows/2-Metodologia-Desenvolvimento" \
         "09-Exploit-Development/02-Stack-Based-Overflows/3-Pratica-OSWE-OSCP" \
         "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/1-Conceitos-SEH" \
         "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/2-Exploracao-SEH" \
         "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/1-Data-Execution-Prevention-DEP-NX" \
         "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/2-Address-Space-Layout-Randomization-ASLR" \
         "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/3-Stack-Canaries-Cookies" \
         "09-Exploit-Development/05-Heap-Exploitation/1-Gerenciamento-Heap" \
         "09-Exploit-Development/05-Heap-Exploitation/2-Primitivas-Ataque" \
         "09-Exploit-Development/06-Exploit-Dev-Avancado/1-Linux-Kernel-Exploitation" \
         "09-Exploit-Development/06-Exploit-Dev-Avancado/2-Format-String-Vulnerabilities" \
         "09-Exploit-Development/07-Ferramentas-e-Cheatsheets"

touch "09-Exploit-Development/README.md"
touch "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/1-Arquitetura-CPU/Registradores-x86-EAX-EBX-ESP-EBP.md" \
      "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/1-Arquitetura-CPU/Registradores-x64-RAX-R8-R15.md" \
      "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/1-Arquitetura-CPU/Convencoes-de-Chamada-cdecl-stdcall-fastcall.md"
touch "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/2-Layout-da-Memoria/Stack-vs-Heap-Funcionamento-Interno.md" \
      "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/2-Layout-da-Memoria/Enderecamento-Little-Endian-vs-Big-Endian.md" \
      "09-Exploit-Development/01-Arquitetura-e-Fundamentos-Memoria/2-Layout-da-Memoria/Execucao-Instrucoes-Ciclo-Fetch-Decode-Execute.md"
touch "09-Exploit-Development/02-Stack-Based-Overflows/1-Mecanismo-Buffer-Overflow/Corrupcao-de-Memoria-Conceito.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/1-Mecanismo-Buffer-Overflow/Sobrescrita-do-Instruction-Pointer-EIP-RIP.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/1-Mecanismo-Buffer-Overflow/Controlando-o-Fluxo-de-Execucao.md"
touch "09-Exploit-Development/02-Stack-Based-Overflows/2-Metodologia-Desenvolvimento/Fuzzing-com-Spike-e-Scripts-Python.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/2-Metodologia-Desenvolvimento/Determinacao-do-Offset-Pattern-Create-Offset.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/2-Metodologia-Desenvolvimento/Identificacao-de-Bad-Characters.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/2-Metodologia-Desenvolvimento/Encontrando-Instrucoes-JMP-ESP-e-Call-ESP.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/2-Metodologia-Desenvolvimento/Shellcode-Generation-e-Nop-Sleds.md"
touch "09-Exploit-Development/02-Stack-Based-Overflows/3-Pratica-OSWE-OSCP/Custom-Exploit-Sintaxe-Final.md" \
      "09-Exploit-Development/02-Stack-Based-Overflows/3-Pratica-OSWE-OSCP/Estabilizacao-de-Shells-Exploit-Dev.md"
touch "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/1-Conceitos-SEH/Mecanismo-de-Excecao-Windows-Mona.md" \
      "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/1-Conceitos-SEH/Estrutura-TEB-e-Pointer-SEH-Record.md"
touch "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/2-Exploracao-SEH/Sobrescrita-Next-SEH-e-SE-Handler.md" \
      "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/2-Exploracao-SEH/Uso-de-Sequencias-POP-POP-RET.md" \
      "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/2-Exploracao-SEH/Short-Jumps-Bypass-Tecnica.md" \
      "09-Exploit-Development/03-Windows-Structured-Exception-Handling-SEH/2-Exploracao-SEH/SafeSEH-Mitigacao-e-Bypass.md"
touch "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/1-Data-Execution-Prevention-DEP-NX/Conceito-Memoria-W-xor-X.md" \
      "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/1-Data-Execution-Prevention-DEP-NX/Ret-to-libc-Ataques.md" \
      "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/1-Data-Execution-Prevention-DEP-NX/Return-Oriented-Programming-ROP-Chains.md"
touch "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/2-Address-Space-Layout-Randomization-ASLR/Conceito-Randomizacao-Bases.md" \
      "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/2-Address-Space-Layout-Randomization-ASLR/Memory-Leaks-Ataques.md" \
      "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/2-Address-Space-Layout-Randomization-ASLR/Bruteforcing-ASLR-32bits.md"
touch "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/3-Stack-Canaries-Cookies/Mecanismo-GS-Compiler-Flags.md" \
      "09-Exploit-Development/04-Mitigacoes-Modernas-e-Bypasses/3-Stack-Canaries-Cookies/Leak-Canary-e-Bypass-Tecnicas.md"
touch "09-Exploit-Development/05-Heap-Exploitation/1-Gerenciamento-Heap/Alocadores-Glibc-Malloc-Chunks.md" \
      "09-Exploit-Development/05-Heap-Exploitation/1-Gerenciamento-Heap/Fastbins-Unsorted-Bins-Funcionamento.md"
touch "09-Exploit-Development/05-Heap-Exploitation/2-Primitivas-Ataque/Use-After-Free-UAF.md" \
      "09-Exploit-Development/05-Heap-Exploitation/2-Primitivas-Ataque/Heap-Overflow-Sobrescrita-Metadados.md" \
      "09-Exploit-Development/05-Heap-Exploitation/2-Primitivas-Ataque/Heap-Spraying-Conceitos.md"
touch "09-Exploit-Development/06-Exploit-Dev-Avancado/1-Linux-Kernel-Exploitation/Local-Privilege-Escalation-Kernel-Space.md" \
      "09-Exploit-Development/06-Exploit-Dev-Avancado/1-Linux-Kernel-Exploitation/Return-to-User-Ret2usr.md"
touch "09-Exploit-Development/06-Exploit-Dev-Avancado/2-Format-String-Vulnerabilities/Primitivas-Leitura-e-Escrita-Arbitraria.md"
touch "09-Exploit-Development/07-Ferramentas-e-Cheatsheets/Mona-py-comandos-essenciais.md" \
      "09-Exploit-Development/07-Ferramentas-e-Cheatsheets/GDB-GEF-Comandos-Operacionais.md" \
      "09-Exploit-Development/07-Ferramentas-e-Cheatsheets/Immunity-x64dbg-Setups.md"

# ==========================================
# 10. Reverse Engineering
# ==========================================
echo "[+] Gerando 10-Reverse-Engineering..."
mkdir -p "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/1-Portable-Executable-PE-Windows" \
         "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/2-Executable-and-Linkable-Format-ELF-Linux" \
         "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/3-Processo-Compilacao" \
         "10-Reverse-Engineering/02-Analise-Estatica-Codigo/1-Tecnicas-Iniciais" \
         "10-Reverse-Engineering/02-Analise-Estatica-Codigo/2-Uso-Descompiladores" \
         "10-Reverse-Engineering/02-Analise-Estatica-Codigo/3-Analise-Logica" \
         "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/1-Configuracao-Debuggers" \
         "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/2-Mecanismos-Controle" \
         "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/3-Monitoramento-Runtime" \
         "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/1-Anti-Debugging" \
         "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/2-Anti-Analysis" \
         "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/3-Packers-e-Unpacking" \
         "10-Reverse-Engineering/05-Patching-e-Modificacao-Binarios/1-Crackmes-Exploitation" \
         "10-Reverse-Engineering/05-Patching-e-Modificacao-Binarios/2-Automacao-Reversing" \
         "10-Reverse-Engineering/06-Engenharia-Reversa-Malware/1-Analise-Ransomware" \
         "10-Reverse-Engineering/06-Engenharia-Reversa-Malware/2-Analise-Spyware-Keylogger" \
         "10-Reverse-Engineering/06-Engenharia-Reversa-Malware/3-Analise-Documentos-Maliciosos" \
         "10-Reverse-Engineering/07-Cheatsheets"

touch "10-Reverse-Engineering/README.md"
touch "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/1-Portable-Executable-PE-Windows/DOS-Header-e-NT-Headers.md" \
      "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/1-Portable-Executable-PE-Windows/Data-Directories-Import-Export-Tables.md" \
      "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/1-Portable-Executable-PE-Windows/Secoes-Text-Data-Rsrc-Reloc.md"
touch "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/2-Executable-and-Linkable-Format-ELF-Linux/ELF-Header-Program-Headers.md" \
      "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/2-Executable-and-Linkable-Format-ELF-Linux/Dynamic-Linking-vs-Static-Linking.md"
touch "10-Reverse-Engineering/01-Formatos-Arquivos-e-Compilacao/3-Processo-Compilacao/Compilacao-Linkagem-Assembly-Codigo-Maquina.md"
touch "10-Reverse-Engineering/02-Analise-Estatica-Codigo/1-Tecnicas-Iniciais/Strings-e-Hashes-Filtros.md" \
      "10-Reverse-Engineering/02-Analise-Estatica-Codigo/1-Tecnicas-Iniciais/Identificacao-Compiladores-e-Packers-DIE.md"
touch "10-Reverse-Engineering/02-Analise-Estatica-Codigo/2-Uso-Descompiladores/Ghidra-Gerenciamento-Projetos.md" \
      "10-Reverse-Engineering/02-Analise-Estatica-Codigo/2-Uso-Descompiladores/IDA-Pro-Navegacao-Grafos.md" \
      "10-Reverse-Engineering/02-Analise-Estatica-Codigo/2-Uso-Descompiladores/Cutter-Rizin-Framework.md"
touch "10-Reverse-Engineering/02-Analise-Estatica-Codigo/3-Analise-Logica/Identificacao-Estruturas-Controle-Loops-If.md" \
      "10-Reverse-Engineering/02-Analise-Estatica-Codigo/3-Analise-Logica/Reconstrucao-Estruturas-Dados-Structs.md"
touch "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/1-Configuracao-Debuggers/x64dbg-Plugins-Scylla.md" \
      "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/1-Configuracao-Debuggers/GDB-com-GEF-Modo-Debug.md"
touch "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/2-Mecanismos-Controle/Software-Breakpoints-INT3-vs-Hardware-Breakpoints.md" \
      "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/2-Mecanismos-Controle/Execucao-Passo-a-Passo-Step-Into-Step-Over.md" \
      "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/2-Mecanismos-Controle/Memory-Breakpoints-R-W-X.md"
touch "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/3-Monitoramento-Runtime/API-Spying-Intercepcao-Chamadas.md" \
      "10-Reverse-Engineering/03-Analise-Dinamica-Debugging/3-Monitoramento-Runtime/Procmon-e-Regshot-Dinamica-OS.md"
touch "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/1-Anti-Debugging/IsDebuggerPresent-Check-PEB.md" \
      "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/1-Anti-Debugging/NTGlobalFlag-e-OutputDebugString.md" \
      "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/1-Anti-Debugging/Timing-Checks-RDTSC-Bypass.md"
touch "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/2-Anti-Analysis/Junk-Code-e-Code-Obfuscation.md" \
      "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/2-Anti-Analysis/API-Hashing-Ocultacao-Imports.md" \
      "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/2-Anti-Analysis/Process-Hollowing-Injecao-Memoria.md"
touch "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/3-Packers-e-Unpacking/Conceitos-UPX-Manual-Unpacking.md" \
      "10-Reverse-Engineering/04-Tecnicas-Anti-Reversing-e-Evasao/3-Packers-e-Unpacking/Localizando-Original-Entry-Point-OEP.md"
touch "10-Reverse-Engineering/05-Patching-e-Modificacao-Binarios/1-Crackmes-Exploitation/Modificacao-Instrucoes-Salto-JNZ-to-JZ.md" \
      "10-Reverse-Engineering/05-Patching-e-Modificacao-Binarios/1-Crackmes-Exploitation/Injecao-Codigo-Nops-Assembly.md" \
      "10-Reverse-Engineering/05-Patching-e-Modificacao-Binarios/1-Crackmes-Exploitation/Keygenning-Analise-Algoritmo-Validacao.md"
touch "10-Reverse-Engineering/05-Patching-e-Modificacao-Binarios/2-Automacao-Reversing/Scripting-com-Frida-Hooking-Runtime.md"
touch "10-Reverse-Engineering/06-Engenharia-Reversa-Malware/1-Analise-Ransomware/Identificacao-Rotinas-Criptografia.md"
touch "10-Reverse-Engineering/06-Engenharia-Reversa-Malware/2-Analise-Spyware-Keylogger/Hooks-Windows-e-Persistence-Analysis.md"
touch "10-Reverse-Engineering/06-Engenharia-Reversa-Malware/3-Analise-Documentos-Maliciosos/Macros-VBA-e-PDF-Exploits-Extract.md"
touch "10-Reverse-Engineering/07-Cheatsheets/Assembly-X86-OpCodes-Referencia.md" \
      "10-Reverse-Engineering/07-Cheatsheets/Ghidra-Atalhos-Operacionais.md"

# ==========================================
# 11. Cloud
# ==========================================
echo "[+] Gerando 11-Cloud..."
mkdir -p "11-Cloud/01-Fundamentos-e-Arquitetura/1-Conceitos-Gerais" \
         "11-Cloud/01-Fundamentos-e-Arquitetura/2-Amazon-Web-Services-AWS" \
         "11-Cloud/01-Fundamentos-e-Arquitetura/3-Microsoft-Azure" \
         "11-Cloud/01-Fundamentos-e-Arquitetura/4-Google-Cloud-Platform-GCP" \
         "11-Cloud/02-Enumeracao-e-Recon-Cloud/1-Exposicao-Publica-OSINT" \
         "11-Cloud/02-Enumeracao-e-Recon-Cloud/2-Enumeracao-Autenticada-AWS" \
         "11-Cloud/02-Enumeracao-e-Recon-Cloud/3-Enumeracao-Autenticada-Azure" \
         "11-Cloud/03-Ataques-e-Exploracao-Cloud/1-Abuso-de-Armazenamento" \
         "11-Cloud/03-Ataques-e-Exploracao-Cloud/2-Abuso-de-Metadados-IMDS" \
         "11-Cloud/03-Ataques-e-Exploracao-Cloud/3-Elevacao-Privilegio-AWS-IAM" \
         "11-Cloud/03-Ataques-e-Exploracao-Cloud/4-Elevacao-Privilegio-Azure" \
         "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/1-Cloud-Para-OnPrem" \
         "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/2-OnPrem-Para-Cloud" \
         "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/3-Entre-Servicos" \
         "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/1-Persistencia" \
         "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/2-Evasao-e-Logs" \
         "11-Cloud/06-Cheatsheets"

touch "11-Cloud/README.md"
touch "11-Cloud/01-Fundamentos-e-Arquitetura/1-Conceitos-Gerais/Modelo-Responsabilidade-Compartilhada.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/1-Conceitos-Gerais/Tipos-de-Servicos-IaaS-PaaS-SaaS.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/1-Conceitos-Gerais/Estrutura-Global-Regioes-e-Zonas.md"
touch "11-Cloud/01-Fundamentos-e-Arquitetura/2-Amazon-Web-Services-AWS/AWS-IAM-Usuarios-Grupos-Roles-e-Policies.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/2-Amazon-Web-Services-AWS/ARN-Amazon-Resource-Names-Sintaxe.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/2-Amazon-Web-Services-AWS/AWS-Networking-VPC-Subnets-Security-Groups.md"
touch "11-Cloud/01-Fundamentos-e-Arquitetura/3-Microsoft-Azure/Azure-Hierarquia-Subscriptions-Resource-Groups.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/3-Microsoft-Azure/Microsoft-Entra-ID-Antigo-Azure-AD.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/3-Microsoft-Azure/Azure-Role-Based-Access-Control-RBAC.md"
touch "11-Cloud/01-Fundamentos-e-Arquitetura/4-Google-Cloud-Platform-GCP/GCP-Projetos-e-Organizacoes.md" \
      "11-Cloud/01-Fundamentos-e-Arquitetura/4-Google-Cloud-Platform-GCP/GCP-IAM-e-Service-Accounts.md"
touch "11-Cloud/02-Enumeracao-e-Recon-Cloud/1-Exposicao-Publica-OSINT/Descoberta-Subdominios-e-Buckets-S3.md" \
      "11-Cloud/02-Enumeracao-e-Recon-Cloud/1-Exposicao-Publica-OSINT/DNS-Bruteforcing-para-Cloud.md" \
      "11-Cloud/02-Enumeracao-e-Recon-Cloud/1-Exposicao-Publica-OSINT/Identificacao-Provedor-via-IP-e-Headers.md"
touch "11-Cloud/02-Enumeracao-e-Recon-Cloud/2-Enumeracao-Autenticada-AWS/AWS-CLI-Configuracao-e-Comandos-Enum.md" \
      "11-Cloud/02-Enumeracao-e-Recon-Cloud/2-Enumeracao-Autenticada-AWS/Pacu-Framework-Uso-Basico.md" \
      "11-Cloud/02-Enumeracao-e-Recon-Cloud/2-Enumeracao-Autenticada-AWS/ScoutSuite-Auditoria-Automatizada.md"
touch "11-Cloud/02-Enumeracao-e-Recon-Cloud/3-Enumeracao-Autenticada-Azure/Azure-CLI-e-Az-PowerShell-Enum.md" \
      "11-Cloud/02-Enumeracao-e-Recon-Cloud/3-Enumeracao-Autenticada-Azure/Microburst-Ferramentas-Pentest-Azure.md"
touch "11-Cloud/03-Ataques-e-Exploracao-Cloud/1-Abuso-de-Armazenamento/S3-Buckets-Abertos-Leitura-e-Escrita.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/1-Abuso-de-Armazenamento/Azure-Blob-Storage-Data-Exfiltration.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/1-Abuso-de-Armazenamento/GCP-Cloud-Storage-Misconfigurations.md"
touch "11-Cloud/03-Ataques-e-Exploracao-Cloud/2-Abuso-de-Metadados-IMDS/SSRF-para-AWS-IMDSv1-vs-IMDSv2.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/2-Abuso-de-Metadados-IMDS/SSRF-para-Azure-Metadata-Service.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/2-Abuso-de-Metadados-IMDS/SSRF-para-GCP-Metadata.md"
touch "11-Cloud/03-Ataques-e-Exploracao-Cloud/3-Elevacao-Privilegio-AWS-IAM/IAM-PrivEsc-CreateNewPolicyVersion.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/3-Elevacao-Privilegio-AWS-IAM/IAM-PrivEsc-CreateAccessKey.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/3-Elevacao-Privilegio-AWS-IAM/IAM-PrivEsc-AttachUserPolicy.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/3-Elevacao-Privilegio-AWS-IAM/IAM-PrivEsc-PassRole-e-EC2-RunInstances.md"
touch "11-Cloud/03-Ataques-e-Exploracao-Cloud/4-Elevacao-Privilegio-Azure/Abuso-de-Dynamic-Groups.md" \
      "11-Cloud/03-Ataques-e-Exploracao-Cloud/4-Elevacao-Privilegio-Azure/Atribuicao-Insegura-de-App-Roles.md"
touch "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/1-Cloud-Para-OnPrem/Extracao-Chaves-SSH-de-Instancias.md" \
      "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/1-Cloud-Para-OnPrem/Pivotagem-via-AWS-Systems-Manager-SSM.md"
touch "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/2-OnPrem-Para-Cloud/Coleta-Credenciais-Hardcoded-em-Scripts-Locais.md" \
      "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/2-OnPrem-Para-Cloud/Azure-AD-Connect-Database-Dump.md"
touch "11-Cloud/04-Movimentacao-Lateral-e-Hibrida/3-Entre-Servicos/Abuso-de-Serverless-Functions-Lambda-Azure-Functions.md"
touch "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/1-Persistencia/Criacao-Chaves-Acesso-Adicionais.md" \
      "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/1-Persistencia/Backdooring-IAM-Roles.md" \
      "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/1-Persistencia/Azure-Service-Principal-Secret-Creation.md"
touch "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/2-Evasao-e-Logs/Desativacao-CloudTrail-e-GuardDuty-AWS.md" \
      "11-Cloud/05-Pos-Exploracao-e-Persistencia-Cloud/2-Evasao-e-Logs/Modificacao-Azure-Diagnostic-Settings.md"
touch "11-Cloud/06-Cheatsheets/AWS-CLI-Oneliners-Referencia.md" \
      "11-Cloud/06-Cheatsheets/Azure-CLI-Oneliners-Referencia.md"

# ==========================================
# 12. Wireless
# ==========================================
echo "[+] Gerando 12-Wireless..."
mkdir -p "12-Wireless/01-Fundamentos-802-11/1-Radiofrequencia-e-Fisica" \
         "12-Wireless/01-Fundamentos-802-11/2-Protocolo-802-11-Frames" \
         "12-Wireless/02-Reconhecimento-e-Sniffing/1-Ferramentas-CLI" \
         "12-Wireless/02-Reconhecimento-e-Sniffing/2-Analise-Trafego" \
         "12-Wireless/03-Ataques-WPA-WPA2-Personal/1-Ataque-Deteccao-Handshake" \
         "12-Wireless/03-Ataques-WPA-WPA2-Personal/2-Ataque-PMKID" \
         "12-Wireless/03-Ataques-WPA-WPA2-Personal/3-Quebra-Offline" \
         "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/1-Arquitetura-802-1X" \
         "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/2-Rogue-Access-Point-Evil-Twin" \
         "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/3-Quebra-Enterprise" \
         "12-Wireless/05-Ataques-WPS-e-WPA3/1-Wi-Fi-Protected-Setup-WPS" \
         "12-Wireless/05-Ataques-WPS-e-WPA3/2-WPA3-Security" \
         "12-Wireless/06-Outras-Tecnologias-Sem-Fio/1-Bluetooth-e-BLE" \
         "12-Wireless/06-Outras-Tecnologias-Sem-Fio/2-RFID-e-NFC" \
         "12-Wireless/07-Cheatsheets"

touch "12-Wireless/README.md"
touch "12-Wireless/01-Fundamentos-802-11/1-Radiofrequencia-e-Fisica/Espectro-Frequencias-2-4GHz-5GHz-6GHz.md" \
      "12-Wireless/01-Fundamentos-802-11/1-Radiofrequencia-e-Fisica/Canais-e-Overlapping.md" \
      "12-Wireless/01-Fundamentos-802-11/1-Radiofrequencia-e-Fisica/Ganho-Antenas-e-Decibeis-dBm.md"
touch "12-Wireless/01-Fundamentos-802-11/2-Protocolo-802-11-Frames/Tipos-de-Frames-Management-Control-Data.md" \
      "12-Wireless/01-Fundamentos-802-11/2-Protocolo-802-11-Frames/Frames-Beacon-Probe-Request-Response.md" \
      "12-Wireless/01-Fundamentos-802-11/2-Protocolo-802-11-Frames/Processo-Autenticacao-e-Associacao.md" \
      "12-Wireless/01-Fundamentos-802-11/2-Protocolo-802-11-Frames/Monitor-Mode-vs-Promiscuous-Mode.md"
touch "12-Wireless/02-Reconhecimento-e-Sniffing/1-Ferramentas-CLI/Iwconfig-e-Ip-Link-Configuracao.md" \
      "12-Wireless/02-Reconhecimento-e-Sniffing/1-Ferramentas-CLI/Airmon-ng-Ativacao-Monitor.md" \
      "12-Wireless/02-Reconhecimento-e-Sniffing/1-Ferramentas-CLI/Airodump-ng-Captura-e-Filtros.md"
touch "12-Wireless/02-Reconhecimento-e-Sniffing/2-Analise-Trafego/Filtros-Wireshark-Para-Wireless.md" \
      "12-Wireless/02-Reconhecimento-e-Sniffing/2-Analise-Trafego/Identificacao-SSIDs-Ocultos-Hidden.md"
touch "12-Wireless/03-Ataques-WPA-WPA2-Personal/1-Ataque-Deteccao-Handshake/Aireplay-ng-Deauthentication-Attack.md" \
      "12-Wireless/03-Ataques-WPA-WPA2-Personal/1-Ataque-Deteccao-Handshake/Captura-4-Way-Handshake-EAPOL.md"
touch "12-Wireless/03-Ataques-WPA-WPA2-Personal/2-Ataque-PMKID/Conceito-PMKID-Clientless-Attack.md" \
      "12-Wireless/03-Ataques-WPA-WPA2-Personal/2-Ataque-PMKID/Hcxdumptool-e-Hcxtools-Uso.md"
touch "12-Wireless/03-Ataques-WPA-WPA2-Personal/3-Quebra-Offline/Hashcat-Modo-22000-WPA-WPA2.md" \
      "12-Wireless/03-Ataques-WPA-WPA2-Personal/3-Quebra-Offline/Aircrack-ng-Cracking.md"
touch "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/1-Arquitetura-802-1X/Protocolos-EAP-PEAP-EAP-TTLS-EAP-TLS.md" \
      "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/1-Arquitetura-802-1X/Componentes-Supplicant-Authenticator-RADIUS.md"
touch "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/2-Rogue-Access-Point-Evil-Twin/Hostapd-wpe-Configuracao.md" \
      "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/2-Rogue-Access-Point-Evil-Twin/Airgeddon-Framework-Uso.md" \
      "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/2-Rogue-Access-Point-Evil-Twin/Captura-Hashes-NetNTLM-via-EAP.md"
touch "12-Wireless/04-Ataques-WPA-WPA2-Enterprise/3-Quebra-Enterprise/Asleap-e-John-Para-Leitura-EAP.md"
touch "12-Wireless/05-Ataques-WPS-e-WPA3/1-Wi-Fi-Protected-Setup-WPS/Reaver-e-Bully-Ataques-PIN.md" \
      "12-Wireless/05-Ataques-WPS-e-WPA3/1-Wi-Fi-Protected-Setup-WPS/Pixie-Dust-Attack-Pixiewps.md"
touch "12-Wireless/05-Ataques-WPS-e-WPA3/2-WPA3-Security/Protocolo-SAE-Simultaneous-Authentication-of-Equals.md" \
      "12-Wireless/05-Ataques-WPS-e-WPA3/2-WPA3-Security/Vulnerabilidades-Dragonblood-Overview.md"
touch "12-Wireless/06-Outras-Tecnologias-Sem-Fio/1-Bluetooth-e-BLE/Bluetooth-Architecture-e-Scanning.md" \
      "12-Wireless/06-Outras-Tecnologias-Sem-Fio/1-Bluetooth-e-BLE/Bettercap-para-Bluetooth-LE.md"
touch "12-Wireless/06-Outras-Tecnologias-Sem-Fio/2-RFID-e-NFC/Frequencias-LF-HF-UHF.md" \
      "12-Wireless/06-Outras-Tecnologias-Sem-Fio/2-RFID-e-NFC/Proxmark3-Comandos-Clonagem-Cartoes.md"
touch "12-Wireless/07-Cheatsheets/Aircrack-Suite-Oneliners.md" \
      "12-Wireless/07-Cheatsheets/Wireshark-Wireless-Filters.md"

# ==========================================
# 13. Criptografia
# ==========================================
echo "[+] Gerando 13-Criptografia..."
mkdir -p "13-Criptografia/01-Fundamentos-e-Matematica/1-Conceitos-Core" \
         "13-Criptografia/01-Fundamentos-e-Matematica/2-Tipos-de-Cifras" \
         "13-Criptografia/02-Criptografia-Simetrica/1-Algoritmos-Fundamentais" \
         "13-Criptografia/02-Criptografia-Simetrica/2-Ataques-Simetricos" \
         "13-Criptografia/03-Criptografia-Assimetrica/1-Infraestrutura-Chaves" \
         "13-Criptografia/03-Criptografia-Assimetrica/2-Ataques-Assimetricos" \
         "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/1-Gerenciamento-Hashes" \
         "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/2-Ferramentas-e-Ataques" \
         "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/1-Seguranca-em-Transito" \
         "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/2-Aplicações-Web" \
         "13-Criptografia/06-Cheatsheets"

touch "13-Criptografia/README.md"
touch "13-Criptografia/01-Fundamentos-e-Matematica/1-Conceitos-Core/Encoding-vs-Hashing-vs-Criptografia.md" \
      "13-Criptografia/01-Fundamentos-e-Matematica/1-Conceitos-Core/Entropia-de-Dados-e-Aleatoriedade.md" \
      "13-Criptografia/01-Fundamentos-e-Matematica/1-Conceitos-Core/Vetores-de-Inicializacao-IV-e-Salts.md"
touch "13-Criptografia/01-Fundamentos-e-Matematica/2-Tipos-de-Cifras/Cifras-de-Fluxo-Stream-vs-Bloco-Block.md" \
      "13-Criptografia/01-Fundamentos-e-Matematica/2-Tipos-de-Cifras/Modos-de-Operacao-ECB-CBC-GCM.md"
touch "13-Criptografia/02-Criptografia-Simetrica/1-Algoritmos-Fundamentais/AES-Advanced-Encryption-Standard.md" \
      "13-Criptografia/02-Criptografia-Simetrica/1-Algoritmos-Fundamentais/DES-e-3DES-Vulnerabilidades.md" \
      "13-Criptografia/02-Criptografia-Simetrica/1-Algoritmos-Fundamentais/RC4-Funcionamento-e-Fraquezas.md"
touch "13-Criptografia/02-Criptografia-Simetrica/2-Ataques-Simetricos/Padding-Oracle-Attack-Exploitation.md" \
      "13-Criptografia/02-Criptografia-Simetrica/2-Ataques-Simetricos/Bit-Flipping-Attacks.md"
touch "13-Criptografia/03-Criptografia-Assimetrica/1-Infraestrutura-Chaves/RSA-Funcionamento-Matematico-e-Chaves.md" \
      "13-Criptografia/03-Criptografia-Assimetrica/1-Infraestrutura-Chaves/Diffie-Hellman-Troca-de-Chaves.md" \
      "13-Criptografia/03-Criptografia-Assimetrica/1-Infraestrutura-Chaves/ECC-Elliptic-Curve-Cryptography.md"
touch "13-Criptografia/03-Criptografia-Assimetrica/2-Ataques-Assimetricos/RSA-Weak-Key-Factorization.md" \
      "13-Criptografia/03-Criptografia-Assimetrica/2-Ataques-Assimetricos/Wiener-Attack-e-Known-Plaintext.md"
touch "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/1-Gerenciamento-Hashes/Identificacao-de-Hashes-Desconhecidos.md" \
      "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/1-Gerenciamento-Hashes/Colisoes-de-Hash-MD5-e-SHA1.md"
touch "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/2-Ferramentas-e-Ataques/Hashcat-Ataques-Dicionario-e-Regras.md" \
      "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/2-Ferramentas-e-Ataques/Hashcat-Ataques-Hibridos-e-Mascaras.md" \
      "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/2-Ferramentas-e-Ataques/John-The-Ripper-Custom-Formats.md" \
      "13-Criptografia/04-Ataques-a-Hashes-e-Quebra-Offline/2-Ferramentas-e-Ataques/Rainbow-Tables-Conceito.md"
touch "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/1-Seguranca-em-Transito/SSL-TLS-Handshake-e-Ciphersuites.md" \
      "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/1-Seguranca-em-Transito/SSH-Chaves-e-Autenticacao.md" \
      "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/1-Seguranca-em-Transito/IPsec-e-VPNs-Criptografia.md"
touch "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/2-Aplicações-Web/JWT-JSON-Web-Tokens-Estrutura-e-Erros.md" \
      "13-Criptografia/05-Protocolos-e-Implementacoes-Reais/2-Aplicações-Web/Criptografia-em-Bancos-de-Dados.md"
touch "13-Criptografia/06-Cheatsheets/Hashcat-Modos-Mais-Comuns-Referencia.md" \
      "13-Criptografia/06-Cheatsheets/OpenSSL-Comandos-Operacionais.md"

# ==========================================
# 14. Evasão e OPSEC
# ==========================================
echo "[+] Gerando 14-Evasao-OPSEC..."
mkdir -p "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/1-Mecanismos-Defesa-Internos" \
         "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/2-Bypass-de-Controles-Windows" \
         "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/3-Ofuscacao-de-Codigo" \
         "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/1-Tecnicas-Injecao" \
         "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/2-Evasao-em-Memoria" \
         "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/1-Arquitetura-C2-Furtiva" \
         "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/2-Ocultacao-de-Trafego" \
         "14-Evasao-OPSEC/04-Evasao-de-Sandbox-e-Analise/1-Anti-Virtualization" \
         "14-Evasao-OPSEC/04-Evasao-de-Sandbox-e-Analise/2-Anti-Análise" \
         "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/1-Manipulacao-Artefatos" \
         "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/2-Cegamento-de-Logs" \
         "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/3-Estrategia-Operacional" \
         "14-Evasao-OPSEC/06-Cheatsheets"

touch "14-Evasao-OPSEC/README.md"
touch "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/1-Mecanismos-Defesa-Internos/Como-Funcionam-AVs-Assinatura-e-Heuristica.md" \
      "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/1-Mecanismos-Defesa-Internos/EDR-Hooks-em-User-Mode-NTDLL.md" \
      "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/1-Mecanismos-Defesa-Internos/Kernel-Callbacks-e-Drivers-Minifilter.md"
touch "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/2-Bypass-de-Controles-Windows/AMSI-Bypass-Antimalware-Scan-Interface.md" \
      "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/2-Bypass-de-Controles-Windows/ETW-Patching-Event-Tracing-for-Windows.md" \
      "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/2-Bypass-de-Controles-Windows/API-Unhooking-Carregamento-Direto-de-Syscalls.md"
touch "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/3-Ofuscacao-de-Codigo/Encoders-XOR-Base64-Custom.md" \
      "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/3-Ofuscacao-de-Codigo/Crypters-e-Packers-Customizados.md" \
      "14-Evasao-OPSEC/01-Evasao-de-Antivirus-AV-e-EDR/3-Ofuscacao-de-Codigo/Strings-Ofuscacao-e-Dynamic-API-Resolving.md"
touch "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/1-Tecnicas-Injecao/Process-Hollowing-Conceito-e-Code.md" \
      "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/1-Tecnicas-Injecao/DLL-Injection-Tradicional-vs-Reflective.md" \
      "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/1-Tecnicas-Injecao/Process-Doppelganging-e-Ghosting.md" \
      "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/1-Tecnicas-Injecao/Thread-Execution-Hijacking.md"
touch "14-Evasao-OPSEC/02-Injecao-de-Memoria-Avancada/2-Evasao-em-Memoria/In-Memory-Evasion-Polymorphic-Shellcode.md"
touch "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/1-Arquitetura-C2-Furtiva/Redirectors-Configuracao-Apache-Nginx.md" \
      "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/1-Arquitetura-C2-Furtiva/Domain-Fronting-Técnicas.md" \
      "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/1-Arquitetura-C2-Furtiva/Cloud-Flings-e-Uso-de-CDNs.md"
touch "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/2-Ocultacao-de-Trafego/DNS-Tunneling-para-Exfiltracao.md" \
      "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/2-Ocultacao-de-Trafego/HTTP-HTTPS-Beaconing-Profiles-Tuning.md" \
      "14-Evasao-OPSEC/03-Evasao-de-Rede-e-Infraestrutura-C2/2-Ocultacao-de-Trafego/Malleable-C2-Profiles-Customizacao.md"
touch "14-Evasao-OPSEC/04-Evasao-de-Sandbox-e-Analise/1-Anti-Virtualization/Deteccao-de-Artefatos-VMware-VirtualBox.md" \
      "14-Evasao-OPSEC/04-Evasao-de-Sandbox-e-Analise/1-Anti-Virtualization/Verificacao-de-Hardware-Cores-RAM-Disk.md"
touch "14-Evasao-OPSEC/04-Evasao-de-Sandbox-e-Analise/2-Anti-Análise/Delay-Execution-Bypass-Sandbox-Timeouts.md" \
      "14-Evasao-OPSEC/04-Evasao-de-Sandbox-e-Analise/2-Anti-Análise/Human-Interaction-Checks-Cliques-Mouse.md"
touch "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/1-Manipulacao-Artefatos/Timestomping-Alteracao-MACE-Attributes.md" \
      "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/1-Manipulacao-Artefatos/Executaveis-Assinados-Abuso-Certificados-Validos.md"
touch "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/2-Cegamento-de-Logs/Event-Log-Clearing-vs-Selective-Deletion.md" \
      "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/2-Cegamento-de-Logs/Living-off-the-Land-Lolbas-Lolbins.md" \
      "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/2-Cegamento-de-Logs/Ocultacao-de-Processos-e-Arquivos.md"
touch "14-Evasao-OPSEC/05-OPSEC-Limpeza-e-Anti-Forensics/3-Estrategia-Operacional/Ciclo-Vida-Credenciais-Uso-Seguro-TTPs.md"
touch "14-Evasao-OPSEC/06-Cheatsheets/AMSI-PowerShell-Bypass-Oneliners.md" \
      "14-Evasao-OPSEC/06-Cheatsheets/Lolbins-Commands-Quick-Reference.md"

# ==========================================
# 15. Ferramentas e Frameworks
# ==========================================
echo "[+] Gerando 15-Ferramentas-e-Frameworks..."
mkdir -p "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/1-Port-Scanners" \
         "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/2-Vulnerability-Scanners" \
         "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/1-Burp-Suite" \
         "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/2-Alternativas" \
         "15-Ferramentas-e-Frameworks/03-Frameworks-de-Exploitation/1-Metasploit-Framework" \
         "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/1-Sliver-C2" \
         "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/2-Havoc-C2" \
         "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/3-Outros-C2s-Mercado" \
         "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/1-Impacket-Suite" \
         "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/2-NetExec-CrackMapExec" \
         "15-Ferramentas-e-Frameworks/06-Cheatsheets"

touch "15-Ferramentas-e-Frameworks/README.md"
touch "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/1-Port-Scanners/Nmap-Modos-Scan-e-Scripts-NSE.md" \
      "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/1-Port-Scanners/Masscan-Varreduras-Larga-Escala.md" \
      "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/1-Port-Scanners/Naabu-Sintaxe-e-Integracoes.md"
touch "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/2-Vulnerability-Scanners/Nuclei-Uso-e-Criacao-Templates.md" \
      "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/2-Vulnerability-Scanners/Nikto-Scan-Web-Basico.md" \
      "15-Ferramentas-e-Frameworks/01-Scanners-e-Recon/2-Vulnerability-Scanners/Nessus-Analise-e-Exportacao-Resultados.md"
touch "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/1-Burp-Suite/Proxy-e-Target-Configuration.md" \
      "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/1-Burp-Suite/Intruder-Modos-Ataque-Sniper-Pitchfork.md" \
      "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/1-Burp-Suite/Repeater-e-Comparer-Uso-Diario.md" \
      "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/1-Burp-Suite/Extensions-Essenciais-BApp-Store.md"
touch "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/2-Alternativas/OWASP-ZAP-Automated-Scanning.md" \
      "15-Ferramentas-e-Frameworks/02-Interceptacao-e-Proxies/2-Alternativas/Caido-Proxy-Uso-Leve.md"
touch "15-Ferramentas-e-Frameworks/03-Frameworks-de-Exploitation/1-Metasploit-Framework/Msfconsole-Comandos-Globais-e-Workspace.md" \
      "15-Ferramentas-e-Frameworks/03-Frameworks-de-Exploitation/1-Metasploit-Framework/Msf-Exploits-Payloads-e-Auxiliary.md" \
      "15-Ferramentas-e-Frameworks/03-Frameworks-de-Exploitation/1-Metasploit-Framework/Meterpreter-Comandos-Operacionais-e-Canais.md" \
      "15-Ferramentas-e-Frameworks/03-Frameworks-de-Exploitation/1-Metasploit-Framework/Msfdb-Gerenciamento-Banco-Dados.md"
touch "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/1-Sliver-C2/Server-e-Client-Setup-Sliver.md" \
      "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/1-Sliver-C2/Implants-Generation-HTTP-DNS-mTLS.md" \
      "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/1-Sliver-C2/Ssh-e-Armory-Extensions.md"
touch "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/2-Havoc-C2/Havoc-Teamserver-e-Profile-Config.md" \
      "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/2-Havoc-C2/Demon-Payload-Features.md"
touch "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/3-Outros-C2s-Mercado/Cobalt-Strike-Conceitos-Malleable-C2.md" \
      "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/3-Outros-C2s-Mercado/Mythic-C2-Arquitetura-e-Agentes.md" \
      "15-Ferramentas-e-Frameworks/04-Command-and-Control-C2-Platforms/3-Outros-C2s-Mercado/Covenant-DotNet-C2-Overview.md"
touch "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/1-Impacket-Suite/Impacket-Secretsdump-e-Samdump.md" \
      "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/1-Impacket-Suite/Impacket-Wmiexec-e-Psexec.md" \
      "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/1-Impacket-Suite/Impacket-Smbserver-Exfiltration.md"
touch "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/2-NetExec-CrackMapExec/NetExec-Core-SMB-Exploration.md" \
      "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/2-NetExec-CrackMapExec/NetExec-Modules-Abuse-e-Spiders.md" \
      "15-Ferramentas-e-Frameworks/05-Post-Exploitation-Suites/2-NetExec-CrackMapExec/NetExec-WinRM-e-SSH-Bruteforce.md"
touch "15-Ferramentas-e-Frameworks/06-Cheatsheets/Burp-Suite-Shortcuts-CheatSheet.md" \
      "15-Ferramentas-e-Frameworks/06-Cheatsheets/Metasploit-Post-Exploitation-Oneliners.md"

# ==========================================
# 16. Payloads e Shells
# ==========================================
echo "[+] Gerando 16-Payloads-e-Shells..."
mkdir -p "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/1-Conexoes-Rede" \
         "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/2-Web-Shells" \
         "16-Payloads-e-Shells/02-Geradores-de-Payloads/1-Msfvenom" \
         "16-Payloads-e-Shells/02-Geradores-de-Payloads/2-Geradores-Modernos" \
         "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/1-Upgrade-de-TTY-Linux" \
         "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/2-Download-e-Execute-Oneliners" \
         "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/1-Executaveis-e-Binarios" \
         "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/2-Scripts-Operacionais" \
         "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/3-Formatos-Especiais" \
         "16-Payloads-e-Shells/05-Cheatsheets"

touch "16-Payloads-e-Shells/README.md"
touch "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/1-Conexoes-Rede/Reverse-Shell-vs-Bind-Shell-Conceito.md" \
      "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/1-Conexoes-Rede/Encrypted-Shells-via-OpenSSL.md" \
      "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/1-Conexoes-Rede/Shells-Interativas-via-Socat.md"
touch "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/2-Web-Shells/PHP-Webshells-Simples-e-Ofuscadas.md" \
      "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/2-Web-Shells/ASPX-e-ASP-Webshells-IIS.md" \
      "16-Payloads-e-Shells/01-Fundamentos-e-Tipos-Shell/2-Web-Shells/JSP-Webshells-Tomcat-JBoss.md"
touch "16-Payloads-e-Shells/02-Geradores-de-Payloads/1-Msfvenom/Msfvenom-Formatos-Outputs-Sintaxe.md" \
      "16-Payloads-e-Shells/02-Geradores-de-Payloads/1-Msfvenom/Msfvenom-Encoders-e-Iterations.md" \
      "16-Payloads-e-Shells/02-Geradores-de-Payloads/1-Msfvenom/Msfvenom-Bad-Characters-Bypass.md"
touch "16-Payloads-e-Shells/02-Geradores-de-Payloads/2-Geradores-Modernos/Hoaxshell-Windows-Reverse-Shell.md" \
      "16-Payloads-e-Shells/02-Geradores-de-Payloads/2-Geradores-Modernos/Veil-Framework-Payload-Generation.md" \
      "16-Payloads-e-Shells/02-Geradores-de-Payloads/2-Geradores-Modernos/Revshells-com-Generator-Uso.md"
touch "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/1-Upgrade-de-TTY-Linux/Python-Spawning-Pty-Module.md" \
      "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/1-Upgrade-de-TTY-Linux/Script-e-Stty-Raw-Echo-Fix.md" \
      "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/1-Upgrade-de-TTY-Linux/Reset-e-Term-Environment.md"
touch "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/2-Download-e-Execute-Oneliners/Linux-Wget-Curl-Bash-Pipes.md" \
      "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/2-Download-e-Execute-Oneliners/Windows-PowerShell-IEX-DownloadString.md" \
      "16-Payloads-e-Shells/03-One-Liners-e-TTY-Spawning/2-Download-e-Execute-Oneliners/Windows-Certutil-e-Bitsadmin-Downloads.md"
touch "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/1-Executaveis-e-Binarios/Compilacao-Cross-Platform-Mingw-w64.md" \
      "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/1-Executaveis-e-Binarios/ELF-Payloads-Linux-Architecture.md"
touch "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/2-Scripts-Operacionais/PowerShell-PS1-Payload-Templates.md" \
      "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/2-Scripts-Operacionais/Visual-Basic-VBS-e-VBA-Macros.md" \
      "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/2-Scripts-Operacionais/Windows-Batch-BAT-e-Command-Files.md"
touch "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/3-Formatos-Especiais/DLL-Payloads-e-DLL-Hijacking-Stubs.md" \
      "16-Payloads-e-Shells/04-Formatos-de-Payload-e-Vetores/3-Formatos-Especiais/Arquivos-LNK-Maliciosos-Geracao.md"
touch "16-Payloads-e-Shells/05-Cheatsheets/Reverse-Shell-Cheatsheet-All-Languages.md" \
      "16-Payloads-e-Shells/05-Cheatsheets/TTY-Upgrade-Quick-Reference.md"

# ==========================================
# 17. Cheatsheets Globais
# ==========================================
echo "[+] Gerando 17-Cheatsheets-Globais..."
mkdir -p "17-Cheatsheets-Globais/01-Manipulacao-de-Texto-Linux" \
         "17-Cheatsheets-Globais/02-Sintaxes-Sistemas-Operacionais" \
         "17-Cheatsheets-Globais/03-Bancos-de-Dados-e-SQL" \
         "17-Cheatsheets-Globais/04-Linguagens-de-Scripting-QuickRef" \
         "17-Cheatsheets-Globais/05-Transferencia-de-Arquivos-Metodos" \
         "17-Cheatsheets-Globais/06-Codificacao-e-Cripto-Rapido"

touch "17-Cheatsheets-Globais/README.md"
touch "17-Cheatsheets-Globais/01-Manipulacao-de-Texto-Linux/Grep-e-Egrep-Filtros-Avancados.md" \
      "17-Cheatsheets-Globais/01-Manipulacao-de-Texto-Linux/Awk-Tratamento-de-Colunas-e-Logs.md" \
      "17-Cheatsheets-Globais/01-Manipulacao-de-Texto-Linux/Sed-Substituicao-e-Modificacao-Stream.md" \
      "17-Cheatsheets-Globais/01-Manipulacao-de-Texto-Linux/Cut-Sort-Uniq-Xargs-Combinacoes.md"
touch "17-Cheatsheets-Globais/02-Sintaxes-Sistemas-Operacionais/Linux-Bash-Atalhos-e-Redirecionamentos.md" \
      "17-Cheatsheets-Globais/02-Sintaxes-Sistemas-Operacionais/Windows-CMD-Comandos-Essenciais.md" \
      "17-Cheatsheets-Globais/02-Sintaxes-Sistemas-Operacionais/PowerShell-Pipeline-e-Formatacao.md" \
      "17-Cheatsheets-Globais/02-Sintaxes-Sistemas-Operacionais/Regex-Expressoes-Regulares-para-Pentesters.md"
touch "17-Cheatsheets-Globais/03-Bancos-de-Dados-e-SQL/MySQL-MariaDB-Sintaxes-Uteis.md" \
      "17-Cheatsheets-Globais/03-Bancos-de-Dados-e-SQL/PostgreSQL-Comandos-e-Enumeracao.md" \
      "17-Cheatsheets-Globais/03-Bancos-de-Dados-e-SQL/MSSQL-Queries-e-Execucao-Comandos.md" \
      "17-Cheatsheets-Globais/03-Bancos-de-Dados-e-SQL/NoSQL-MongoDB-Sintaxes-Basicas.md"
touch "17-Cheatsheets-Globais/04-Linguagens-de-Scripting-QuickRef/Python-Oneliners-e-Sockets-Simples.md" \
      "17-Cheatsheets-Globais/04-Linguagens-de-Scripting-QuickRef/PowerShell-Scripts-Rapidos-de-Rede.md" \
      "17-Cheatsheets-Globais/04-Linguagens-de-Scripting-QuickRef/Bash-Scripting-Loops-e-Condicionais.md" \
      "17-Cheatsheets-Globais/04-Linguagens-de-Scripting-QuickRef/Go-Compilacao-e-Sintaxe-Basica.md"
touch "17-Cheatsheets-Globais/05-Transferencia-de-Arquivos-Metodos/Metodos-Linux-Wget-Curl-Netcat-PythonHTTP.md" \
      "17-Cheatsheets-Globais/05-Transferencia-de-Arquivos-Metodos/Metodos-Windows-Certutil-Bitsadmin-PS.md" \
      "17-Cheatsheets-Globais/05-Transferencia-de-Arquivos-Metodos/Transferencia-via-Protocolos-SMB-FTP-TFTP.md"
touch "17-Cheatsheets-Globais/06-Codificacao-e-Cripto-Rapido/Base64-Hex-URL-Encode-Decode-Oneliners.md" \
      "17-Cheatsheets-Globais/06-Codificacao-e-Cripto-Rapido/Identificadores-de-Cifras-e-Formatos-Chaves.md"

# ==========================================
# 18. Laboratórios e Writeups
# ==========================================
echo "[+] Gerando 18-Laboratorios-e-Writeups..."
mkdir -p "18-Laboratorios-e-Writeups/01-Templates-e-Metodologia" \
         "18-Laboratorios-e-Writeups/02-HackTheBox-Machines/1-Linux/Facil" \
         "18-Laboratorios-e-Writeups/02-HackTheBox-Machines/1-Linux/Medio" \
         "18-Laboratorios-e-Writeups/02-HackTheBox-Machines/1-Linux/Dificil-Insane" \
         "18-Laboratorios-e-Writeups/02-HackTheBox-Machines/2-Windows/Facil" \
         "18-Laboratorios-e-Writeups/02-HackTheBox-Machines/2-Windows/Medio" \
         "18-Laboratorios-e-Writeups/02-HackTheBox-Machines/2-Windows/Dificil-Insane" \
         "18-Laboratorios-e-Writeups/03-HackTheBox-ProLabs-e-Endgames" \
         "18-Laboratorios-e-Writeups/04-TryHackMe-Rooms/THM-Red-Team-Pathway" \
         "18-Laboratorios-e-Writeups/04-TryHackMe-Rooms/THM-Active-Directory-Labs" \
         "18-Laboratorios-e-Writeups/04-TryHackMe-Rooms/THM-Maquinas-Avulsas" \
         "18-Laboratorios-e-Writeups/05-PortSwigger-Web-Academy/Labs-Server-Side-Vulnerabilities" \
         "18-Laboratorios-e-Writeups/05-PortSwigger-Web-Academy/Labs-Client-Side-Vulnerabilities" \
         "18-Laboratorios-e-Writeups/05-PortSwigger-Web-Academy/Labs-Advanced-Topics" \
         "18-Laboratorios-e-Writeups/06-Simulados-e-Certificacoes/OSCP-Simulados-e-Laboratorios" \
         "18-Laboratorios-e-Writeups/06-Simulados-e-Certificacoes/CEH-Practical-Exercicios" \
         "18-Laboratorios-e-Writeups/06-Simulados-e-Certificacoes/PNPT-Simulados-Exame"

touch "18-Laboratorios-e-Writeups/README.md"
touch "18-Laboratorios-e-Writeups/01-Templates-e-Metodologia/Template-Writeup-Maquina-Individual.md" \
      "18-Laboratorios-e-Writeups/01-Templates-e-Metodologia/Template-Colaborativo-Red-Team-Notes.md" \
      "18-Laboratorios-e-Writeups/01-Templates-e-Metodologia/Checklist-Metodologia-Invasao-Geral.md"
touch "18-Laboratorios-e-Writeups/03-HackTheBox-ProLabs-e-Endgames/Dante-ProLab-Anotacoes.md" \
      "18-Laboratorios-e-Writeups/03-HackTheBox-ProLabs-e-Endgames/Offshore-ProLab-Anotacoes.md" \
      "18-Laboratorios-e-Writeups/03-HackTheBox-ProLabs-e-Endgames/RastaLabs-ProLab-Anotacoes.md"

echo "=========================================="
echo "[+] Infraestrutura de conhecimento da AXION Red Team gerada com sucesso!"
echo "[+] Abra a pasta raiz gerada diretamente pelo seu Obsidian."
echo "=========================================="
