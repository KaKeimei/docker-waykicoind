FROM ubuntu:14.04
MAINTAINER Dragon Master <tigerich@163.com>

ENV HOME /wicc
ENV DEBIAN_FRONTEND noninteractive

# Install prrequisite components
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3
RUN sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository ppa:bitcoin/bitcoin -y
RUN sudo apt-get update
RUN sudo apt-get install -y libdb4.8-dev libdb4.8++-dev git-core

# Build Waykichain source for mainnet
RUN mkdir -p /opt/src && cd /opt/src && git clone https://github.com/WaykiChain/WaykiChain.git
RUN cd /opt/src/WaykiChain/linux_shell &&  sh ./linux.sh && cd .. && sh ./autogen-coin-man.sh coin && chmod +x ./share/genbuild.sh && make

RUN mkdir -p /wicc/.WaykiChain && cp /opt/src/WaykiChain/src/coind /wicc/
COPY ./WaykiChain.conf /wicc/.WaykiChain
EXPOSE 6968 8920 18920

WORKDIR /wicc

CMD ["/wicc/coind", "-datadir=cur", "-daemon"]
