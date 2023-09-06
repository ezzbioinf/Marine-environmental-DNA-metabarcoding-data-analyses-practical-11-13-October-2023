FROM  32bit/ubuntu:16.04


RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sudo \
    sra-toolkit \
    parallel \
    fastqc \
    cutadapt \
    curl \
    ncbi-blast+ \
    && rm -rf /var/lib/apt/lists/* /tmp/*

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod
