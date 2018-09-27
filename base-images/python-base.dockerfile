FROM zeromq-base:0.0.1

# Install golang
RUN apt-get install python3 python3-pip -y
RUN pip3 install pyzmq

