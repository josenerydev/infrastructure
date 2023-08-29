# Limpeza do Docker e Docker Compose

Este guia fornece instruções sobre como limpar recursos associados ao Docker e ao Docker Compose.

## Docker Compose

Para limpar os contêineres, redes e volumes gerados por um arquivo `docker-compose.yml`:

1. Navegue até o diretório contendo o `docker-compose.yml`.
2. Execute o seguinte comando:

   ```bash
   docker-compose down
   ```

Se você também deseja remover as redes, volumes e imagens definidos por `docker-compose.yml`:

```bash
docker-compose down --volumes --rmi all
```

## Docker

### Parar e Remover Contêineres

1. Parar todos os contêineres:

   ```bash
   docker stop $(docker ps -a -q)
   ```

2. Remover todos os contêineres:

   ```bash
   docker rm $(docker ps -a -q)
   ```

### Remover Imagens

Remover todas as imagens:

```bash
docker rmi $(docker images -q)
```

### Limpeza de Volumes

Remover todos os volumes:

```bash
docker volume rm $(docker volume ls -q)
```

### Remover Redes

Remover todas as redes não utilizadas:

```bash
docker network prune
```

### Limpeza Geral

1. Remover todos os contêineres parados, redes não utilizadas, imagens pendentes e cache de construção:

   ```bash
   docker system prune
   ```

2. Para remover todos os contêineres parados, redes, volumes não utilizados e imagens não referenciadas:

   ```bash
   docker system prune -a
   ```

> ⚠️ **Atenção:** Estes comandos são destrutivos. Sempre tenha certeza do que está fazendo e considere fazer backups de dados importantes antes de executar comandos de limpeza.