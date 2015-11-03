export MACOSX_DEPLOYMENT_TARGET=10.7

# Build
make \
    CXX=clang++ \
    CXXFLAGS=-stdlib=libc++ \
    LDFLAGS=-stdlib=libc++

make install
