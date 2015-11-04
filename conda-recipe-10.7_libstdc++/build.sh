export MACOSX_DEPLOYMENT_TARGET=10.7

# Build
make \
    CXX=clang++ \
    CXXFLAGS="-stdlib=libstdc++ -std=c++11 -mmacosx-version-min=10.7"\
    LDFLAGS="-stdlib=libstdc++ -std=c++11 -mmacosx-version-min=10.7"

make install
