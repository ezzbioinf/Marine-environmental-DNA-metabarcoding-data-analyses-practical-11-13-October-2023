FROM  debian:latest


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
