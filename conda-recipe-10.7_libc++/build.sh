export MACOSX_DEPLOYMENT_TARGET=10.7

# Build
make \
    CXX=clang++ \
    CXXFLAGS="-stdlib=libc++ --std=c++11 -DHAS_TO_STRING -mmacosx-version-min=10.7"\
    LDFLAGS=-"stdlib=libc++ --std=c++11 -mmacosx-version-min=10.7"

make install
