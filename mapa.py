from flask import Flask, jsonify
from flask_cors import CORS
import pymysql


app = Flask(__name__)
CORS(app)

def conectar_banco():
    return pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="dominio_dns_mx"
    )

@app.route('/api/localizacoes')
def obter_localizacoes():
    conexao = conectar_banco()
    cursor = conexao.cursor()
    
    # Atualizar consulta para incluir o servidor DNS associado
    sql = """
        SELECT 
            l.cidade, 
            l.latitude, 
            l.longitude, 
            m.mx_record AS servidor_dns
        FROM 
            localizacoes l
        LEFT JOIN 
            mx_records m ON l.id = m.localizacao_id
        WHERE 
            l.latitude IS NOT NULL 
            AND l.longitude IS NOT NULL
    """
    cursor.execute(sql)
    
    # Formatar os resultados
    localizacoes = [
        {
            "cidade": row[0],
            "latitude": row[1],
            "longitude": row[2],
            "servidor_dns": row[3]
        } 
        for row in cursor.fetchall()
    ]
    
    cursor.close()
    conexao.close()
    return jsonify(localizacoes)

if __name__ == '__main__':
    app.run(debug=True)
