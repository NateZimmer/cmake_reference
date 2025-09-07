# Top level cmake file to kick off 3 sub builds
cmake_minimum_required(VERSION 3.10)
project(HelloApp C)

add_subdirectory(src/hello_libs) 
add_subdirectory(src/world_libs)
add_subdirectory(src/app)

add_dependencies(HelloWorld hello_lib world_lib)
