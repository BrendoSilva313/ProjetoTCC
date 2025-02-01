import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

def enviar_email(nome, email, mensagem):
    # Configurações do servidor
    smtp_server = 'smtp.gmail.com'
    smtp_port = 587
    sender_email = 'soberaniadigitalbrasil@gmail.com'
    sender_password = 'ywzy nroh dgml ttxx'         

    # Configuração do e-mail
    subject = 'Mensagem de Contato do Formulário'
    body = f"Você recebeu uma mensagem de {nome} ({email}):\n\n{mensagem}"

    # Criar o objeto MIME
    msg = MIMEMultipart()
    msg['From'] = sender_email
    msg['To'] = sender_email 
    msg['Subject'] = subject

    # Adicionar o corpo da mensagem
    msg.attach(MIMEText(body, 'plain'))

    try:
        # Conectar ao servidor SMTP e enviar o e-mail
        server = smtplib.SMTP(smtp_server, smtp_port)
        server.starttls()  # Iniciar a conexão segura
        server.login(sender_email, sender_password)  # Logar com seu e-mail e senha
        server.sendmail(sender_email, sender_email, msg.as_string())  # Enviar e-mail
        server.quit()  # Fechar a conexão
        print("Mensagem enviada com sucesso!")
    except Exception as e:
        print(f"Ocorreu um erro: {e}")

# Chamada de exemplo
enviar_email('João Silva', 'joao@exemplo.com', 'Gostaria de saber mais sobre os serviços.')
