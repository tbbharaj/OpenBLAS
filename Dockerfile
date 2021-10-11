ARG BASE_IMAGE=docker.io/library/ubuntu:21.04
RUN apt-get update && apt-get install -y \
    git 
RUN git clone https://github.com/tbbharaj/OpenBLAS.git
make
make PREFIX=../ install

