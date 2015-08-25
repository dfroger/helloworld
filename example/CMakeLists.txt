cmake_minimum_required(VERSION 2.8)
cmake_policy(VERSION 2.8)
project(HELLOWORLD)
set(version 0.1.0)

find_package(helloworld REQUIRED)

include_directories(${HELLOWORLD_INCLUDE_DIRS})

# Create executable.
add_executable(helloworld-example main.cxx)
target_link_libraries(helloworld-example ${HELLOWORLD_LIBRARIES})
