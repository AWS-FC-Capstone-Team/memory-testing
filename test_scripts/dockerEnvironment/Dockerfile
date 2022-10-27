FROM ubuntu:20.04
COPY . /container-testing
RUN apt-get update && \
    apt-get clean && \
    apt-get install -y sysbench

#EXPOSE 6379