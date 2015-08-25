cmake_minimum_required(VERSION 2.8)
cmake_policy(VERSION 2.8)
project(HELLOWORLD)
set(version 0.1.0)

set(HELLOWORLD_LIBRARY helloworld)
set(HELLOWORLD_CONFIGDIR_FROM_PREFIX share/helloworld)
set(HELLOWORLD_PREFIX_FROM_CONFIGDIR ../../)

SET(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")

# Create library.
add_library(helloworld SHARED greet.cxx)

# Create executable.
add_executable(helloworld-bin main.cxx)
target_link_libraries(helloworld-bin helloworld)
set_target_properties(helloworld-bin PROPERTIES OUTPUT_NAME helloworld)

# Install library.
install(
    TARGETS ${HELLOWORLD_LIBRARY} 
    DESTINATION lib
    EXPORT HELLOWORLD_LIBRARY
)

# Install header.
install(
    DIRECTORY helloworld
    DESTINATION include
)

# Install executable.
install(
    TARGETS helloworld-bin
    DESTINATION bin)

# Install exports.
install(
    EXPORT HELLOWORLD_LIBRARY
    DESTINATION ${HELLOWORLD_CONFIGDIR_FROM_PREFIX}
)

# Make config file available in develop mode (build but no install)
export(
    TARGETS ${HELLOWORLD_LIBRARY}
    FILE ${HELLOWORLD_BINARY_DIR}/HELLOWORLD_LIBRARY.cmake
)

# Generate configuration files.
configure_file(
    ${HELLOWORLD_SOURCE_DIR}/itk_package_config/helloworld-config.cmake.in
    ${HELLOWORLD_BINARY_DIR}/itk_package_config/helloworld-config.cmake @ONLY
)

# Generate configuration files version.
configure_file(
    ${HELLOWORLD_SOURCE_DIR}/itk_package_config/helloworld-config-version.cmake.in
    ${HELLOWORLD_BINARY_DIR}/helloworld-config-version.cmake @ONLY
)

# Generate configuration files version for develop mode.
configure_file(
    ${HELLOWORLD_SOURCE_DIR}/itk_package_config/helloworld-config-develop.cmake.in
    ${HELLOWORLD_BINARY_DIR}/helloworld-config.cmake @ONLY
)

# Install configuration files.
install(
    FILES ${HELLOWORLD_BINARY_DIR}/itk_package_config/helloworld-config.cmake
    ${HELLOWORLD_BINARY_DIR}/helloworld-config-version.cmake
    DESTINATION ${HELLOWORLD_CONFIGDIR_FROM_PREFIX}
)
