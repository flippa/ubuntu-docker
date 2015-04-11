# Base ubuntu docker image with build tools and a non-root (sudo) user.

FROM       ubuntu:14.04
MAINTAINER Chris Corbyn <chris.corbyn@flippa.com>

RUN apt-get -y update
RUN apt-get -y install \
    sudo               \
    git                \
    curl               \
    build-essential    \
    autoconf           \
    man                \
    libreadline-dev    \
    libssl-dev         \
    libxml2-dev        \
    libxslt-dev        \
    zlib1g-dev         \
    libbz2-dev

RUN useradd -m -s /bin/bash default
RUN echo "default ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/default
RUN chmod 0440 /etc/sudoers.d/default

ENV     HOME /home/default
WORKDIR /home/default
USER    default
