FROM  ovidiudragoi/ffmpeg-build-ubuntu-20.04:latest

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR     /data

RUN      buildDeps="autoconf \
                    automake \
                    cmake \
                    curl \
                    bzip2 \
                    libexpat1-dev \
                    g++ \
                    gcc \
                    git \
                    gperf \
                    libtool \
                    make \
                    perl \
                    pkg-config \
                    python \
                    libssl-dev \
                    yasm \
                    libnuma1 \
                    libnuma-dev \
                    zlib1g-dev" && \
        apt-get -yqq update && \
        apt-get install -yq --no-install-recommends ${buildDeps}

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/ffmpeg/lib/:/opt/ffmpeg/lib64/