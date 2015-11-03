export MACOSX_DEPLOYMENT_TARGET=10.7

# Build
make \
    CXX=clang++ \
    CXXFLAGS=-stdlib="libc++ -mmacosx-version-min=10.7"\
    LDFLAGS=-stdlib="libc++ -mmacosx-version-min=10.7"

make install
