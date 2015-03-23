FROM ubuntu:12.04

RUN apt-get -yy update && apt-get -yy install \
                     gcc \
                     autotools-dev \
                     autoconf \
                     make

# Create dirs / basic info
RUN mkdir -p /usr/src/prime/src
RUN mkdir -p /usr/src/prime/m4
COPY src /usr/src/prime/src/
COPY README.md /usr/src/prime/

# Add build files
COPY autogen.sh /usr/src/prime/
COPY configure.ac /usr/src/prime/
COPY Makefile.am /usr/src/prime/

RUN chmod 755 /usr/src/prime/autogen.sh

WORKDIR /usr/src/prime/
