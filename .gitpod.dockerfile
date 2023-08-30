FROM gitpod/workspace-full

RUN sudo apt-get update && sudo apt-get install -y sra-toolkit && sudo rm -rf /var/lib/apt/lists/*
