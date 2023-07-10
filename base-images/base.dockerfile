FROM ubuntu:22.04
WORKDIR /tmp
ENV PATH "$PATH:/opt/protoc-3.20.0/bin"

# Install minimal dependencies
RUN echo "alias ll=\"ls -lF\"" >> ~/.bashrc && \
    apt-get update && apt-get install tar vim wget unzip git -y
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.7" | sudo tee /etc/apt/sources.list.d/bazel.list && curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
RUN apt-get install -y g++ bazel
RUN git clone https://github.com/protocolbuffers/protobuf.git && cd protobuf && git submodule update --init --recursive && bazel build :protoc :protobuf && cp bazel-bin/protoc /usr/local/bin


# Install Protobuf3
RUN wget --no-check-certificate https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.20.0-linux-x86_64.zip && \
    unzip protoc-3.20.0-linux-x86_64.zip && \
    mkdir -p /opt/protoc-3.20.0 && \
    mv bin include /opt/protoc-3.20.0 && \
    rm -rf protoc-3.20.0-linux-x86_64.zip readme.txt
