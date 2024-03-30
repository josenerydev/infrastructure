FROM python:3.9-slim

# Instalar o Ansible e o cliente SSH
RUN apt-get update && \
    apt-get install -y ssh-client gettext-base && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install ansible

# Configurar o diretório de trabalho
WORKDIR /ansible

# Copiar o script de entrypoint e o arquivo de inventário template para o contêiner
COPY entrypoint.sh /entrypoint.sh
COPY inventory.ini.template /ansible/inventory.ini.template

# Tornar o script de entrypoint executável
RUN chmod +x /entrypoint.sh

# Usar o script de entrypoint para ajustar permissões e executar comandos adicionais
ENTRYPOINT ["/entrypoint.sh"]

# Comando padrão para manter o contêiner rodando
CMD ["sleep", "infinity"]
