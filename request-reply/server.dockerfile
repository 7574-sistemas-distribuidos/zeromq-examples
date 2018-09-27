FROM zeromq-python-base:0.0.1

COPY server/server /root/server
CMD /root/server