FROM zeromq-base:0.0.1
ENV ZMQ_VERSION 4.1.4

# Install needed packages
ENV TZ="America/Buenos Aires"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --fix-missing tzdata pkg-config lxc curl libtool pkg-config build-essential autoconf automake && \
    mkdir -p /tmp/zeromq && \
    curl -SL http://download.zeromq.org/zeromq-$ZMQ_VERSION.tar.gz | tar zxC /tmp/zeromq && \
    cd /tmp/zeromq/zeromq-$ZMQ_VERSION/ && \
    ./configure --without-libsodium && \
    make -j4 && make install && ldconfig && \
    rm -rf /tmp/zeromq && \
    apt-get purge -y curl libtool pkg-config build-essential autoconf automake && \
    apt-get clean && apt-get autoclean && apt-get -y autoremove

RUN apt-get install golang-go -y
RUN go get "github.com/pebbe/zmq4"
