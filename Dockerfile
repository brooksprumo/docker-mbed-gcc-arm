FROM brooksp/gcc-arm-none-eabi:9
LABEL maintainer="Brooks Prumo <brooks@prumo.org>"

RUN apt-get update && apt-get install -q -y --no-install-recommends \
	gcc \
	git \
	mercurial \
	python3 \
	python3-dev \
	python3-pip

ENV PATH=~/.local/bin:$PATH
RUN python3 -m pip -q install -U pip \
	&& python3 -m pip -q install -U setuptools \
	&& python3 -m pip -q install -U wheel \
	&& python3 -m pip -q install -U mbed-cli \
	&& python3 -m pip -q install -U -r https://raw.githubusercontent.com/ARMmbed/mbed-os/mbed-os-5.15.5/requirements.txt
RUN mbed toolchain --global GCC_ARM

WORKDIR /work
