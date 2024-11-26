#!/bin/bash
#rm -rf cmake-build-debug
if [ ! -d cmake-build-debug ]; then
  mkdir cmake-build-debug
  cd cmake-build-debug
  cmake .. "-DCMAKE_OSX_ARCHITECTURES=arm64;x86_64"
fi
cmake --build . -j $(nproc)
sudo cmake --install .
