FROM brooksp/gcc-arm-none-eabi-9:latest
MAINTAINER Brooks Prumo <brooks@prumo.org>

RUN apt-get update && apt-get install -y \
	python3 \
	python3-dev \
	python3-pip \
	git \
	mercurial

RUN pip3 install -U mbed-cli
ENV PATH=~/.local/bin:$PATH
RUN pip3 install -U -r https://raw.githubusercontent.com/ARMmbed/mbed-os/master/requirements.txt
RUN mbed toolchain --global GCC_ARM

WORKDIR /work
