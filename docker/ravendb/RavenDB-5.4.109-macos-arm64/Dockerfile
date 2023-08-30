# Use the .NET Core SDK image as the base
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Copy RavenDB files into the Docker container
COPY RavenDB/ /RavenDB

# Set the working directory in the container to /RavenDB
WORKDIR /RavenDB

# Make all files and subdirectories in /RavenDB executable
RUN chmod -R +x /RavenDB

# Expose any necessary ports, for example if RavenDB runs on port 8080
EXPOSE 8080

# Command to run the application
CMD ["./run.sh"]