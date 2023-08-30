FROM gitpod:latest

RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sudo \
    sra-toolkit \
    parallel \
    fastqc \
    cutadapt \
    && rm -rf /var/lib/apt/lists/* /tmp/*

USER gitpod
