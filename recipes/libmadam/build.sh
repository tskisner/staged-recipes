#!/bin/bash

set -e
set -x

configure_args=(
    --prefix="$PREFIX"
    --disable-static
    --with-cfitsio="$PREFIX"
    --with-fftw="$PREFIX"
)

CC=mpicc ./configure "${configure_args[@]}"
make -j $CPU_COUNT
make install

cd python
eval ${PYTHON} setup.py install --prefix "${PREFIX}"
