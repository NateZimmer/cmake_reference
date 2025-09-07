
cmake_minimum_required(VERSION 3.10)
project(app C)

# Add all .c files in this directory to the executable
#file(GLOB SOURCES "*.c")

# Explicitly list source files
set(SOURCES main.c)

# Find packages
find_package(hello_libs CONFIG REQUIRED PATHS "${CMAKE_CURRENT_SOURCE_DIR}/..")
find_package(world_libs CONFIG REQUIRED PATHS "${CMAKE_CURRENT_SOURCE_DIR}/..")

add_executable(HelloWorld ${SOURCES})

# Link against world_lib
target_link_libraries(HelloWorld PRIVATE hello_libs world_libs)

set_target_properties(HelloWorld PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})