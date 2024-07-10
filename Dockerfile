FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl
RUN apt-get autoremove

COPY _output/my-echo-main

EXPOSE 1323

ENTRYPOINT ["/my-echo"]
