FROM zeromq-python-base:0.0.1

COPY worker /root/worker
CMD /root/worker