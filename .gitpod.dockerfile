FROM ubuntu:lunar


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

RUN curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/0.6.10.tar.gz -o trim_galore.tar.gz \
    && tar xvzf trim_galore.tar.gz

RUN addgroup --gid 33333 gitpod

RUN useradd --no-log-init --create-home --home-dir /home/gitpod --shell /bin/bash --uid 33333 --gid 33333 gitpod

USER gitpod

