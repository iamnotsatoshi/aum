FROM ubuntu:20.04

RUN mkdir /workspace
WORKDIR /workspace

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y \
    make \
    gcc \
    pkg-config \
    libcunit1-dev \
    fakeroot \
    doxygen \
    graphviz \
    valgrind
