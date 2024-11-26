#!/bin/bash
#rm -rf cmake-build-debug
if [ ! -d cmake-build-debug ]; then
  mkdir cmake-build-debug
  cd cmake-build-debug || exit 1
  cmake .. "-DCMAKE_OSX_ARCHITECTURES=arm64;x86_64"
fi
cd cmake-build-debug || exit 1
cmake --build . -j $(nproc)
sudo cmake --install .
