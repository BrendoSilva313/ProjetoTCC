import pandas as pd
import dns.resolver
import socket
import mysql.connector
import requests

# Conectando ao banco de dados MySQL
conexao = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='dominio_dns_mx'
)

cursor = conexao.cursor()

# Sua chave de API do IPinfo
ipinfo_token = 'e4664e2a084e62'

# Função para inserir um domínio e seu DNS na tabela dominios_dns
def inserir_dominio_dns(dominio, dns):
    try:
        sql = "INSERT INTO dominios_dns (dominio, dns) VALUES (%s, %s)"
        valores = (dominio, dns)
        cursor.execute(sql, valores)
        conexao.commit()
        return cursor.lastrowid  # Retorna o ID do domínio inserido
    except Exception as e:
        print(f"Erro ao inserir no banco de dados: {e}")
        return None

# Função para consultar o registro MX de um domínio
def consultar_mx(dominio):
    try:
        respostas = dns.resolver.resolve(dominio, 'MX')
        mx_records = [(r.exchange.to_text(), r.preference) for r in respostas]
        return mx_records
    except Exception as e:
        print(f"Erro ao consultar MX para {dominio}: {e}")
        return []

# Função para obter o IP de um registro MX
def obter_ip(mx_record):
    try:
        ip = socket.gethostbyname(mx_record)
        return ip
    except Exception as e:
        print(f"Erro ao obter IP para {mx_record}: {e}")
        return None

# Função para obter a localização geográfica de um IP
def obter_localizacao(ip):
    try:
        response = requests.get(f"https://ipinfo.io/{ip}/json?token={ipinfo_token}")
        data = response.json()
        return data.get('city'), data.get('region'), data.get('country')
    except Exception as e:
        print(f"Erro ao obter a localização para o IP {ip}: {e}")
        return None, None, None

# Inserir os registros MX na tabela mx_records com localização
def inserir_mx_records(dominio_id, mx_record, ip, cidade, regiao, pais):
    try:
        sql = "INSERT INTO mx_records (dominio_id, mx_record, ip, cidade, regiao, pais) VALUES (%s, %s, %s, %s, %s, %s)"
        valores = (dominio_id, mx_record, ip, cidade, regiao, pais)
        cursor.execute(sql, valores)
        conexao.commit()
    except Exception as e:
        print(f"Erro ao inserir no banco de dados: {e}")

# Caminho para o arquivo Excel
arquivo_excel = 'dnsdominios.xlsx'

# Leitura do arquivo Excel
df = pd.read_excel(arquivo_excel)

# Iteração pelas linhas do DataFrame
for _, row in df.iterrows():
    dominio = row['dominio']
    dns_value = row['dns']

    if pd.isna(dns_value):
        print(f"\nDomínio: {dominio} - DNS ausente. Pulando consulta MX.")
        continue

    print(f"\nDomínio: {dominio} - DNS: {dns_value}")
    
    # Insere os dados do Excel na tabela dominios_dns
    dominio_id = inserir_dominio_dns(dominio, dns_value)
    
    if dominio_id:
        # Consulta os registros MX
        mx_records = consultar_mx(dominio)
        
        for mx, preference in mx_records:
            print(f"  MX Record: {mx}, Preference: {preference}")
            
            # Consulta o IP do registro MX
            ip = obter_ip(mx)
            if ip:
                print(f"    IP: {ip}")
                
                # Obter a localização geográfica do IP
                cidade, regiao, pais = obter_localizacao(ip)
                print(f"    Localização: {cidade}, {regiao}, {pais}")
                
                # Insere os registros MX na tabela mx_records
                inserir_mx_records(dominio_id, mx, ip, cidade, regiao, pais)

# Fechando a conexão com o banco de dados
cursor.close()
conexao.close()
