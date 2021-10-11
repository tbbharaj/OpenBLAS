#ARG BASE_IMAGE=docker.io/library/ubuntu:21.04
#RUN apt-get update && apt-get install -y git build-essential 
#RUN git clone https://github.com/tbbharaj/OpenBLAS.git
#FROM quay.io/pypa/manylinux2014_aarch64:latest

FROM docker.io/library/ubuntu:20.04
#RUN DEBIAN_FRONTEND=noninteractive apt-get update 
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git build-essential 

RUN apt-get update && apt-get install -y git build-essential 
#RUN gcc --version

RUN git clone https://github.com/tbbharaj/OpenBLAS.git
WORKDIR OpenBLAS
#RUN ls -lrt
RUN make
RUN make PREFIX=../build install
RUN ls -lrt ../build/
