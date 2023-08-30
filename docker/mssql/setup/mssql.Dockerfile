# --- Build Stage ---
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-stage

# Instalação do Evolve CLI
RUN dotnet tool install --global Evolve.Tool

# Adiciona as ferramentas do dotnet ao PATH
ENV PATH="${PATH}:/root/.dotnet/tools"

# --- SQL Server + .NET SDK Stage ---
FROM mcr.microsoft.com/mssql/server:2019-latest

# Switch para o usuário root
USER root

# Copiar o SDK .NET e CLI Evolve do estágio de construção
COPY --from=build-stage /usr/share/dotnet /usr/share/dotnet
COPY --from=build-stage /root/.dotnet/tools /root/.dotnet/tools

# Configura o PATH para incluir o CLI Evolve e o SDK .NET
ENV PATH="${PATH}:/root/.dotnet/tools:/usr/share/dotnet"

ARG PROJECT_DIR=/tmp/devdatabase
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
COPY setup/wait-for-it.sh ./
COPY setup/entrypoint.sh ./
COPY setup/setup.sh ./
COPY setup/create_database.sql ./
COPY db/migrations ./db/migrations

RUN chmod +x *.sh

CMD ["/bin/bash", "entrypoint.sh"]
