mkdir build
cd build

# Configure step.
cmake -G "$CMAKE_GENERATOR"                                                \
    -D CMAKE_BUILD_TYPE=Release                                            \
    -D CMAKE_PREFIX_PATH=${PREFIX}                                         \
    -D CMAKE_INSTALL_PREFIX=${PREFIX}                                      \
    -D CMAKE_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu                        \
    -D OpenGL_GL_PREFERENCE=GLVND                                          \
    ..

# Build step.
make install
make basicstuff -j${CPU_COUNT}
ctest -R basicstuff*
