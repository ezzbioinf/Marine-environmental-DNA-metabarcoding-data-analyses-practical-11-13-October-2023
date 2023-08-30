FROM ubuntu:latest


RUN addgroup --gid 33333 gitpod

RUN useradd --no-log-init --create-home --home-dir /home/gitpod --shell /bin/bash --uid 33333 --gid 33333 gitpod

