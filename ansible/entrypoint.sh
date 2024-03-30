#!/bin/bash
# Ajustar as permissões da chave SSH privada
chmod 600 /root/.ssh/id_ed25519

# Substituir variáveis de ambiente no template do arquivo de inventário
envsubst < /ansible/inventory.ini.template > /ansible/inventory.ini

# Executar o comando original passado para o ENTRYPOINT
exec "$@"
