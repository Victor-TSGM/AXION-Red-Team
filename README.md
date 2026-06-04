# 01-Metodologia-e-Processos/

├── README.md
│
├── 01-Frameworks-e-Normas/
│   ├── PTES-Penetration-Testing-Execution-Standard.md
│   ├── OSSTMM-Metodologia-Auditoria.md
│   ├── OWASP-Testing-Guide-WSTG.md
│   └── NIST-SP-800-115-Guia-Tecnico.md
│
├── 02-Fases-do-Pentest-Comercial/
│   ├── 1-Pre-Engajamento-Escopo-e-Contrato.md
│   ├── 2-Regras-de-Engajamento-RoE.md
│   ├── 3-Definicao-Janelas-e-Limites-Ataque.md
│   └── 4-Alinhamento-e-Kickoff-Meeting.md
│
├── 03-Documentacao-e-Evidencias/
│   ├── Metodologia-Coleta-Prints-e-Logs.md
│   ├── Organizacao-de-Evidencias-por-Host.md
│   └── Linha-do-Tempo-Acoes-e-Timestamps.md
│
└── 04-Relatorios-e-Entregaveis/
    ├── Template-Report-Executivo-C-Level.md
    ├── Template-Report-Tecnico-Desenvolvedores.md
    └── Calculo-Severidade-CVSS-v3-v4-Metricas.md
___
# 02-Redes-e-Protocolos/

├── README.md
│
├── 01-Modelo-OSI-e-TCP-IP/
│   ├── Camadas-OSI-vs-TCP-IP.md
│   ├── Handshake-TCP-Flags-SYN-ACK-FIN-RST.md
│   ├── Protocolo-UDP-e-Estados-Portas.md
│   └── Formato-Pacotes-Analise-Headers.md
│
├── 02-Protocolos-Infraestrutura-e-Ataques/
│   ├── 1-Resolucao-e-Nomes/
│   │   ├── DNS-Estrutura-Zonas-e-Transferencia.md
│   │   └── ARP-Funcionamento-e-Cache-Poisoning.md
│   ├── 2-Autenticacao-e-Acesso/
│   │   ├── SSH-Protocolo-Ciphers-e-Autenticacao.md
│   │   ├── Telnet-e-RDP-Analise-Trafego.md
│   │   └── SNMP-Communities-v1-v2c-v3.md
│   └── 3-Servicos-Rede/
│       ├── DHCP-Funcionamento-e-Starvation.md
│       ├── FTP-Modo-Ativo-vs-Passivo.md
│       └── SMTP-IMAP-POP3-Enumeracao.md
│
├── 03-Roteamento-e-Comutacao/
│   ├── Conceitos-VLANs-e-VLAN-Hopping.md
│   ├── Protocolos-Roteamento-OSPF-e-BGP.md
│   ├── Administracao-Cisco-IOS-Comandos-Core.md
│   └── Administracao-Mikrotik-RouterOS-Hardening.md
│
└── 04-Analise-e-Captura-Trafego/
    ├── Wireshark-Filtros-Avancados-Analise.md
    └── Tshark-Captura-via-Linha-Comando.md
___
# 03-Linux-Operacional-e-PrivEsc-Local/
│
├── README.md
│
├── 01-Fundamentos-e-Operacao/
│   ├── Estrutura-Diretorios-FHS-Linux.md
│   ├── Gerenciamento-Processos-e-Servicos.md
│   ├── Sistema-Permissoes-rwx-e-Octal.md
│   └── Manipulacao-Variaveis-Ambiente.md
│
├── 02-Enumeracao-Local-Recon/
│   ├── Informacoes-Sistema-Kernel-e-Arquitetura.md
│   ├── Enumeracao-Usuarios-Grupos-e-Sessoes.md
│   ├── Mapeamento-Rede-Interna-e-Portas-Locais.md
│   └── Procura-Arquivos-Senhas-e-Configuracoes.md
│
├── 03-Privilege-Escalation-LPE-Vetores/
│   ├── 1-Permissoes-Especiais/
│   │   ├── Abuso-SUID-SGID-Binarios-GTFOBins.md
│   │   └── Abuso-Capabilities-Linux.md
│   ├── 2-Configuracoes-e-Tarefas/
│   │   ├── Cron-Jobs-Permissoes-e-Wildcards.md
│   │   └── Abuso-Permissoes-Sudoers-Sudo-l.md
│   ├── 3-Arquivos-e-Caminhos/
│   │   ├── PATH-Hijacking-Executaveis-Locais.md
│   │   └── Escrita-em-Arquivos-Criticos-Passwd-Shadow.md
│   └── 4-Exploits-Kernel/
│       ├── Identificacao-Versao-Kernel-Vulneravel.md
│       └── Compilacao-Exploits-Locais-GCC-Mingw.md
│
└── 04-Scripts-Automatizados/
    ├── LinPEAS-Execucao-e-Analise-Output.md
    └── LSE-Linux-Smart-Enumeration-Uso.md
___
# 04-Windows-Operacional-e-PrivEsc-Local/
│
├── README.md
│
├── 01-Arquitetura-e-Fundamentos-OS/
│   ├── Estrutura-Diretorios-e-User-Profiles.md
│   ├── Registro-Windows-HKLM-HKCU-Estrutura.md
│   ├── Processos-Core-LSASS-SAM-SYSTEM-CSRSS.md
│   └── Mecanismos-Tokens-e-Niveis-Integridade.md
│
├── 02-Enumeracao-Local-Recon/
│   ├── Comandos-Nativos-CMD-e-PowerShell.md
│   ├── Enumeracao-Usuarios-Grupos-Privilegios.md
│   ├── Identificacao-Software-Instalado-e-Patches.md
│   └── Mapeamento-Conexoes-Rede-e-Rotas.md
│
├── 03-Privilege-Escalation-LPE-Vetores/
│   ├── 1-Abuso-de-Servicos/
│   │   ├── Unquoted-Service-Paths-Exploit.md
│   │   ├── Permissoes-Inseguras-Servicos-Insecure-Registry.md
│   │   └── DLL-Hijacking-em-Servicos-Locais.md
│   ├── 2-Configuracoes-Sistema/
│   │   ├── AlwaysInstallElevated-Abuse-MSI.md
│   │   ├── Senhas-Salvas-Registry-e-Unattended.md
│   │   └── Modificacao-Startup-Applications.md
│   └── 3-Abuso-de-Privilegios-Tokens/
│       ├── Token-Impersonation-SeImpersonatePrivilege.md
│       ├── SeBackupPrivilege-e-SeRestorePrivilege.md
│       └── SeTakeOwnershipPrivilege-Abuse.md
│
└── 04-Scripts-Automatizados/
    ├── WinPEAS-exe-ps1-Analise-Output.md
    └── PowerUp-ps1-Funcoes-e-Abuso.md
___
# 05-OSINT-e-Reconhecimento-Externo/
│
├── README.md
│
├── 01-Mapeamento-Organizacional-e-Infra/
│   ├── Identificacao-ASNs-e-Blocos-IP.md
│   ├── Registro-Whois-e-Contatos-Tecnicos.md
│   └── Descoberta-Tecnologias-Bordas-Wappalyzer.md
│
├── 02-Enumeracao-DNS-e-Subdominios/
│   ├── Subdomain-Bruteforcing-Passivo-vs-Ativo.md
│   ├── Uso-Amass-Subfinder-Assetfinder.md
│   └── DNS-Recon-e-Subdomain-Takeover.md
│
├── 03-Motores-Busca-e-Scanners-Passivos/
│   ├── Google-Hacking-Dorks-Focadas-Pentest.md
│   ├── Shodan-Queries-Avancadas-e-Filtros.md
│   └── Censys-e-IntelX-Buscas-Infra.md
│
├── 04-OSINT-Pessoas-e-Credenciais/
│   ├── Coleta-Emails-Corporativos-Hunter-io.md
│   ├── Identificacao-Funcionarios-Linkedin-Scraping.md
│   └── Pesquisa-Vazamentos-e-Breach-Databases.md
│
└── 05-Automacao-Recon-Externo/
    ├── Recon-ng-Framework-Setup.md
    └── Execucao-Pipelines-Customizados-Bash.md
# 06-Seguranca-e-Pentest-Web/
│
├── README.md
│
├── 01-Mapeamento-e-Enumeracao-Web/
│   ├── Diretorios-e-Arquivos-Ocultos-Ffuf-Gobuster.md
│   ├── Enumeracao-Parametros-Arjun.md
│   └── Analise-Sessao-Cookies-e-Tokens.md
│
├── 02-OWASP-Top-10-Exploracao-Avancada/
│   ├── 1-Injections/
│   │   ├── SQL-Injection-SQLi-Baseado-Erro-e-Union.md
│   │   ├── SQL-Injection-Blind-Time-e-Boolean.md
│   │   ├── Command-Injection-RCE.md
│   │   └── SQLMap-Parametros-e-Bypasses-WAF.md
│   ├── 2-Broken-Authentication-Session/
│   │   ├── Session-Fixation-e-Hijacking.md
│   │   └── Brute-Force-Bypass-Rate-Limit.md
│   ├── 3-Insecure-Direct-Object-References/
│   │   └── IDOR-Bypass-Parametros-e-Mapeamento.md
│   ├── 4-Cross-Site-Scripting-XSS/
│   │   ├── XSS-Refletido-e-Armazenado-Payloads.md
│   │   └── XSS-Baseado-em-DOM-e-Bypass-Filtros.md
│   ├── 5-File-Inclusion-Vulnerabilities/
│   │   ├── Local-File-Inclusion-LFI-Wrappers-e-Poisoning.md
│   │   └── Remote-File-Inclusion-RFI-Exploitation.md
│   ├── 6-Server-Side-Request-Forgery-SSRF/
│   │   └── SSRF-Borda-Interna-e-Cloud-Metadata.md
│   └── 7-XML-External-Entity-XXE/
│       └── XXE-Leitura-Arquivos-e-OOB.md
│
├── 03-Vulnerabilidades-Modernas-e-APIs/
│   ├── Server-Side-Template-Injection-SSTI.md
│   ├── Insecure-Deserialization-Java-PHP-Python.md
│   └── API-Hacking-REST-GraphQL-Enumeracao.md
│
└── 04-Cheatsheets-Web/
    ├── Payloads-XSS-SQLi-LFI-QuickRef.md
    └── Codificacoes-Bypass-WAF-Web.md
___
# 07-Active-Directory/
│
├── README.md
│
├── 01-Arquitetura-e-Componentes/
│   ├── 1-Estrutura-Logica/
│   │   ├── Florestas-Dominios-Arvores.md
│   │   ├── Unidades-Organizacionais-OU.md
│   │   └── Relacoes-de-Confianca-Trusts.md
│   ├── 2-Componentes-Fisicos/
│   │   ├── Domain-Controllers-DC.md
│   │   ├── Base-NTDS-dit.md
│   │   └── Pasta-SYSVOL.md
│   └── 3-Mecanismos-Seguranca/
│       ├── Group-Policy-Objects-GPO.md
│       ├── Global-Catalog-GC.md
│       └── Funcoes-FSMO.md
│
├── 02-Enumeracao-AD-Recon/
│   ├── 1-Sem-Credenciais/
│   │   ├── NetExec-Enum-Anonima.md
│   │   ├── Enum4linux-ng-AD.md
│   │   └── RPCClient-AD-Recon.md
│   ├── 2-Com-Credenciais-Nativas/
│   │   ├── ActiveDirectory-Powershell-Module.md
│   │   ├── Ldapsearch-Queries-Avancadas.md
│   │   └── NetExec-LDAP-Collection.md
│   ├── 3-Mapeamento-Grafico/
│   │   ├── SharpHound-Coleta-Parametros.md
│   │   ├── BloodHound-Python-Ingestor.md
│   │   └── BloodHound-Analise-Caminhos.md
│   └── 4-Enumeração-GPO/
│       ├── PowerView-Get-DomainGPO.md
│       └── Group-Policy-Preferences-GPP-Passwords.md
│
├── 03-Ataques-Fase-Inicial-e-Credenciais/
│   ├── 1-Envenenamento-Protocolos/
│   │   ├── LLMNR-NBTNS-Responder.md
│   │   ├── IPv6-MitM6-e-dnsmasq.md
│   │   └── WPAD-Spoofing.md
│   ├── 2-Ataques-Forca-Bruta/
│   │   ├── Password-Spraying-NetExec.md
│   │   ├── Kerbrute-Enumeracao-e-Spray.md
│   │   └── Domain-Lockout-Policy-Check.md
│   └── 3-Abuso-Pre-Autenticacao/
│       ├── AS-REP-Roasting-Conceito-e-Pratica.md
│       └── Kerberoasting-Conceito-e-Pratica.md
│
├── 04-Movimentacao-Lateral/
│   ├── 1-Pass-The-X/
│   │   ├── Pass-The-Hash-PtH-Impacket.md
│   │   ├── Pass-The-Ticket-PtT-Rubeus.md
│   │   └── Overpass-The-Hash-Mimikatz.md
│   ├── 2-Execucao-Remota/
│   │   ├── WMIexec-e-DCOM.md
│   │   ├── PsExec-vs-CsExec.md
│   │   └── WinRM-Evil-WinRM-Uso.md
│   └── 3-Sessoes-e-Tokens/
│       ├── RDP-Hijacking-Tscon.md
│       └── SSH-Port-Forwarding-no-AD.md
│
├── 05-Pos-Exploracao-AD/
│   ├── 1-Dump-de-Credenciais/
│   │   ├── DCSync-Ataque-Secretsdump.md
│   │   ├── NTDS-dit-Volume-Shadow-Copy-VSS.md
│   │   └── LSASS-Remote-Dumping.md
│   └── 2-Persistencia-Dominio/
│       ├── Golden-Ticket-Criacao-e-Uso.md
│       ├── Silver-Ticket-Criacao-e-Uso.md
│       ├── Skeleton-Key-Malicious-SSP.md
│       └── DCShadow-Ataque.md
│
└── 06-Cheatsheets/
    ├── BloodHound-Queries-Customizadas.md
    └── NetExec-AD-Oneliners.md
___
# 08-Privilege-Escalation-Dominio/
│
├── README.md
│
├── 01-Abuso-de-ACLs-e-Objetos/
│   ├── 1-Direitos-Principais/
│   │   ├── GenericAll-Exploitation.md
│   │   ├── GenericWrite-Exploitation.md
│   │   └── WriteDacl-Modificacao-ACE.md
│   ├── 2-Direitos-Especiais/
│   │   ├── WriteOwner-Abuse.md
│   │   ├── AllExtendedRights-ForceChangePassword.md
│   │   └── AddMember-Grupos-Privilegiados.md
│   └── 3-Ferramentas-Abuso/
│       ├── PowerView-Abuse-Functions.md
│       └── BloodyAD-Sintaxe.md
│
├── 02-Delegacao-Kerberos-Abuse/
│   ├── 1-Unconstrained-Delegation/
│   │   ├── Conceito-Unconstrained.md
│   │   └── Printer-Bug-Coercion-SpoolSample.md
│   ├── 2-Constrained-Delegation/
│   │   ├── Conceito-Constrained-S4U2self-S4U2proxy.md
│   │   └── Rubeus-s4u-Abuse.md
│   └── 3-Resource-Based-Constrained-Delegation-RBCD/
│       ├── Conceito-RBCD-e-Computers-Account-Creation.md
│       └── Impacket-rbcd-py-Exploitation.md
│
├── 03-ADCS-Certificate-Services-Abuse/
│   ├── 1-Enumeracao-ADCS/
│   │   ├── Certify-exe-Enumeracao.md
│   │   └── Certipy-Linux-Enum.md
│   ├── 2-Templates-Vulneraveis-ESC/
│   │   ├── ESC1-Misconfigured-Certificate-Templates.md
│   │   ├── ESC2-ESC3-Enrollment-Agent-Certificates.md
│   │   └── ESC4-Template-Access-Control-Abuse.md
│   └── 3-Ataques-Relay-Certificados/
│       ├── ESC8-NTLM-Relay-para-ADCS-HTTP.md
│       └── PetitPotam-com-Certipy-Relay.md
│
├── 04-Abuso-de-GPO-e-Configuracoes/
│   ├── 1-GPO-Edicao-Direta/
│   │   ├── Permissao-Escrita-em-GPO.md
│   │   ├── SharpGPOAbuse-Execucao.md
│   │   └── Criacao-Immediate-Task-via-GPO.md
│   └── 2-Configuracoes-Fracas/
│       ├── Abuso-Grupo-Account-Operators.md
│       ├── Abuso-Grupo-Backup-Operators.md
│       └── LAPS-Password-Reading-Permissions.md
│
├── 05-Ataques-Entre-Dominios-Florestas/
│   ├── 1-Trust-Abuse/
│   │   ├── Parent-Child-Trust-Exploitation.md
│   │   ├── SID-History-Injection.md
│   │   └── ExtraSIDs-Exploit-Mimikatz.md
│   └── 2-Cross-Forest/
│       └── External-Trusts-e-Forest-Trusts-Enum.md
│
├── 06-Sistemas-Satellites-PrivEsc/
│   ├── 1-SCCM-MECM-Abuse/
│   │   ├── Enumeracao-SCCM-Site-Takeover.md
│   │   └── SharpSCCM-Uso.md
│   └── 2-Azure-AD-Entra-ID-Hybrid/
│       ├── Azure-AD-Connect-Password-Dump.md
│       └── Seamless-SSO-Kerberos-Decryption.md
│
└── 07-Cheatsheets/
    ├── Certipy-ESC-CheatSheet.md
    └── PowerView-ACL-Abuse-Reference.md
___
# 09-Exploit-Development/
│
├── README.md
│
├── 01-Arquitetura-e-Fundamentos-Memoria/
│   ├── 1-Arquitetura-CPU/
│   │   ├── Registradores-x86-EAX-EBX-ESP-EBP.md
│   │   ├── Registradores-x64-RAX-R8-R15.md
│   │   └── Convenções-de-Chamada-cdecl-stdcall-fastcall.md
│   └── 2-Layout-da-Memoria/
│       ├── Stack-vs-Heap-Funcionamento-Interno.md
│       ├── Endereçamento-Little-Endian-vs-Big-Endian.md
│       └── Execução-Instruções-Ciclo-Fetch-Decode-Execute.md
│
├── 02-Stack-Based-Overflows/
│   ├── 1-Mecanismo-Buffer-Overflow/
│   │   ├── Corrupção-de-Memória-Conceito.md
│   │   ├── Sobrescrita-do-Instruction-Pointer-EIP-RIP.md
│   │   └── Controlando-o-Fluxo-de-Execução.md
│   ├── 2-Metodologia-Desenvolvimento/
│   │   ├── Fuzzing-com-Spike-e-Scripts-Python.md
│   │   ├── Determinação-do-Offset-Pattern-Create-Offset.md
│   │   ├── Identificação-de-Bad-Characters.md
│   │   ├── Encontrando-Instruções-JMP-ESP-e-Call-ESP.md
│   │   └── Shellcode-Generation-e-Nop-Sleds.md
│   └── 3-Prática-OSWE-OSCP/
│       ├── Custom-Exploit-Sintaxe-Final.md
│       └── Estabilização-de-Shells-Exploit-Dev.md
│
├── 03-Windows-Structured-Exception-Handling-SEH/
│   ├── 1-Conceitos-SEH/
│   │   ├── Mecanismo-de-Exceção-Windows-Mona.md
│   │   └── Estrutura-TEB-e-Pointer-SEH-Record.md
│   └── 2-Exploração-SEH/
│       ├── Sobrescrita-Next-SEH-e-SE-Handler.md
│       ├── Uso-de-Sequências-POP-POP-RET.md
│       ├── Short-Jumps-Bypass-Técnica.md
│       └── SafeSEH-Mitigação-e-Bypass.md
│
├── 04-Mitigacoes-Modernas-e-Bypasses/
│   ├── 1-Data-Execution-Prevention-DEP-NX/
│   │   ├── Conceito-Memória-W-xor-X.md
│   │   ├── Ret-to-libc-Ataques.md
│   │   └── Return-Oriented-Programming-ROP-Chains.md
│   ├── 2-Address-Space-Layout-Randomization-ASLR/
│   │   ├── Conceito-Randomização-Bases.md
│   │   ├── Memory-Leaks-Ataques.md
│   │   └── Bruteforcing-ASLR-32bits.md
│   └── 3-Stack-Canaries-Cookies/
│       ├── Mecanismo-GS-Compiler-Flags.md
│       └── Leak-Canary-e-Bypass-Técnicas.md
│
├── 05-Heap-Exploitation/
│   ├── 1-Gerenciamento-Heap/
│   │   ├── Alocadores-Glibc-Malloc-Chunks.md
│   │   └── Fastbins-Unsorted-Bins-Funcionamento.md
│   └── 2-Primitivas-Ataque/
│       ├── Use-After-Free-UAF.md
│       ├── Heap-Overflow-Sobrescrita-Metadados.md
│       └── Heap-Spraying-Conceitos.md
│
├── 06-Exploit-Dev-Avancado/
│   ├── 1-Linux-Kernel-Exploitation/
│   │   ├── Local-Privilege-Escalation-Kernel-Space.md
│   │   └── Return-to-User-Ret2usr.md
│   └── 2-Format-String-Vulnerabilities/
│       └── Primitivas-Leitura-e-Escrita-Arbitrária.md
│
└── 07-Ferramentas-e-Cheatsheets/
    ├── Mona-py-comandos-essenciais.md
    ├── GDB-GEF-Comandos-Operacionais.md
    └── Immunity-x64dbg-Setups.md
___
# 10-Reverse-Engineering/
│
├── README.md
│
├── 01-Formatos-Arquivos-e-Compilacao/
│   ├── 1-Portable-Executable-PE-Windows/
│   │   ├── DOS-Header-e-NT-Headers.md
│   │   ├── Data-Directories-Import-Export-Tables.md
│   │   └── Seções-Text-Data-Rsrc-Reloc.md
│   ├── 2-Executable-and-Linkable-Format-ELF-Linux/
│   │   ├── ELF-Header-Program-Headers.md
│   │   └── Dynamic-Linking-vs-Static-Linking.md
│   └── 3-Processo-Compilacao/
│       └── Compilação-Linkagem-Assembly-Código-Máquina.md
│
├── 02-Analise-Estatica-Codigo/
│   ├── 1-Técnicas-Iniciais/
│   │   ├── Strings-e-Hashes-Filtros.md
│   │   └── Identificação-Compiladores-e-Packers-DIE.md
│   ├── 2-Uso-Descompiladores/
│   │   ├── Ghidra-Gerenciamento-Projetos.md
│   │   ├── IDA-Pro-Navegação-Grafos.md
│   │   └── Cutter-Rizin-Framework.md
│   └── 3-Análise-Lógica/
│       ├── Identificação-Estruturas-Controle-Loops-If.md
│       └── Reconstrução-Estruturas-Dados-Structs.md
│
├── 03-Analise-Dinamica-Debugging/
│   ├── 1-Configuração-Debuggers/
│   │   ├── x64dbg-Plugins-Scylla.md
│   │   └── GDB-com-GEF-Modo-Debug.md
│   ├── 2-Mecanismos-Controle/
│   │   ├── Software-Breakpoints-INT3-vs-Hardware-Breakpoints.md
│   │   ├── Execução-Passo-a-Passo-Step-Into-Step-Over.md
│   │   └── Memory-Breakpoints-R-W-X.md
│   └── 3-Monitoramento-Runtime/
│       ├── API-Spying-Intercepção-Chamadas.md
│       └── Procmon-e-Regshot-Dinamica-OS.md
│
├── 04-Técnicas-Anti-Reversing-e-Evasão/
│   ├── 1-Anti-Debugging/
│   │   ├── IsDebuggerPresent-Check-PEB.md
│   │   ├── NTGlobalFlag-e-OutputDebugString.md
│   │   └── Timing-Checks-RDTSC-Bypass.md
│   ├── 2-Anti-Analysis/
│   │   ├── Junk-Code-e-Code-Obfuscation.md
│   │   ├── API-Hashing-Ocultação-Imports.md
│   │   └── Process-Hollowing-Injeção-Memória.md
│   └── 3-Packers-e-Unpacking/
│       ├── Conceitos-UPX-Manual-Unpacking.md
│       └── Localizando-Original-Entry-Point-OEP.md
│
├── 05-Patching-e-Modificacao-Binarios/
│   ├── 1-Crackmes-Exploitation/
│   │   ├── Modificação-Instruções-Salto-JNZ-to-JZ.md
│   │   ├── Injeção-Código-Nops-Assembly.md
│   │   └── Keygenning-Análise-Algoritmo-Validação.md
│   └── 2-Automação-Reversing/
│       └── Scripting-com-Frida-Hooking-Runtime.md
│
├── 06-Engenharia-Reversa-Malware/
│   ├── 1-Análise-Ransomware/
│   │   └── Identificação-Rotinas-Criptografia.md
│   ├── 2-Análise-Spyware-Keylogger/
│   │   └── Hooks-Windows-e-Persistence-Analysis.md
│   └── 3-Análise-Documentos-Maliciosos/
│       └── Macros-VBA-e-PDF-Exploits-Extract.md
│
└── 07-Cheatsheets/
    ├── Assembly-X86-OpCodes-Referência.md
    └── Ghidra-Atalhos-Operacionais.md
___
# 11-Cloud/
│
├── README.md
│
├── 01-Fundamentos-e-Arquitetura/
│   ├── 1-Conceitos-Gerais/
│   │   ├── Modelo-Responsabilidade-Compartilhada.md
│   │   ├── Tipos-de-Servicos-IaaS-PaaS-SaaS.md
│   │   └── Estrutura-Global-Regioes-e-Zonas.md
│   ├── 2-Amazon-Web-Services-AWS/
│   │   ├── AWS-IAM-Usuarios-Grupos-Roles-e-Policies.md
│   │   ├── ARN-Amazon-Resource-Names-Sintaxe.md
│   │   └── AWS-Networking-VPC-Subnets-Security-Groups.md
│   ├── 3-Microsoft-Azure/
│   │   ├── Azure-Hierarquia-Subscriptions-Resource-Groups.md
│   │   ├── Microsoft-Entra-ID-Antigo-Azure-AD.md
│   │   └── Azure-Role-Based-Access-Control-RBAC.md
│   └── 4-Google-Cloud-Platform-GCP/
│       ├── GCP-Projetos-e-Organizacoes.md
│       └── GCP-IAM-e-Service-Accounts.md
│
├── 02-Enumeracao-e-Recon-Cloud/
│   ├── 1-Exposicao-Publica-OSINT/
│   │   ├── Descoberta-Subdominios-e-Buckets-S3.md
│   │   ├── DNS-Bruteforcing-para-Cloud.md
│   │   └── Identificacao-Provedor-via-IP-e-Headers.md
│   ├── 2-Enumeracao-Autenticada-AWS/
│   │   ├── AWS-CLI-Configuracao-e-Comandos-Enum.md
│   │   ├── Pacu-Framework-Uso-Basico.md
│   │   └── ScoutSuite-Auditoria-Automatizada.md
│   └── 3-Enumeracao-Autenticada-Azure/
│       ├── Azure-CLI-e-Az-PowerShell-Enum.md
│       └── Microburst-Ferramentas-Pentest-Azure.md
│
├── 03-Ataques-e-Exploracao-Cloud/
│   ├── 1-Abuso-de-Armazenamento/
│   │   ├── S3-Buckets-Abertos-Leitura-e-Escrita.md
│   │   ├── Azure-Blob-Storage-Data-Exfiltration.md
│   │   └── GCP-Cloud-Storage-Misconfigurations.md
│   ├── 2-Abuso-de-Metadados-IMDS/
│   │   ├── SSRF-para-AWS-IMDSv1-vs-IMDSv2.md
│   │   ├── SSRF-para-Azure-Metadata-Service.md
│   │   └── SSRF-para-GCP-Metadata.md
│   ├── 3-Elevacao-Privilegio-AWS-IAM/
│   │   ├── IAM-PrivEsc-CreateNewPolicyVersion.md
│   │   ├── IAM-PrivEsc-CreateAccessKey.md
│   │   ├── IAM-PrivEsc-AttachUserPolicy.md
│   │   └── IAM-PrivEsc-PassRole-e-EC2-RunInstances.md
│   └── 4-Elevacao-Privilegio-Azure/
│       ├── Abuso-de-Dynamic-Groups.md
│       └── Atribuicao-Insegura-de-App-Roles.md
│
├── 04-Movimentacao-Lateral-e-Hibrida/
│   ├── 1-Cloud-Para-OnPrem/
│   │   ├── Extração-Chaves-SSH-de-Instancias.md
│   │   └── Pivotagem-via-AWS-Systems-Manager-SSM.md
│   ├── 2-OnPrem-Para-Cloud/
│   │   ├── Coleta-Credenciais-Hardcoded-em-Scripts-Locais.md
│   │   └── Azure-AD-Connect-Database-Dump.md
│   └── 3-Entre-Servicos/
│       └── Abuso-de-Serverless-Functions-Lambda-Azure-Functions.md
│
├── 05-Pos-Exploracao-e-Persistencia-Cloud/
│   ├── 1-Persistencia/
│   │   ├── Criacao-Chaves-Acesso-Adicionais.md
│   │   ├── Backdooring-IAM-Roles.md
│   │   └── Azure-Service-Principal-Secret-Creation.md
│   └── 2-Evasao-e-Logs/
│       ├── Desativacao-CloudTrail-e-GuardDuty-AWS.md
│       └── Modificacao-Azure-Diagnostic-Settings.md
│
└── 06-Cheatsheets/
    ├── AWS-CLI-Oneliners-Referencia.md
    └── Azure-CLI-Oneliners-Referencia.md
___
# 12-Wireless/
│
├── README.md
│
├── 01-Fundamentos-802-11/
│   ├── 1-Radiofrequencia-e-Fisica/
│   │   ├── Espectro-Frequencias-2-4GHz-5GHz-6GHz.md
│   │   ├── Canais-e-Overlapping.md
│   │   └── Ganho-Antenas-e-Decibeis-dBm.md
│   └── 2-Protocolo-802-11-Frames/
│       ├── Tipos-de-Frames-Management-Control-Data.md
│       ├── Frames-Beacon-Probe-Request-Response.md
│       ├── Processo-Autenticacao-e-Associacao.md
│       └── Monitor-Mode-vs-Promiscuous-Mode.md
│
├── 02-Reconhecimento-e-Sniffing/
│   ├── 1-Ferramentas-CLI/
│   │   ├── Iwconfig-e-Ip-Link-Configuracao.md
│   │   ├── Airmon-ng-Ativacao-Monitor.md
│   │   └── Airodump-ng-Captura-e-Filtros.md
│   └── 2-Analise-Trafego/
│       ├── Filtros-Wireshark-Para-Wireless.md
│       └── Identificacao-SSIDs-Ocultos-Hidden.md
│
├── 03-Ataques-WPA-WPA2-Personal/
│   ├── 1-Ataque-Deteccao-Handshake/
│   │   ├── Aireplay-ng-Deauthentication-Attack.md
│   │   └── Captura-4-Way-Handshake-EAPOL.md
│   ├── 2-Ataque-PMKID/
│   │   ├── Conceito-PMKID-Clientless-Attack.md
│   │   └── Hcxdumptool-e-Hcxtools-Uso.md
│   └── 3-Quebra-Offline/
│       ├── Hashcat-Modo-22000-WPA-WPA2.md
│       └── Air智能-ng-Cracking.md
│
├── 04-Ataques-WPA-WPA2-Enterprise/
│   ├── 1-Arquitetura-802-1X/
│   │   ├── Protocolos-EAP-PEAP-EAP-TTLS-EAP-TLS.md
│   │   └── Componentes-Supplicant-Authenticator-RADIUS.md
│   ├── 2-Rogue-Access-Point-Evil-Twin/
│   │   ├── Hostapd-wpe-Configuracao.md
│   │   ├── Airgeddon-Framework-Uso.md
│   │   └── Captura-Hashes-NetNTLM-via-EAP.md
│   └── 3-Quebra-Enterprise/
│       └── Asleap-e-John-Para-Leitura-EAP.md
│
├── 05-Ataques-WPS-e-WPA3/
│   ├── 1-Wi-Fi-Protected-Setup-WPS/
│   │   ├── Reaver-e-Bully-Ataques-PIN.md
│   │   └── Pixie-Dust-Attack-Pixiewps.md
│   └── 2-WPA3-Security/
│       ├── Protocolo-SAE-Simultaneous-Authentication-of-Equals.md
│       └── Vulnerabilidades-Dragonblood-Overview.md
│
├── 06-Outras-Tecnologias-Sem-Fio/
│   ├── 1-Bluetooth-e-BLE/
│   │   ├── Bluetooth-Architecture-e-Scanning.md
│   │   └── Bettercap-para-Bluetooth-LE.md
│   └── 2-RFID-e-NFC/
│       ├── Frequencias-LF-HF-UHF.md
│       └── Proxmark3-Comandos-Clonagem-Cartoes.md
│
└── 07-Cheatsheets/
    ├── Aircrack-Suite-Oneliners.md
    └── Wireshark-Wireless-Filters.md
___
# 13-Criptografia/
│
├── README.md
│
├── 01-Fundamentos-e-Matematica/
│   ├── 1-Conceitos-Core/
│   │   ├── Encoding-vs-Hashing-vs-Criptografia.md
│   │   ├── Entropia-de-Dados-e-Aleatoriedade.md
│   │   └── Vetores-de-Inicializacao-IV-e-Salts.md
│   └── 2-Tipos-de-Cifras/
│       ├── Cifras-de-Fluxo-Stream-vs-Bloco-Block.md
│       └── Modos-de-Operacao-ECB-CBC-GCM.md
│
├── 02-Criptografia-Simetrica/
│   ├── 1-Algoritmos-Fundamentais/
│   │   ├── AES-Advanced-Encryption-Standard.md
│   │   ├── DES-e-3DES-Vulnerabilidades.md
│   │   └── RC4-Funcionamento-e-Fraquezas.md
│   └── 2-Ataques-Simetricos/
│       ├── Padding-Oracle-Attack-Exploitation.md
│       └── Bit-Flipping-Attacks.md
│
├── 03-Criptografia-Assimetrica/
│   ├── 1-Infraestrutura-Chaves/
│   │   ├── RSA-Funcionamento-Matematico-e-Chaves.md
│   │   ├── Diffie-Hellman-Troca-de-Chaves.md
│   │   └── ECC-Elliptic-Curve-Cryptography.md
│   └── 2-Ataques-Assimetricos/
│       ├── RSA-Weak-Key-Factorization.md
│       └── Wiener-Attack-e-Known-Plaintext.md
│
├── 04-Ataques-a-Hashes-e-Quebra-Offline/
│   ├── 1-Gerenciamento-Hashes/
│   │   ├── Identificacao-de-Hashes-Desconhecidos.md
│   │   └── Colisoes-de-Hash-MD5-e-SHA1.md
│   └── 2-Ferramentas-e-Ataques/
│       ├── Hashcat-Ataques-Dicionario-e-Regras.md
│       ├── Hashcat-Ataques-Hibridos-e-Mascaras.md
│       ├── John-The-Ripper-Custom-Formats.md
│       └── Rainbow-Tables-Conceito.md
│
├── 05-Protocolos-e-Implementacoes-Reais/
│   ├── 1-Seguranca-em-Transito/
│   │   ├── SSL-TLS-Handshake-e-Ciphersuites.md
│   │   ├── SSH-Chaves-e-Autenticacao.md
│   │   └── IPsec-e-VPNs-Criptografia.md
│   └── 2-Aplicações-Web/
│       ├── JWT-JSON-Web-Tokens-Estrutura-e-Erros.md
│       └── Criptografia-em-Bancos-de-Dados.md
│
└── 06-Cheatsheets/
    ├── Hashcat-Modos-Mais-Comuns-Referencia.md
    └── OpenSSL-Comandos-Operacionais.md
___
# 14-Evasao-OPSEC/
│
├── README.md
│
├── 01-Evasao-de-Antivirus-AV-e-EDR/
│   ├── 1-Mecanismos-Defesa-Internos/
│   │   ├── Como-Funcionam-AVs-Assinatura-e-Heuristica.md
│   │   ├── EDR-Hooks-em-User-Mode-NTDLL.md
│   │   └── Kernel-Callbacks-e-Drivers-Minifilter.md
│   ├── 2-Bypass-de-Controles-Windows/
│   │   ├── AMSI-Bypass-Antimalware-Scan-Interface.md
│   │   ├── ETW-Patching-Event-Tracing-for-Windows.md
│   │   └── API-Unhooking-Carregamento-Direto-de-Syscalls.md
│   └── 3-Ofuscacao-de-Codigo/
│       ├── Encoders-XOR-Base64-Custom.md
│       ├── Crypters-e-Packers-Customizados.md
│       └── Strings-Ofuscacao-e-Dynamic-API-Resolving.md
│
├── 02-Injecao-de-Memoria-Avancada/
│   ├── 1-Tecnicas-Injecao/
│   │   ├── Process-Hollowing-Conceito-e-Code.md
│   │   ├── DLL-Injection-Tradicional-vs-Reflective.md
│   │   ├── Process-Doppelganging-e-Ghosting.md
│   │   └── Thread-Execution-Hijacking.md
│   └── 2-Evasao-em-Memoria/
│       └── In-Memory-Evasion-Polymorphic-Shellcode.md
│
├── 03-Evasao-de-Rede-e-Infraestrutura-C2/
│   ├── 1-Arquitetura-C2-Furtiva/
│   │   ├── Redirectors-Configuracao-Apache-Nginx.md
│   │   ├── Domain-Fronting-Técnicas.md
│   │   └── Cloud-Flings-e-Uso-de-CDNs.md
│   └── 2-Ocultacao-de-Trafego/
│       ├── DNS-Tunneling-para-Exfiltracao.md
│       ├── HTTP-HTTPS-Beaconing-Profiles-Tuning.md
│       └── Malleable-C2-Profiles-Customizacao.md
│
├── 04-Evasao-de-Sandbox-e-Analise/
│   ├── 1-Anti-Virtualization/
│   │   ├── Deteccao-de-Artefatos-VMware-VirtualBox.md
│   │   └── Verificacao-de-Hardware-Cores-RAM-Disk.md
│   └── 2-Anti-Análise/
│       ├── Delay-Execution-Bypass-Sandbox-Timeouts.md
│       └── Human-Interaction-Checks-Cliques-Mouse.md
│
├── 05-OPSEC-Limpeza-e-Anti-Forensics/
│   ├── 1-Manipulacao-Artefatos/
│   │   ├── Timestomping-Alteracao-MACE-Attributes.md
│   │   └── Executaveis-Assinados-Abuso-Certificados-Validos.md
│   ├── 2-Cegamento-de-Logs/
│   │   ├── Event-Log-Clearing-vs-Selective-Deletion.md
│   │   ├── Living-off-the-Land-Lolbas-Lolbins.md
│   │   └── Ocultacao-de-Processos-e-Arquivos.md
│   └── 3-Estrategia-Operacional/
│       └── Ciclo-Vida-Credenciais-Uso-Seguro-TTPs.md
│
└── 06-Cheatsheets/
    ├── AMSI-PowerShell-Bypass-Oneliners.md
    └── Lolbins-Commands-Quick-Reference.md
___
# 15-Ferramentas-e-Frameworks/
│
├── README.md
│
├── 01-Scanners-e-Recon/
│   ├── 1-Port-Scanners/
│   │   ├── Nmap-Modos-Scan-e-Scripts-NSE.md
│   │   ├── Masscan-Varreduras-Larga-Escala.md
│   │   └── Naabu-Sintaxe-e-Integracoes.md
│   └── 2-Vulnerability-Scanners/
│       ├── Nuclei-Uso-e-Criacao-Templates.md
│       ├── Nikto-Scan-Web-Basico.md
│       └── Nessus-Analise-e-Exportacao-Resultados.md
│
├── 02-Interceptacao-e-Proxies/
│   ├── 1-Burp-Suite/
│   │   ├── Proxy-e-Target-Configuration.md
│   │   ├── Intruder-Modos-Ataque-Sniper-Pitchfork.md
│   │   ├── Repeater-e-Comparer-Uso-Diario.md
│   │   └── Extensions-Essenciais-BApp-Store.md
│   └── 2-Alternativas/
│       ├── OWASP-ZAP-Automated-Scanning.md
│       └── Caido-Proxy-Uso-Leve.md
│
├── 03-Frameworks-de-Exploitation/
│   └── 1-Metasploit-Framework/
│       ├── Msfconsole-Comandos-Globais-e-Workspace.md
│       ├── Msf-Exploits-Payloads-e-Auxiliary.md
│       ├── Meterpreter-Comandos-Operacionais-e-Canais.md
│       └── Msfdb-Gerenciamento-Banco-Dados.md
│
├── 04-Command-and-Control-C2-Platforms/
│   ├── 1-Sliver-C2/
│   │   ├── Server-e-Client-Setup-Sliver.md
│   │   ├── Implants-Generation-HTTP-DNS-mTLS.md
│   │   └── Ssh-e-Armory-Extensions.md
│   ├── 2-Havoc-C2/
│   │   ├── Havoc-Teamserver-e-Profile-Config.md
│   │   └── Demon-Payload-Features.md
│   └── 3-Outros-C2s-Mercado/
│       ├── Cobalt-Strike-Conceitos-Malleable-C2.md
│       ├── Mythic-C2-Arquitetura-e-Agentes.md
│       └── Covenant-DotNet-C2-Overview.md
│
├── 05-Post-Exploitation-Suites/
│   ├── 1-Impacket-Suite/
│   │   ├── Impacket-Secretsdump-e-Samdump.md
│   │   ├── Impacket-Wmiexec-e-Psexec.md
│   │   └── Impacket-Smbserver-Exfiltration.md
│   └── 2-NetExec-CrackMapExec/
│       ├── NetExec-Core-SMB-Exploration.md
│       ├── NetExec-Modules-Abuse-e-Spiders.md
│       └── NetExec-WinRM-e-SSH-Bruteforce.md
│
└── 06-Cheatsheets/
    ├── Burp-Suite-Shortcuts-CheatSheet.md
    └── Metasploit-Post-Exploitation-Oneliners.md
___
# 16-Payloads-e-Shells/
│
├── README.md
│
├── 01-Fundamentos-e-Tipos-Shell/
│   ├── 1-Conexoes-Rede/
│   │   ├── Reverse-Shell-vs-Bind-Shell-Conceito.md
│   │   ├── Encrypted-Shells-via-OpenSSL.md
│   │   └── Shells-Interativas-via-Socat.md
│   └── 2-Web-Shells/
│       ├── PHP-Webshells-Simples-e-Ofuscadas.md
│       ├── ASPX-e-ASP-Webshells-IIS.md
│       └── JSP-Webshells-Tomcat-JBoss.md
│
├── 02-Geradores-de-Payloads/
│   ├── 1-Msfvenom/
│   │   ├── Msfvenom-Formatos-Outputs-Sintaxe.md
│   │   ├── Msfvenom-Encoders-e-Iterations.md
│   │   └── Msfvenom-Bad-Characters-Bypass.md
│   └── 2-Geradores-Modernos/
│       ├── Hoaxshell-Windows-Reverse-Shell.md
│       ├── Veil-Framework-Payload-Generation.md
│       └── Revshells-com-Generator-Uso.md
│
├── 03-One-Liners-e-TTY-Spawning/
│   ├── 1-Upgrade-de-TTY-Linux/
│   │   ├── Python-Spawning-Pty-Module.md
│   │   ├── Script-e-Stty-Raw-Echo-Fix.md
│   │   └── Reset-e-Term-Environment.md
│   └── 2-Download-e-Execute-Oneliners/
│       ├── Linux-Wget-Curl-Bash-Pipes.md
│       ├── Windows-PowerShell-IEX-DownloadString.md
│       └── Windows-Certutil-e-Bitsadmin-Downloads.md
│
├── 04-Formatos-de-Payload-e-Vetores/
│   ├── 1-Executaveis-e-Binarios/
│   │   ├── Compilacao-Cross-Platform-Mingw-w64.md
│   │   └── ELF-Payloads-Linux-Architecture.md
│   ├── 2-Scripts-Operacionais/
│   │   ├── PowerShell-PS1-Payload-Templates.md
│   │   ├── Visual-Basic-VBS-e-VBA-Macros.md
│   │   └── Windows-Batch-BAT-e-Command-Files.md
│   └── 3-Formatos-Especiais/
│       ├── DLL-Payloads-e-DLL-Hijacking-Stubs.md
│       └── Arquivos-LNK-Maliciosos-Geracao.md
│
└── 05-Cheatsheets/
    ├── Reverse-Shell-Cheatsheet-All-Languages.md
    └── TTY-Upgrade-Quick-Reference.md
___
# 17-Cheatsheets-Globais/
│
├── README.md
│
├── 01-Manipulacao-de-Texto-Linux/
│   ├── Grep-e-Egrep-Filtros-Avancados.md
│   ├── Awk-Tratamento-de-Colunas-e-Logs.md
│   ├── Sed-Substituicao-e-Modificacao-Stream.md
│   └── Cut-Sort-Uniq-Xargs-Combinacoes.md
│
├── 02-Sintaxes-Sistemas-Operacionais/
│   ├── Linux-Bash-Atalhos-e-Redirecionamentos.md
│   ├── Windows-CMD-Comandos-Essenciais.md
│   ├── PowerShell-Pipeline-e-Formatacao.md
│   └── Regex-Expressoes-Regulares-para-Pentesters.md
│
├── 03-Bancos-de-Dados-e-SQL/
│   ├── MySQL-MariaDB-Sintaxes-Uteis.md
│   ├── PostgreSQL-Comandos-e-Enumeracao.md
│   ├── MSSQL-Queries-e-Execucao-Comandos.md
│   └── NoSQL-MongoDB-Sintaxes-Basicas.md
│
├── 04-Linguagens-de-Scripting-QuickRef/
│   ├── Python-Oneliners-e-Sockets-Simples.md
│   ├── PowerShell-Scripts-Rapidos-de-Rede.md
│   ├── Bash-Scripting-Loops-e-Condicionais.md
│   └── Go-Compilacao-e-Sintaxe-Basica.md
│
├── 05-Transferencia-de-Arquivos-Metodos/
│   ├── Metodos-Linux-Wget-Curl-Netcat-PythonHTTP.md
│   ├── Metodos-Windows-Certutil-Bitsadmin-PS.md
│   └── Transferencia-via-Protocolos-SMB-FTP-TFTP.md
│
└── 06-Codificacao-e-Cripto-Rapido/
    ├── Base64-Hex-URL-Encode-Decode-Oneliners.md
    └── Identificadores-de-Cifras-e-Formatos-Chaves.md
___
# 18-Laboratorios-e-Writeups/
│
├── README.md
│
├── 01-Templates-e-Metodologia/
│   ├── Template-Writeup-Maquina-Individual.md
│   ├── Template-Colaborativo-Red-Team-Notes.md
│   └── Checklist-Metodologia-Invasao-Geral.md
│
├── 02-HackTheBox-Machines/
│   ├── 1-Linux/
│   │   ├── Facil/
│   │   ├── Medio/
│   │   └── Dificil-Insane/
│   └── 2-Windows/
│       ├── Facil/
│       ├── Medio/
│       └── Dificil-Insane/
│
├── 03-HackTheBox-ProLabs-e-Endgames/
│   ├── Dante-ProLab-Anotacoes.md
│   ├── Offshore-ProLab-Anotacoes.md
│   └── RastaLabs-ProLab-Anotacoes.md
│
├── 04-TryHackMe-Rooms/
│   ├── THM-Red-Team-Pathway/
│   ├── THM-Active-Directory-Labs/
│   └── THM-Maquinas-Avulsas/
│
├── 05-PortSwigger-Web-Academy/
│   ├── Labs-Server-Side-Vulnerabilities/
│   ├── Labs-Client-Side-Vulnerabilities/
│   └── Labs-Advanced-Topics/
│
└── 06-Simulados-e-Certificacoes/
    ├── OSCP-Simulados-e-Laboratorios/
    ├── CEH-Practical-Exercicios/
    └── PNPT-Simulados-Exame/
