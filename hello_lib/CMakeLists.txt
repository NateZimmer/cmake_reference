cmake_minimum_required(VERSION 3.10)
project(hello C)

# Add all .c files in this directory to the executable
#file(GLOB SOURCES "*.c")

# Explicitly list source files
set(SOURCES hello.c)

# Create static library
add_library(hello_lib STATIC ${SOURCES})

# Tell lib where header files are for compilation
target_include_directories(hello_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Move lib output to public directory
set_target_properties(hello_lib PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/public")

