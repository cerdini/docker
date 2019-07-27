#
# PmOS development environment Dockerfile
#

FROM alpine:latest

LABEL version="1.0"
LABEL description="Unofficial PostmarketOS build environment."

# Add pmbootsrap directory in PATH
ENV PATH=${PATH}:/home/pmos/.local/bin

# Install basic dependencies (git, python3, etc.)
RUN apk add --no-cache git \
		python3 \
		coreutils \
		procps \
		sudo \
		openssl

# Add pmos user
RUN adduser -D -s /bin/sh -g sudo pmos pmos

# Add pmos user to sudoers
RUN echo 'pmos ALL=(root) NOPASSWD:ALL' >> /etc/sudoers

# Install Pmbootstrap
RUN sudo -u pmos pip3 install --user pmbootstrap

# 
#RUN mount -t binfmt_misc none /proc/sys/fs/binfmt_misc

# Go to home directory
WORKDIR /home/pmos

# Interactive mode shell as pmos
USER pmos

#ENTRYPOINT [“/bin/cd”]
#CMD [“$HOME”]

#ENTRYPOINT [“/bin/echo”]
#CMD [“Launch pmbootstrap”]
