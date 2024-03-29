FROM python:3.9-slim

# Instalar o Ansible e o cliente SSH
RUN apt-get update && \
    apt-get install -y ssh-client && \
    pip install ansible

# Configurar o diretório de trabalho
WORKDIR /ansible

# Ajustar as permissões da chave SSH privada e manter o contêiner em execução
CMD chmod 600 /root/.ssh/id_ed25519 && sleep infinity
