FROM kalilinux/kali-rolling
LABEL maintainer="Johann LAQUA"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

RUN apt-get update && apt-get install -y \
    kali-tools-top10 \
    git \
    curl \
    vim \
    net-tools \
    whois \
    netcat \
    exploitdb \
    nodejs \
    npm \
    python3-pip \
    nikto \
&& apt-get clean all

CMD ["/bin/bash"]