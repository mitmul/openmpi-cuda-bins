FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    curl \
    file \
    ibverbs-utils \
    infiniband-diags \
    libibumad-dev \
    libibverbs-dev \
    valgrind

ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
ENV LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH

RUN curl -L -O https://download.open-mpi.org/release/open-mpi/v4.0/openmpi-4.0.3.tar.gz \
    && tar zxf openmpi-4.0.3.tar.gz \
    && rm -rf openmpi-4.0.3.tar.gz \
    && cd openmpi-4.0.3 \
    && ./configure --with-cuda --with-verbs --prefix=/opt/openmpi \
    && make -j32 \
    && make install

RUN tar zcf /opt/openmpi openmpi-4.0.3
