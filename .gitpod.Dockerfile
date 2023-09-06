FROM  debian:latest


RUN sudo apt-get update
    sudo apt-get install -yq \
    git \
    git-lfs \
    sudo \
    sra-toolkit \
    parallel \
    fastqc \
    cutadapt \
    curl \
    ncbi-blast+ \
    && sudo rm -rf /var/lib/apt/lists/* /tmp/*
