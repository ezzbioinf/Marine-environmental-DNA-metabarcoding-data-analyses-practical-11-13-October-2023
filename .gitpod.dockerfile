
FROM Ubuntu 22.04.2

RUN sudo apt-get update && sudo apt-get install -yq git git-lfs && sudo apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod
