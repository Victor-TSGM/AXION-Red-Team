
```python
#!/usr/bin/python3
import dns.resolver
import requests
import json
import sys
import argparse

# Base de assinaturas integrada (Sua wordlist inteligente)
PROVIDERS_DB = {
    "github": {
        "cname": ["github.io"],
        "fingerprint": "There isn't a GitHub Pages site here"
    },
    "aws_s3": {
        "cname": ["amazonaws.com"],
        "fingerprint": "The specified bucket does not exist"
    },
    "heroku": {
        "cname": ["herokudns.com", "herokuapp.com"],
        "fingerprint": "no such app"
    },
    "azure": {
        "cname": ["azurewebsites.net", "cloudapp.net"],
        "fingerprint": "404 Web Site Not Found"
    },
    "shopify": {
        "cname": ["myshopify.com"],
        "fingerprint": "Sorry, this shop is currently unavailable"
    },
    "fastly": {
        "cname": ["fastly.net"],
        "fingerprint": "Fastly error: unknown domain"
    }
}

def check_dns_and_takeover(subdomain, domain):
        target = subdomain + "." + domain
        results = {
            "target": target,
            "vulnerable": False,
            "cname": None,
            "provider": None,
            "error_matched": False
        }
        
        try:
            # 1. Resolve o CNAME
            answers = dns.resolver.resolve(target, 'CNAME')

            for rdata in answers:
                cname_target = str(rdata.target).lower().rstrip('.')
                results["cname"] = cname_target

                # 2. Verifica se o CNAME bate com algum provedor da nossa lista
                for provider, info in PROVIDERS_DB.items():
                    if any(p_cname in cname_target for p_cname in info["cname"]):
                        results["provider"] = provider

                        # 3. Faz a requisição HTTP para caçar a assinatura de erro (Fingerprint)

                        try:
                            response = requests.get(f"http://{domain}", timeout=5, headers={"User-Agent": "Mozilla/5.0"})

                            if info["fingerprint"] in response.text:
                                results["vulnerable"] = True
                                results["error_matched"] = True
                        except requests.RequestException:

                            # Se der timeout ou erro de conexão, o bucket/app pode estar tão orfão que quem responde

                            results["vulnerable"] = True

                        break

        except (dns.resolver.NoAnswer, dns.resolver.NXDOMAIN, dns.resolver.NoNameservers):

            pass

        except Exception as e:

            results["error"] = str(e)

        return results

def main():

        parser = argparse.ArgumentParser(description="AXION DNS Recon  & Takeover Scanner")
        parser.add_argument("-w", "--wordlist", required=True, help="Arquivo com lista de subdominios")
        parser.add_argument("-o", "--output", help="Arquivo JSON de saída (opcional)")
        parser.add_argument("-d", "--domain", help="Dominio a ser varrido", required=True)
        args = parser.parse_args()

        scan_output = []

        print(f"[ + ] Iniciando escaneamento a partir de: {args.wordlist}")

        try:

            with open(args.wordlist, "r") as f:
                subdomains = [line.strip() for line in f if line.strip()]

        except FileNotFoundError:
            print(f"[-] Arquivo {args.wordlist} não encontrado.")
            sys.exit(1)

        for sub in subdomains:
            res = check_dns_and_takeover(sub, args.domain)

            # Só adiciona no relatório se encontrou CNAME ou se for vulnerável
            if res["cname"]:
                scan_output.append(res)
                status = "⚠️ VULNERÁVEL!" if res["vulnerable"] else "✅ Protegido"
                print(f"[{status}] {sub} -> {res['cname']} ({res['provider'] or 'Desconhecido'})")

        # Exportação para JSON
        json_data = json.dumps(scan_output, indent=4)

        if args.output:
            with open(args.output, "w") as out_file:
                out_file.write(json_data)

            print(f"[+] Resultador salvos com sucesso em: {args.output}")

        else:
            print("\n[+] Resumo do Scan (JSON):")
            print(json_data)

if __name__ == "__main__":

    main()
```