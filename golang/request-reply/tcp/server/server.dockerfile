FROM zeromq-golang-base:0.0.1
WORKDIR /root

COPY server.go /root/server.go
RUN go build /root/server.go
CMD /root/server