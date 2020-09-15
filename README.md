# Docker images for [Mbed OS](https://mbed.com)

Branches correspond to different Mbed OS releases.

## Building the Docker image

Simple! Just call `make`.

## Using the image to build an Mbed app

To build an Mbed OS application, navigate to the app's root directory and then run this:

```
docker run --rm -it \
	--volume ${PWD}:/work \
	--workdir /work \
	brooksp/mbed-gcc-arm \
	mbed compile
```
