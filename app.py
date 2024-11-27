from flask import Flask, request, render_template, redirect, url_for
from flask_mail import Mail, Message

app = Flask(__name__)

# Configurações do Flask-Mail
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USERNAME'] = 'soberaniadigitalbrasil@gmail.com'  # Seu e-mail
app.config['MAIL_PASSWORD'] = 'ywzy nroh dgml ttxx'  # Senha do seu e-mail
app.config['MAIL_DEFAULT_SENDER'] = 'soberaniadigitalbrasil@gmail.com'  # Remetente (geralmente seu e-mail)

mail = Mail(app)

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
