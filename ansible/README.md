docker-compose up -d
docker-compose up -d --build

docker-compose exec ansible bash

ansible-playbook -i inventory.ini install_docker_compose.yml

```
ansible/
├── ansible.cfg             # Arquivo de configuração do Ansible
├── inventory/              # Diretórios e arquivos de inventário
│   ├── production.ini      # Inventário para ambiente de produção
│   ├── staging.ini         # Inventário para ambiente de staging
│   └── group_vars/         # Variáveis organizadas por grupos
│       ├── group1.yml      # Variáveis para o grupo1
│       └── group2.yml      # Variáveis para o grupo2
│   └── host_vars/          # Variáveis específicas dos hosts
│       ├── host1.yml       # Variáveis para host1
│       └── host2.yml       # Variáveis para host2
├── playbooks/              # Playbooks do Ansible
│   ├── setup_webserver.yml # Playbook para configurar um servidor web
│   └── deploy_app.yml      # Playbook para deploy de uma aplicação
├── roles/                  # Roles para reutilização de tarefas
│   ├── common/             # Role com tarefas comuns a vários playbooks
│   │   ├── tasks/          # Tarefas da role
│   │   ├── handlers/       # Handlers da role
│   │   ├── templates/      # Templates Jinja2 para configurações
│   │   ├── files/          # Arquivos estáticos necessários pela role
│   │   ├── vars/           # Variáveis da role
│   │   └── defaults/       # Valores padrões das variáveis da role
│   └── webserver/          # Role para configuração específica de webservers
│       ├── tasks/          
│       ├── handlers/       
│       ├── templates/      
│       ├── files/          
│       ├── vars/           
│       └── defaults/       
└── requirements.yml        # Arquivo para gerenciar dependências de roles externas
```
