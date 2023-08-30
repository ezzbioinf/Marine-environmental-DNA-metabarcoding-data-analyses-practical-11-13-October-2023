FROM ubuntu:latest

RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sudo \
    sra-toolkit \
    parallel \
    fastqc \
    cutadapt \
    && rm -rf /var/lib/apt/lists/* /tmp/*

RUN addgroup --gid 33333 gitpod

RUN useradd --no-log-init --create-home --home-dir /home/gitpod --shell /bin/bash --uid 33333 --gid 33333 gitpod

USER gitpod
