# Primeira etapa: Instalação/Configuração
FROM mcr.microsoft.com/dotnet/sdk:7.0-bullseye-slim-arm64v8 AS build

# Copie os arquivos do RavenDB para o contêiner
COPY RavenDB/ /RavenDB
WORKDIR /RavenDB

# Torne tudo em /RavenDB executável
RUN chmod -R +x /RavenDB

# Execute o script de instalação/configuração
RUN ./run.sh

# Segunda etapa: Criação da imagem final
FROM mcr.microsoft.com/dotnet/aspnet:7.0-bullseye-slim-arm64v8

# Copie os binários e qualquer outra coisa necessária da primeira etapa
COPY --from=build /RavenDB /app

WORKDIR /app

EXPOSE 8080

# Execute o RavenDB diretamente
CMD ["./Raven.Server"]