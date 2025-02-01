from flask import Flask, jsonify, request, render_template, redirect, url_for
from flask_mail import Mail, Message
from flask_cors import CORS
import pymysql

app = Flask(__name__)
CORS(app)

# Configurações do Flask-Mail
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USERNAME'] = 'soberaniadigitalbrasil@gmail.com'  # Seu e-mail
app.config['MAIL_PASSWORD'] = 'ywzy nroh dgml ttxx'  # Senha do seu e-mail
app.config['MAIL_DEFAULT_SENDER'] = 'soberaniadigitalbrasil@gmail.com'  # Remetente (geralmente seu e-mail)

mail = Mail(app)

# Função para conectar ao banco de dados
def conectar_banco():
    return pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="dominio_dns_mx"
    )

# Rota para a API de localizações
@app.route('/api/localizacoes')
def obter_localizacoes():
    conexao = conectar_banco()
    cursor = conexao.cursor()
    
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

# Função para enviar o e-mail
def enviar_email(nome, email, mensagem):
    subject = 'Mensagem de Contato do Formulário'
    body = f"Você recebeu uma mensagem de {nome} ({email}):\n\n{mensagem}"

    msg = Message(subject, recipients=[app.config['MAIL_USERNAME']])
    msg.body = body

    try:
        mail.send(msg)
    except Exception as e:
        print(f"Ocorreu um erro ao enviar o e-mail: {e}")

# Rota para o formulário de contato
@app.route('/contato', methods=['GET', 'POST'])
def contato():
    if request.method == 'POST':
        nome = request.form['nome']
        email = request.form['email']
        mensagem = request.form['mensagem']
        enviar_email(nome, email, mensagem)
        return redirect(url_for('contato'))  # Redireciona após envio
    return render_template('Contato.html')

if __name__ == '__main__':
    app.run(debug=True)
