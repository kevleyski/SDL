mkdir cmake-build-debug
cd cmake-build-debug
cmake .. "-DCMAKE_OSX_ARCHITECTURES=arm64;x86_64"
cmake --build .
sudo cmake --install .
