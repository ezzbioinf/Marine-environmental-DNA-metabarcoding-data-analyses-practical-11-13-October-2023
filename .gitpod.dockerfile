FROM ubuntu:latest

RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sra-toolkit \
    sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

