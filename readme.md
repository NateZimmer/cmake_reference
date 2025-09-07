
# Boiler plate CMake reference

[![Linux Build](https://github.com/NateZimmer/cmake_reference/actions/workflows/ci_linux.yml/badge.svg)](https://github.com/NateZimmer/cmake_reference/actions/workflows/ci_linux.yml) [![Windows Build](https://github.com/NateZimmer/cmake_reference/actions/workflows/ci_win.yml/badge.svg)](https://github.com/NateZimmer/cmake_reference/actions/workflows/ci_win.yml)

A CMake reference of compiling sepperate static libs and bringing them in via `find_package`

```mermaid
---
title: Example CMake Lib/Find Package
config:
  theme: 'neutral'
---
classDiagram
app : main()
app : HelloWorld.exe
hello_lib : hello()
hello_lib : hello_lib.a
hello_lib -->app
world_lib : world()
world_lib : world_lib.a
world_lib -->app
```

### Build Win/Linux

```bash
# Kick of top level cmake build of sub projects
cmake -B out
cmake --build out
```


### Notes 

Yes, while this project is silly for hello world, this type of library style assits in much larger scale projects.  

