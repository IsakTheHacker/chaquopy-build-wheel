#!/bin/bash
set -eu

cmake . -DCMAKE_TOOLCHAIN_FILE=$CHAQUOPY_CMAKE_TOOLCHAIN -Dprotobuf_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE=Release
make -j $CPU_COUNT
make install
