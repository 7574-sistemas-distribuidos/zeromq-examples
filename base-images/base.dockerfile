FROM ubuntu:18.04
WORKDIR /tmp
ENV PATH "$PATH:/opt/protoc-3.6.1/bin"

# Install minimal dependencies
RUN echo "alias ll=\"ls -lF\"" >> ~/.bashrc && \
    apt-get update && apt-get install tar vim wget unzip git -y && \
# Install Protobuf3
    wget --no-check-certificate https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip && \
    unzip protoc-3.6.1-linux-x86_64.zip && \
    mkdir -p /opt/protoc-3.6.1 && \
    mv bin include /opt/protoc-3.6.1 && \
    rm -rf protoc-3.6.1-linux-x86_64.zip readme.txt
