# pmOS dev env Dockerfile

## Description
...
PostmarketOS devlopment environment Dockerfile.

## Build
...
You can build the Docker image with the following command :
> docker build -t pmos-build-env .
		
## Usage
...
Container must be run with --privileged parameter : 
> docker run -it --privileged pmos-dev-env

Run pmbootsrap :
> pmbootstrap init

Enjoy
