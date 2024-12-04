import pymysql
import dns.resolver
import pandas as pd
import requests
import logging

# Configurações de log
logging.basicConfig(level=logging.INFO)

# Conectar ao banco de dados
def conectar_banco():
    try:
        conexao = pymysql.connect(
            host="localhost",
            user="root",
            password="",
            database="dominio_dns_mx"
        )
        logging.info("Conexão com banco de dados estabelecida.")
        return conexao
    except Exception as e:
        logging.error(f"Erro ao conectar ao banco de dados: {e}")
        return None

# Inserir domínio na tabela `dominios_dns`
def inserir_dominio(cursor, dominio):
    try:
        sql = "INSERT IGNORE INTO dominios_dns (dominio) VALUES (%s)"
        cursor.execute(sql, (dominio,))
        logging.info(f"Domínio inserido: {dominio}")
    except Exception as e:
        logging.error(f"Erro ao inserir domínio {dominio}: {e}")

# Atualizar domínio com o indicador de DNS válido
def atualizar_tem_dns(cursor, dominio_id, tem_dns):
    try:
        sql = "UPDATE dominios_dns SET tem_dns = %s WHERE id = %s"
        cursor.execute(sql, (tem_dns, dominio_id))
        logging.info(f"Atualizado tem_dns={tem_dns} para domínio ID {dominio_id}")
    except Exception as e:
        logging.error(f"Erro ao atualizar tem_dns para domínio ID {dominio_id}: {e}")

# Consultar ou inserir localização na tabela `localizacoes`
def obter_ou_inserir_localizacao(cursor, ip):
    try:
        # Verificar se o IP já existe na tabela
        cursor.execute("SELECT id FROM localizacoes WHERE ip = %s", (ip,))
        resultado = cursor.fetchone()
        if resultado:
            return resultado[0]

        # Consultar a localização
        resposta = requests.get(f"https://ipinfo.io/{ip}/json").json()
        cidade = resposta.get('city')
        regiao = resposta.get('region')
        pais = resposta.get('country')

        # Inserir nova localização
        sql = """
            INSERT INTO localizacoes (ip, cidade, regiao, pais)
            VALUES (%s, %s, %s, %s)
        """
        cursor.execute(sql, (ip, cidade, regiao, pais))
        logging.info(f"Localização inserida para IP {ip}: {cidade}, {regiao}, {pais}")
        return cursor.lastrowid
    except Exception as e:
        logging.warning(f"Erro ao consultar/inserir localização para IP {ip}: {e}")
        return None

# Inserir registros MX na tabela `mx_records`
def inserir_registro_mx(cursor, dominio_id, registros_mx):
    for host, prioridade in registros_mx:
        try:
            # Consultar IP do registro MX
            ip = None
            try:
                ip = dns.resolver.resolve(host, 'A')[0].to_text()
            except:
                logging.warning(f"Não foi possível resolver IP para {host}")

            # Obter ou inserir localização
            localizacao_id = obter_ou_inserir_localizacao(cursor, ip) if ip else None

            # Inserir registro MX
            sql = """
                INSERT INTO mx_records (dominio_id, mx_record, ip, localizacao_id, prioridade)
                VALUES (%s, %s, %s, %s, %s)
            """
            cursor.execute(sql, (dominio_id, host, ip, localizacao_id, prioridade))
            logging.info(f"Registro MX inserido: {host} para domínio ID {dominio_id}")
        except Exception as e:
            logging.error(f"Erro ao inserir registro MX {host}: {e}")

# Consultar registros MX de um domínio
def consultar_registro_mx(dominio):
    try:
        resposta = dns.resolver.resolve(dominio, 'MX')
        return [(str(r.exchange).rstrip('.'), r.preference) for r in resposta]
    except Exception as e:
        logging.warning(f"Erro ao consultar registro MX para {dominio}: {e}")
        return []

# Atualizar tabela `dominios_dns` com registros DNS concatenados
def atualizar_dns(cursor):
    cursor.execute("SELECT id FROM dominios_dns")
    dominios = cursor.fetchall()
    for dominio_id, in dominios:
        cursor.execute("SELECT mx_record FROM mx_records WHERE dominio_id = %s", (dominio_id,))
        registros = [row[0] for row in cursor.fetchall()]
        if registros:
            dns_concat = ", ".join(registros)
            cursor.execute("UPDATE dominios_dns SET dns = %s WHERE id = %s", (dns_concat, dominio_id))
            logging.info(f"Atualizado DNS para domínio ID {dominio_id}: {dns_concat}")

# Processar dados do Excel e preencher o banco de dados
def processar_excel(caminho_arquivo):
    conexao = conectar_banco()
    if not conexao:
        return

    cursor = conexao.cursor()
    try:
        df = pd.read_excel(caminho_arquivo)
        for _, linha in df.iterrows():
            dominio = linha['dominio']
            inserir_dominio(cursor, dominio)

        # Processar registros MX
        cursor.execute("SELECT id, dominio FROM dominios_dns")
        dominios = cursor.fetchall()
        for dominio_id, dominio in dominios:
            registros_mx = consultar_registro_mx(dominio)
            tem_dns = bool(registros_mx)  # True se há registros MX, False caso contrário

            # Atualizar tem_dns na tabela dominios_dns
            atualizar_tem_dns(cursor, dominio_id, tem_dns)

            # Inserir registros MX, se existirem
            if registros_mx:
                inserir_registro_mx(cursor, dominio_id, registros_mx)

        # Atualizar coluna DNS
        atualizar_dns(cursor)

        conexao.commit()
    except Exception as e:
        logging.error(f"Erro ao processar arquivo Excel: {e}")
        conexao.rollback()
    finally:
        cursor.close()
        conexao.close()

# Executar o script
if __name__ == "__main__":
    processar_excel("dnsdominios.xlsx")
