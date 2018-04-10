
FROM gmacario/build-yocto
MAINTAINER Markus Schmidinger <schmidi@codekitchen.at>

USER root
SHELL ["/bin/bash", "-c"]

RUN apt-get install -y chrpath
RUN apt-get install -y texinfo

USER build

RUN cd /home/build && git clone https://github.com/AsteroidOS/asteroid
RUN cd /home/build/asteroid && . ./prepare-build.sh dory


WORKDIR /home/build
