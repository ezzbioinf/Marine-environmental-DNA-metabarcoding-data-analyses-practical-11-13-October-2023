FROM gitpod/workspace-full:latest

# Install Redis.
RUN sudo apt-get update \
 && sudo apt-get install -y \
  sra-toolkit \
 && sudo rm -rf /var/lib/apt/lists/*
