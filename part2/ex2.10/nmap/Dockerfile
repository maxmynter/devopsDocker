# Start with an ARM-compatible base image
FROM arm64v8/ubuntu:latest

# Install nmap
RUN apt-get update && \
    apt-get install -y nmap && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to nmap
ENTRYPOINT ["nmap"]
