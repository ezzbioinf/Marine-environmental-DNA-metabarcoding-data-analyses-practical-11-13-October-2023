FROM gitpod/workspace-full:latest

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod

# Install Redis.
RUN sudo apt-get update \
 && sudo apt-get install -y \
  sra-toolkit \
 && sudo rm -rf /var/lib/apt/lists/*
